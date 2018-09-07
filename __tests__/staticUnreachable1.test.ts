/// <reference types="jest" />

import * as fs from "fs";

import {disassembleWat} from "./../lib/disassemble";
import {parseSections} from "./../lib/parseSections";
import {PrimitiveTypes, linkFunctionTypesToFunctions, linkTypeIndexesToFunctions,linkFunctionBodiesToFunctions} from "../lib/functionEntry";

it(`should parse sections`,() => {
    let dump = disassembleWat(fs.readFileSync("__tests__/staticUnreachable1.wat").toString());
    fs.writeFileSync("__tests__/staticUnreachable1.wat.dump",dump);
    let res = parseSections(dump);

    //let types = res.typeSection.findFunctionTypes();
    //let numImports = res.importSection.getNumberOfImports();
    //let functions = res.functionSection.getFunctionsWithTypeIndexes(numImports);

    //expect(numImports).toBe(2);
/*
    linkFunctionTypesToFunctions(functions,types);

    let bodies = res.codeSection.getFunctionBodies();
    linkFunctionBodiesToFunctions(functions,bodies,numImports);
    res.nameSection.nameFunctions(functions,res.importSection.getNumberOfImports());

    expect(functions[0].typeIndex).toBe(2);
    expect(functions[0].name).toBe("main/sayHello");

    expect(functions[1].typeIndex).toBe(2);
    expect(functions[1].name).toBe("main/console.logf");

    expect(functions[2].typeIndex).toBe(1);
    expect(functions[2].name).toBe("~lib/math/NativeMath.sin");
    expect(functions[2].body).toEqual(
`0000070: 00                                        ; func body size (guess)
0000071: 00                                        ; local decl count
0000072: 00                                        ; unreachable
0000073: 44                                        ; f64.const
0000074: 0000 0000 0000 0000                       ; f64 literal
000007c: 0b                                        ; end
0000070: 0c                                        ; FIXUP func body size`.split("\n"));

    expect(functions[3].typeIndex).toBe(0);
    expect(functions[3].name).toBe("~lib/math/NativeMath.cos");
    expect(functions[3].body).toEqual(
`000007d: 00                                        ; func body size (guess)
000007e: 00                                        ; local decl count
000007f: 00                                        ; unreachable
0000080: 44                                        ; f64.const
0000081: 0000 0000 0000 0000                       ; f64 literal
0000089: 0b                                        ; end
000007d: 0c                                        ; FIXUP func body size`.split("\n"));*/

});