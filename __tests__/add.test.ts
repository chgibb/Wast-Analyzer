/// <reference types="jest" />

import * as fs from "fs";

import {disassembleWat} from "./../lib/disassemble";
import {parseSections} from "./../lib/parseSections";
import {PrimitiveTypes, linkFunctionTypesToFunctions, linkTypeIndexesToFunctions, linkFunctionBodiesToFunctions,FunctionSpace} from "../lib/functionEntry";

it(`should parse sections`,() => {
    let dump = disassembleWat(fs.readFileSync("__tests__/add.wat").toString());
    fs.writeFileSync("__tests__/add.wat.dump",dump);
    let res = parseSections(dump);
    expect(res.typeSection.contents.length).toBe(11);
    expect(res.functionSection.contents.length).toBe(5);
    expect(res.codeSection.contents.length).toBe(14);
    expect(res.exportSection.contents.length).toBe(8);
    expect(res.nameSection.contents.length).toBe(24);


    let functions : FunctionSpace = new FunctionSpace(
        res.functionSection.initializeInternalFunctionSpace(),
        res.importSection.initializeImportedFunctionSpace()
    );
    expect(functions.internal.length).toBe(1);
    expect(functions.internal[0].typeIndex).toBe(0);

    let types = res.typeSection.findFunctionTypes();
    expect(types.length).toBe(1);
    expect(types[0].typeIndex).toBe(0);
    expect(types[0].parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(types[0].result).toEqual(PrimitiveTypes.i32);

    linkFunctionTypesToFunctions(functions.internal,types);

    res.nameSection.nameFunctions(functions);

    expect(functions.internal[0].name).toBe("add");
    expect(functions.internal[0].functionIndex).toBe(0);
    expect(functions.internal[0].typeIndex).toBe(0);
    expect(functions.internal[0].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[0].type!.result).toBe(PrimitiveTypes.i32);

    let bodies = res.codeSection.getFunctionBodies();
    linkFunctionBodiesToFunctions(functions,bodies);
    
    expect(functions.internal[0].body).toEqual(
`0000021: 00                                        ; func body size (guess)
0000022: 00                                        ; local decl count
0000023: 20                                        ; get_local
0000024: 00                                        ; local index
0000025: 20                                        ; get_local
0000026: 01                                        ; local index
0000027: 6a                                        ; i32.add
0000028: 0b                                        ; end
0000021: 07                                        ; FIXUP func body size
000001f: 09                                        ; FIXUP section size`.split(/\n/));
});