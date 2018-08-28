/// <reference types="jest" />

import * as fs from "fs";

import {disassembleWat} from "../lib/disassemble";
import {parseSections} from "../lib/parseSections";
import {PrimitiveTypes, linkFunctionTypesToFunctions, linkTypeIndexesToFunctions} from "../lib/functionEntry";

it(`should parse sections`,() => {
    let dump = disassembleWat(fs.readFileSync("__tests__/addSubSuperLongFuncName.wat").toString());
    fs.writeFileSync("__tests__/addSubSuperLongFuncName.wat.dump",dump);
    let res = parseSections(dump);
    expect(res.typeSection.contents.length).toBe(11);
    expect(res.functionSection.contents.length).toBe(6);
    expect(res.codeSection.contents.length).toBe(24);
    expect(res.exportSection.contents.length).toBe(8);
    expect(res.nameSection.contents.length).toBe(37);

    expect(res.nameSection.determineNumberOfFunctions()).toBe(2);

    let types = res.typeSection.findFunctionTypes();
    expect(types.length).toBe(1);
    expect(types[0].typeIndex).toBe(0);
    expect(types[0].parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(types[0].result).toEqual(PrimitiveTypes.i32);

    let typeIndexes = res.functionSection.getFunctionIndexesWithTypeIndexes();

    let functions = res.nameSection.findFunctionEntries();
    linkTypeIndexesToFunctions(functions,typeIndexes);
    linkFunctionTypesToFunctions(functions,types);
    expect(functions.length).toBe(2);

    expect(functions[0].name).toBe("addTowNumbersTogetherReallyLongFuncName");
    expect(functions[0].functionIndex).toBe(0);
    expect(functions[0].typeIndex).toBe(0);
    expect(functions[0].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions[0].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions[1].name).toBe("sub");
    expect(functions[1].functionIndex).toBe(1);
    expect(functions[1].typeIndex).toBe(0);
    expect(functions[1].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions[1].type!.result).toBe(PrimitiveTypes.i32);
});