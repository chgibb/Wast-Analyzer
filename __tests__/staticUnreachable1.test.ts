/// <reference types="jest" />

import * as fs from "fs";

import {disassembleWat} from "./../lib/disassemble";
import {parseSections} from "./../lib/parseSections";
import {PrimitiveTypes, linkFunctionTypesToFunctions, linkTypeIndexesToFunctions,linkFunctionBodiesToFunctions} from "../lib/functionEntry";

it(`should parse sections`,() => {
    let dump = disassembleWat(fs.readFileSync("__tests__/staticUnreachable1.wat").toString());
    fs.writeFileSync("__tests__/staticUnreachable1.wat.dump",dump);
    let res = parseSections(dump);

    let types = res.typeSection.findFunctionTypes();
    let functions = res.functionSection.getFunctionsWithTypeIndexes();
    let numImports = res.importSection.getNumberOfImports();

    expect(numImports).toBe(2);

    linkFunctionTypesToFunctions(functions,types);

    let bodies = res.codeSection.getFunctionBodies();
    linkFunctionBodiesToFunctions(functions,bodies,numImports);
});