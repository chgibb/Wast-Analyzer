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

    expect(functions.length).toBe(35);

    expect(functions[0].name).toBe("__wbg_f_alert_alert_n");

    expect(functions[1].name).toBe("__wbindgen_throw");

    expect(functions[2].name).toBe("greet");

    expect(functions[3].name).toBe("<&'a_T_as_core::fmt::Display>::fmt::h10d15eeb4044458d");
    
    expect(functions[4].name).toBe("dlmalloc::dlmalloc::Dlmalloc::malloc::hce1b00d5aca5677c");

    expect(functions[5].name).toBe("core::fmt::write::h533d40856339be39");

    expect(functions[6].name).toBe("dlmalloc::dlmalloc::Dlmalloc::free::h4c32f8306a59a4b8");

    expect(functions[7].name).toBe("rust_oom");

    expect(functions[8].name).toBe("core::result::unwrap_failed::ha655e72972fab217");

    expect(functions[9].name).toBe("wasm_bindgen::throw::hb552665eadbe0155");

    expect(functions[10].name).toBe("__wbindgen_malloc");

    expect(functions[11].name).toBe("__wbindgen_free");

    expect(functions[12].name).toBe("std::panicking::rust_panic_with_hook::h9b1c029d1ceaded2");

    expect(functions[13].name).toBe("rust_begin_unwind");

    expect(functions[14].name).toBe("std::panicking::begin_panic_fmt::h29d4906ca23d78a0");

    expect(functions[15].name).toBe("dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651");

    expect(functions[16].name).toBe("dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad");

    expect(functions[17].name).toBe("dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::hb606175ffa022755");

    expect(functions[18].name).toBe("core::ptr::drop_in_place::h2745c3a200e8c575");

    expect(functions[19].name).toBe("alloc::raw_vec::capacity_overflow::h034ca36241ac64a2");

    expect(functions[20].name).toBe("core::panicking::panic::haf7d7779169c0743");

    expect(functions[21].name).toBe("<alloc::raw_vec::RawVec<T__A>>::reserve_internal::hd482a5eb753c5a7b");

    expect(functions[22].name).toBe("__rust_realloc");

    expect(functions[23].name).toBe("<core::fmt::Error_as_core::fmt::Debug>::fmt::h1e2fd851a36a17f2");

    expect(functions[24].name).toBe("<&'a_T_as_core::fmt::Display>::fmt::hdc0ef8ca37056d26");

    expect(functions[25].name).toBe("core::panicking::panic_fmt::h29e5105b4d53bc05");

    expect(functions[26].name).toBe("<str_as_core::fmt::Display>::fmt::h46b69ad9cae344d8");

    expect(functions[27].name).toBe("<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_char::h7ce04ba63be07a5d");

    expect(functions[28].name).toBe("<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_fmt::h366fb92f1c6d804e");

    expect(functions[29].name).toBe("<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_str::hc67b7914ad867b23");

    expect(functions[30].name).toBe("core::panicking::panic_bounds_check::h5e0d682eeeb4ea02");

    expect(functions[31].name).toBe("core::fmt::num::<impl_core::fmt::Display_for_usize>::fmt::h31ff92112cdfbd01");

    expect(functions[32].name).toBe("core::fmt::ArgumentV1::show_usize::h31ed957c3096bec9");

    expect(functions[33].name).toBe("core::fmt::Formatter::pad_integral::__closure__::h94fc5aab011b1f92");

    expect(functions[34].name).toBe("memcpy");

});