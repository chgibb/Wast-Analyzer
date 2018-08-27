/// <reference types="jest" />

import * as fs from "fs";

import {disassembleWat} from "./../lib/disassemble";
import {parseSections} from "./../lib/parseSections";

it(`should parse sections`,() => {
    let res = parseSections(
        disassembleWat(fs.readFileSync("__tests__/add.wat").toString())
    );
    expect(res.typeSection.contents.length).toBe(11);
    expect(res.functionSection.contents.length).toBe(5);
    expect(res.codeSection.contents.length).toBe(14);
    expect(res.exportSection.contents.length).toBe(8);
    expect(res.nameSection.contents.length).toBe(24);
});