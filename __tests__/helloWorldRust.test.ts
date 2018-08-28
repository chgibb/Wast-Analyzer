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
    let typeIndexes = res.functionSection.getFunctionIndexesWithTypeIndexes();
    let functions = res.nameSection.findFunctionEntries();
    linkTypeIndexesToFunctions(functions,typeIndexes);
    linkFunctionTypesToFunctions(functions,types);
});