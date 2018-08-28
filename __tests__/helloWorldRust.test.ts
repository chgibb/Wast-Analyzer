/// <reference types="jest" />

import * as fs from "fs";

import {disassembleWat} from "./../lib/disassemble";
import {parseSections} from "./../lib/parseSections";
import {PrimitiveTypes, linkFunctionTypesToFunctions, linkTypeIndexesToFunctions} from "../lib/functionEntry";

it(`should parse sections`,() => {
    let dump = disassembleWat(fs.readFileSync(`__tests__/helloWorldRust.wat`).toString());
    fs.writeFileSync(`__tests__/helloWorldRust.wat.dump`,dump);
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

    expect(functions.length).toBe(35);

    expect(functions[0].name).toBe(`__wbg_f_alert_alert_n`);

    expect(functions[1].name).toBe(`__wbindgen_throw`);

    expect(functions[2].name).toBe(`greet`);

    expect(functions[3].name).toBe(`<&'a_T_as_core::fmt::Display>::fmt::h10d15eeb4044458d`);
    
    expect(functions[4].name).toBe(`dlmalloc::dlmalloc::Dlmalloc::malloc::hce1b00d5aca5677c`);

    expect(functions[5].name).toBe(`core::fmt::write::h533d40856339be39`);

    expect(functions[6].name).toBe(`dlmalloc::dlmalloc::Dlmalloc::free::h4c32f8306a59a4b8`);

    expect(functions[7].name).toBe(`rust_oom`);

    expect(functions[8].name).toBe(`core::result::unwrap_failed::ha655e72972fab217`);

    expect(functions[9].name).toBe(`wasm_bindgen::throw::hb552665eadbe0155`);

    expect(functions[10].name).toBe(`__wbindgen_malloc`);

    console.log(functions[11].name);
    console.log(functions[11].name!.charCodeAt(functions[11].name!.length-1));
    expect(functions[11].name).toBe(`__wbindgen_free`);

    expect(functions[12].name).toEqual(`std::panicking::rust_panic_with_hook::h9b1c029d1ceaded2`);

    expect(functions[13].name).toBe(`greet`);

    expect(functions[14].name).toBe(`greet`);

    expect(functions[15].name).toBe(`greet`);

    expect(functions[16].name).toBe(`greet`);

    expect(functions[17].name).toBe(`greet`);

    expect(functions[18].name).toBe(`greet`);

    expect(functions[19].name).toBe(`greet`);

    expect(functions[20].name).toBe(`greet`);

    expect(functions[21].name).toBe(`greet`);

    expect(functions[22].name).toBe(`greet`);

    expect(functions[23].name).toBe(`greet`);

    expect(functions[24].name).toBe(`greet`);

    expect(functions[25].name).toBe(`greet`);

    expect(functions[26].name).toBe(`greet`);

    expect(functions[27].name).toBe(`greet`);

    expect(functions[28].name).toBe(`greet`);

    expect(functions[29].name).toBe(`greet`);

    expect(functions[30].name).toBe(`greet`);

    expect(functions[31].name).toBe(`greet`);

    expect(functions[32].name).toBe(`greet`);

    expect(functions[33].name).toBe(`greet`);

    expect(functions[34].name).toBe(`greet`);

    expect(functions[35].name).toBe(`greet`);
});