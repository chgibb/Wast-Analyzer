/// <reference types="jest" />

import * as fs from "fs";

import {disassembleWat} from "../lib/disassemble";
import {parseSections} from "../lib/parseSections";
import {PrimitiveTypes, linkFunctionTypesToFunctions, linkTypeIndexesToFunctions, linkFunctionBodiesToFunctions, FunctionSpace} from "../lib/functionEntry";

it(`should parse sections`,() => {
    let dump = disassembleWat(fs.readFileSync("__tests__/FourFuncs.wat").toString());
    fs.writeFileSync("__tests__/FourFuncs.wat.dump",dump);
    let res = parseSections(dump);

    let functions : FunctionSpace = new FunctionSpace(
        res.functionSection.initializeInternalFunctionSpace(),
        res.importSection.initializeImportedFunctionSpace()
    );

    expect(functions.internal.length).toBe(3);
    expect(functions.imported.length).toBe(1);

    let types = res.typeSection.findFunctionTypes();

    linkFunctionTypesToFunctions(functions.internal,types);

    expect(functions.internal[0].typeIndex).toBe(0);
    expect(functions.internal[0].type!.parameters).toEqual([PrimitiveTypes.voidType]);
    expect(functions.internal[0].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[1].typeIndex).toBe(0);
    expect(functions.internal[1].type!.parameters).toEqual([PrimitiveTypes.voidType]);
    expect(functions.internal[1].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[2].typeIndex).toBe(0);
    expect(functions.internal[2].type!.parameters).toEqual([PrimitiveTypes.voidType]);
    expect(functions.internal[2].type!.result).toBe(PrimitiveTypes.voidType);

    linkFunctionTypesToFunctions(functions.imported,types);

    expect(functions.imported[0].typeIndex).toBe(0);
    expect(functions.imported[0].type!.parameters).toEqual([PrimitiveTypes.voidType]);
    expect(functions.imported[0].type!.result).toBe(PrimitiveTypes.voidType);

    res.nameSection.nameFunctions(functions);

    expect(functions.imported[0].name).toBe("main/imported1");

    expect(functions.internal[0].name).toBe("main/notExported1");
    expect(functions.internal[1].name).toBe("main/notExported2");
    expect(functions.internal[2].name).toBe("main/exported1");
    
    let bodies = res.codeSection.getFunctionBodies();
    linkFunctionBodiesToFunctions(functions,bodies);

    expect(functions.internal[0].body).toEqual(
`0000050: 00                                        ; func body size (guess)
0000051: 01                                        ; local decl count
0000052: 01                                        ; local type count
0000053: 7f                                        ; i32
0000054: 41                                        ; i32.const
0000055: 00                                        ; i32 literal
0000056: 21                                        ; set_local
0000057: 00                                        ; local index
0000058: 0b                                        ; end
0000050: 08                                        ; FIXUP func body size`.split("\n"));

expect(functions.internal[1].body).toEqual(
`0000059: 00                                        ; func body size (guess)
000005a: 01                                        ; local decl count
000005b: 01                                        ; local type count
000005c: 7f                                        ; i32
000005d: 41                                        ; i32.const
000005e: 01                                        ; i32 literal
000005f: 21                                        ; set_local
0000060: 00                                        ; local index
0000061: 10                                        ; call
0000062: 00                                        ; function index
0000063: 0b                                        ; end
0000059: 0a                                        ; FIXUP func body size`.split("\n"));

expect(functions.internal[2].body).toEqual(
`0000064: 00                                        ; func body size (guess)
0000065: 01                                        ; local decl count
0000066: 01                                        ; local type count
0000067: 7f                                        ; i32
0000068: 41                                        ; i32.const
0000069: 02                                        ; i32 literal
000006a: 21                                        ; set_local
000006b: 00                                        ; local index
000006c: 0b                                        ; end
0000064: 08                                        ; FIXUP func body size
000004e: 1e                                        ; FIXUP section size`.split("\n"));

    fs.writeFileSync("__tests__/FourFuncs.wat.json",JSON.stringify(functions,undefined,4));
    
});