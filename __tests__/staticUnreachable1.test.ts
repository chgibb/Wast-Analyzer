/// <reference types="jest" />

import * as fs from "fs";

import {disassembleWat} from "./../lib/disassemble";
import {parseSections} from "./../lib/parseSections";
import {PrimitiveTypes, linkFunctionTypesToFunctions, FunctionSpace,linkFunctionBodiesToFunctions} from "../lib/functionEntry";

it(`should parse sections`,() => {
    let dump = disassembleWat(fs.readFileSync("__tests__/staticUnreachable1.wat").toString());
    fs.writeFileSync("__tests__/staticUnreachable1.wat.dump",dump);
    let res = parseSections(dump);

    let types = res.typeSection.findFunctionTypes();

    let functions : FunctionSpace = new FunctionSpace(
        res.functionSection.initializeInternalFunctionSpace(),
        res.importSection.initializeImportedFunctionSpace()
    );

    linkFunctionTypesToFunctions(functions.internal,types);
    linkFunctionTypesToFunctions(functions.imported,types);

    let bodies = res.codeSection.getFunctionBodies();
    linkFunctionBodiesToFunctions(functions,bodies);
    res.nameSection.nameFunctions(functions);

    fs.writeFileSync("__tests__/staticUnreachable1.wat.json",JSON.stringify(functions,undefined,4));

    expect(functions.imported[0].typeIndex).toBe(0);
    expect(functions.imported[0].name).toBe("main/sayHello");

    expect(functions.imported[1].typeIndex).toBe(3);
    expect(functions.imported[1].name).toBe("main/console.logf");

    expect(functions.internal[0].typeIndex).toBe(2);
    expect(functions.internal[0].name).toBe("~lib/math/NativeMath.sin");
    expect(functions.internal[0].body).toEqual(
`0000070: 00                                        ; func body size (guess)
0000071: 00                                        ; local decl count
0000072: 00                                        ; unreachable
0000073: 44                                        ; f64.const
0000074: 0000 0000 0000 0000                       ; f64 literal
000007c: 0b                                        ; end
0000070: 0c                                        ; FIXUP func body size`.split("\n"));

    expect(functions.internal[1].typeIndex).toBe(2);
    expect(functions.internal[1].name).toBe("~lib/math/NativeMath.cos");
    expect(functions.internal[1].body).toEqual(
`000007d: 00                                        ; func body size (guess)
000007e: 00                                        ; local decl count
000007f: 00                                        ; unreachable
0000080: 44                                        ; f64.const
0000081: 0000 0000 0000 0000                       ; f64 literal
0000089: 0b                                        ; end
000007d: 0c                                        ; FIXUP func body size`.split("\n"));

    expect(functions.internal[2].typeIndex).toBe(1);
    expect(functions.internal[2].name).toBe("main/addSinCos");

    expect(functions.internal[3].typeIndex).toBe(0);
    expect(functions.internal[3].name).toBe("start");

});
    
