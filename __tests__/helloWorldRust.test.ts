/// <reference types="jest" />

import * as fs from "fs";

import {disassembleWat} from "./../lib/disassemble";
import {parseSections} from "./../lib/parseSections";
import {PrimitiveTypes, linkFunctionTypesToFunctions, linkTypeIndexesToFunctions} from "../lib/functionEntry";

it(`should parse sections`,() => {
    let dump = disassembleWat(fs.readFileSync("__tests__/helloWorldRust.wat").toString());
    fs.writeFileSync("__tests__/helloWorldRust.wat.dump",dump);
    let res = parseSections(dump);
    expect(res.typeSection.contents.length).toBe(83);
    expect(res.functionSection.contents.length).toBe(65);
    expect(res.codeSection.contents.length).toBe(12059);
    expect(res.exportSection.contents.length).toBe(41);
    expect(res.nameSection.contents.length).toBe(771);

    let types = res.typeSection.findFunctionTypes();
  
    expect(types.length).toBe(8);
    expect(types[0].parameters).toEqual([PrimitiveTypes.voidType]);
    expect(types[0].result).toBe(PrimitiveTypes.voidType);

    expect(types[1].parameters).toEqual([PrimitiveTypes.i32]);
    expect(types[1].result).toBe(PrimitiveTypes.voidType);

    expect(types[2].parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(types[2].result).toBe(PrimitiveTypes.voidType);

    expect(types[3].parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(types[3].result).toBe(PrimitiveTypes.i32);

    expect(types[4].parameters).toEqual([PrimitiveTypes.i32]);
    expect(types[4].result).toBe(PrimitiveTypes.i32);

    expect(types[5].parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(types[5].result).toBe(PrimitiveTypes.i32);

    expect(types[6].parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(types[6].result).toBe(PrimitiveTypes.voidType);

    expect(types[7].parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(types[7].result).toBe(PrimitiveTypes.voidType);


    let typeIndexes = res.functionSection.getFunctionIndexesWithTypeIndexes();
    let functions = res.nameSection.findFunctionEntries();
    linkTypeIndexesToFunctions(functions,typeIndexes);
    linkFunctionTypesToFunctions(functions,types);
});