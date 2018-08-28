/// <reference types="jest" />

import * as fs from "fs";

import {disassembleWat} from "./../lib/disassemble";
import {parseSections} from "./../lib/parseSections";
import {PrimitiveTypes, linkFunctionTypesToFunctions, linkTypeIndexesToFunctions,linkFunctionBodiesToFunctions} from "../lib/functionEntry";

it(`should parse sections`,() => {
    let dump = disassembleWat(fs.readFileSync("__tests__/addInc.wat").toString());
    fs.writeFileSync("__tests__/addInc.wat.dump",dump);
    let res = parseSections(dump);
    expect(res.typeSection.contents.length).toBe(17);
    expect(res.functionSection.contents.length).toBe(6);
    expect(res.codeSection.contents.length).toBe(24);
    expect(res.exportSection.contents.length).toBe(8);
    expect(res.nameSection.contents.length).toBe(32);

    expect(res.nameSection.determineNumberOfFunctions()).toBe(2);

    let types = res.typeSection.findFunctionTypes();
    expect(types.length).toBe(2);
    expect(types[0].typeIndex).toBe(0);
    expect(types[0].parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(types[0].result).toEqual(PrimitiveTypes.i32);

    expect(types[1].typeIndex).toBe(1);
    expect(types[1].parameters).toEqual([PrimitiveTypes.i32]);
    expect(types[1].result).toEqual(PrimitiveTypes.i32);

    let typeIndexes = res.functionSection.getFunctionIndexesWithTypeIndexes();

    let functions = res.nameSection.findFunctionEntries();
    linkTypeIndexesToFunctions(functions,typeIndexes);
    linkFunctionTypesToFunctions(functions,types);
    expect(functions.length).toBe(2);

    expect(functions[0].name).toBe("add");
    expect(functions[0].functionIndex).toBe(0);
    expect(functions[0].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions[0].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions[1].name).toBe("inc");
    expect(functions[1].functionIndex).toBe(1);
    expect(functions[1].type!.parameters).toEqual([PrimitiveTypes.i32]);
    expect(functions[1].type!.result).toBe(PrimitiveTypes.i32);

    let bodies = res.codeSection.getFunctionBodies();
    linkFunctionBodiesToFunctions(functions,bodies);

    expect(functions[0].body).toEqual(
`0000027: 00                                        ; func body size (guess)
0000028: 00                                        ; local decl count
0000029: 20                                        ; get_local
000002a: 00                                        ; local index
000002b: 20                                        ; get_local
000002c: 01                                        ; local index
000002d: 6a                                        ; i32.add
000002e: 0b                                        ; end
0000027: 07                                        ; FIXUP func body size`.split(/\n/));
    expect(functions[1].body).toEqual(
`000002f: 00                                        ; func body size (guess)
0000030: 00                                        ; local decl count
0000031: 20                                        ; get_local
0000032: 00                                        ; local index
0000033: 41                                        ; i32.const
0000034: 01                                        ; i32 literal
0000035: 6a                                        ; i32.add
0000036: 0b                                        ; end
000002f: 07                                        ; FIXUP func body size
0000025: 11                                        ; FIXUP section size`.split(/\n/));

});