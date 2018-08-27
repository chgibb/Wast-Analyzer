/// <reference types="jest" />

import * as fs from "fs";

import {disassembleWat} from "../lib/disassemble";
import {parseSections} from "../lib/parseSections";

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

    let functions = res.nameSection.findFunctionEntries();
    expect(functions.length).toBe(2);

    expect(functions[0].name).toBe("addTowNumbersTogetherReallyLongFuncName");
    expect(functions[0].index).toBe(0);

    expect(functions[1].name).toBe("sub");
    expect(functions[1].index).toBe(1);
});