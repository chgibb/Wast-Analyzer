/// <reference types="jest" />

import * as fs from "fs";

import {disassembleWat} from "./../lib/disassemble";
import {parseSections} from "./../lib/parseSections";

it(`should parse sections`,() => {
    let dump = disassembleWat(fs.readFileSync("__tests__/add.wat").toString());
    fs.writeFileSync("__tests__/add.wat.dump",dump);
    let res = parseSections(dump);
    expect(res.typeSection.contents.length).toBe(11);
    expect(res.functionSection.contents.length).toBe(5);
    expect(res.codeSection.contents.length).toBe(14);
    expect(res.exportSection.contents.length).toBe(8);
    expect(res.nameSection.contents.length).toBe(24);

    expect(res.nameSection.determineNumberOfFunctions()).toBe(1);

    let functions = res.nameSection.findFunctionEntries();
    expect(functions.length).toBe(1);
    expect(functions[0].name).toBe("add");
    expect(functions[0].index).toBe(0);
});