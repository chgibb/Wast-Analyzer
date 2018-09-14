/// <reference types="jest" />

import * as fs from "fs";

import {disassembleWat} from "./../lib/disassemble";
import {parseSections} from "./../lib/parseSections";
import {PrimitiveTypes, linkFunctionTypesToFunctions, FunctionSpace,linkFunctionBodiesToFunctions} from "../lib/functionEntry";

it(`should parse sections`,() => {
    let dump = disassembleWat(fs.readFileSync("__tests__/helloWorldRust.wat").toString());
    fs.writeFileSync("__tests__/helloWorldRust.wat.dump",dump);
    let res = parseSections(dump);
    expect(res.typeSection.contents.length).toBe(61);
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

    let functions : FunctionSpace = new FunctionSpace(
        res.functionSection.initializeInternalFunctionSpace(),
        res.importSection.initializeImportedFunctionSpace()
    );

    expect(functions.internal.length).toBe(33);

    linkFunctionTypesToFunctions(functions.internal,types);
    linkFunctionTypesToFunctions(functions.imported,types);

    let bodies = res.codeSection.getFunctionBodies();
    linkFunctionBodiesToFunctions(functions,bodies);

    res.nameSection.nameFunctions(functions);

    fs.writeFileSync("__tests__/helloWorldRust.wat.json",JSON.stringify(functions,undefined,4));

    expect(functions.imported[0].name).toBe("__wbg_f_alert_alert_n");
    expect(functions.imported[0].typeIndex).toBe(2);
    expect(functions.imported[0].functionIndex).toBe(0);
    expect(functions.imported[0].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.imported[0].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.imported[1].name).toBe("__wbindgen_throw");
    expect(functions.imported[1].typeIndex).toBe(2);
    expect(functions.imported[1].functionIndex).toBe(1);
    expect(functions.imported[1].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.imported[1].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[0].name).toBe("greet");
    expect(functions.internal[0].typeIndex).toBe(2);
    expect(functions.internal[0].functionIndex).toBe(0);
    expect(functions.internal[0].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[0].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[1].name).toBe("<&'a_T_as_core::fmt::Display>::fmt::h10d15eeb4044458d");
    expect(functions.internal[1].typeIndex).toBe(3);
    expect(functions.internal[1].functionIndex).toBe(1);
    expect(functions.internal[1].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[1].type!.result).toBe(PrimitiveTypes.i32);
    
    expect(functions.internal[2].name).toBe("dlmalloc::dlmalloc::Dlmalloc::malloc::hce1b00d5aca5677c");
    expect(functions.internal[2].typeIndex).toBe(4);
    expect(functions.internal[2].functionIndex).toBe(2);
    expect(functions.internal[2].type!.parameters).toEqual([PrimitiveTypes.i32]);
    expect(functions.internal[2].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions.internal[3].name).toBe("core::fmt::write::h533d40856339be39");
    expect(functions.internal[3].typeIndex).toBe(5);
    expect(functions.internal[3].functionIndex).toBe(3);
    expect(functions.internal[3].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[3].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions.internal[4].name).toBe("dlmalloc::dlmalloc::Dlmalloc::free::h4c32f8306a59a4b8");
    expect(functions.internal[4].typeIndex).toBe(1);
    expect(functions.internal[4].functionIndex).toBe(4);
    expect(functions.internal[4].type!.parameters).toEqual([PrimitiveTypes.i32]);
    expect(functions.internal[4].type!.result).toBe(PrimitiveTypes.voidType);
    
    expect(functions.internal[5].name).toBe("rust_oom");
    expect(functions.internal[5].typeIndex).toBe(2);
    expect(functions.internal[5].functionIndex).toBe(5);
    expect(functions.internal[5].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[5].type!.result).toBe(PrimitiveTypes.voidType);
    expect(functions.internal[5].body).toEqual(
`0001973: 00                                        ; func body size (guess)
0001974: 00                                        ; local decl count
0001975: 00                                        ; unreachable
0001976: 00                                        ; unreachable
0001977: 0b                                        ; end
0001973: 04                                        ; FIXUP func body size`.split("\n"));
    
    expect(functions.internal[6].name).toBe("core::result::unwrap_failed::ha655e72972fab217");
    expect(functions.internal[6].typeIndex).toBe(0);
    expect(functions.internal[6].functionIndex).toBe(6);
    expect(functions.internal[6].type!.parameters).toEqual([PrimitiveTypes.voidType]);
    expect(functions.internal[6].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[7].name).toBe("wasm_bindgen::throw::hb552665eadbe0155");
    expect(functions.internal[7].typeIndex).toBe(0);
    expect(functions.internal[7].functionIndex).toBe(7);
    expect(functions.internal[7].type!.parameters).toEqual([PrimitiveTypes.voidType]);
    expect(functions.internal[7].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[8].name).toBe("__wbindgen_malloc");
    expect(functions.internal[8].typeIndex).toBe(4);
    expect(functions.internal[8].functionIndex).toBe(8);
    expect(functions.internal[8].type!.parameters).toEqual([PrimitiveTypes.i32]);
    expect(functions.internal[8].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions.internal[9].name).toBe("__wbindgen_free");
    expect(functions.internal[9].typeIndex).toBe(2);
    expect(functions.internal[9].functionIndex).toBe(9);
    expect(functions.internal[9].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[9].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[10].name).toBe("std::panicking::rust_panic_with_hook::h9b1c029d1ceaded2");
    expect(functions.internal[10].typeIndex).toBe(1);
    expect(functions.internal[10].functionIndex).toBe(10);
    expect(functions.internal[10].type!.parameters).toEqual([PrimitiveTypes.i32]);
    expect(functions.internal[10].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[11].name).toBe("rust_begin_unwind");
    expect(functions.internal[11].typeIndex).toBe(6);
    expect(functions.internal[11].functionIndex).toBe(11);
    expect(functions.internal[11].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[11].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[12].name).toBe("std::panicking::begin_panic_fmt::h29d4906ca23d78a0");
    expect(functions.internal[12].typeIndex).toBe(2);
    expect(functions.internal[12].functionIndex).toBe(12);
    expect(functions.internal[12].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[12].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[13].name).toBe("dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651");
    expect(functions.internal[13].typeIndex).toBe(1);
    expect(functions.internal[13].functionIndex).toBe(13);
    expect(functions.internal[13].type!.parameters).toEqual([PrimitiveTypes.i32]);
    expect(functions.internal[13].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[14].name).toBe("dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad");
    expect(functions.internal[14].typeIndex).toBe(2);
    expect(functions.internal[14].functionIndex).toBe(14);
    expect(functions.internal[14].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[14].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[15].name).toBe("dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::hb606175ffa022755");
    expect(functions.internal[15].typeIndex).toBe(2);
    expect(functions.internal[15].functionIndex).toBe(15);
    expect(functions.internal[15].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[15].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[16].name).toBe("core::ptr::drop_in_place::h2745c3a200e8c575");
    expect(functions.internal[16].typeIndex).toBe(1);
    expect(functions.internal[16].functionIndex).toBe(16);
    expect(functions.internal[16].type!.parameters).toEqual([PrimitiveTypes.i32]);
    expect(functions.internal[16].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[17].name).toBe("alloc::raw_vec::capacity_overflow::h034ca36241ac64a2");
    expect(functions.internal[17].typeIndex).toBe(0);
    expect(functions.internal[17].functionIndex).toBe(17);
    expect(functions.internal[17].type!.parameters).toEqual([PrimitiveTypes.voidType]);
    expect(functions.internal[17].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[18].name).toBe("core::panicking::panic::haf7d7779169c0743");
    expect(functions.internal[18].typeIndex).toBe(1);
    expect(functions.internal[18].functionIndex).toBe(18);
    expect(functions.internal[18].type!.parameters).toEqual([PrimitiveTypes.i32]);
    expect(functions.internal[18].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[19].name).toBe("<alloc::raw_vec::RawVec<T__A>>::reserve_internal::hd482a5eb753c5a7b");
    expect(functions.internal[19].typeIndex).toBe(5);
    expect(functions.internal[19].functionIndex).toBe(19);
    expect(functions.internal[19].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[19].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions.internal[20].name).toBe("__rust_realloc");
    expect(functions.internal[20].typeIndex).toBe(3);
    expect(functions.internal[20].functionIndex).toBe(20);
    expect(functions.internal[20].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[20].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions.internal[21].name).toBe("<core::fmt::Error_as_core::fmt::Debug>::fmt::h1e2fd851a36a17f2");
    expect(functions.internal[21].typeIndex).toBe(3);
    expect(functions.internal[21].functionIndex).toBe(21);
    expect(functions.internal[21].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[21].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions.internal[22].name).toBe("<&'a_T_as_core::fmt::Display>::fmt::hdc0ef8ca37056d26");
    expect(functions.internal[22].typeIndex).toBe(3);
    expect(functions.internal[22].functionIndex).toBe(22);
    expect(functions.internal[22].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[22].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions.internal[23].name).toBe("core::panicking::panic_fmt::h29e5105b4d53bc05");
    expect(functions.internal[23].typeIndex).toBe(2);
    expect(functions.internal[23].functionIndex).toBe(23);
    expect(functions.internal[23].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[23].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[24].name).toBe("<str_as_core::fmt::Display>::fmt::h46b69ad9cae344d8");
    expect(functions.internal[24].typeIndex).toBe(5);
    expect(functions.internal[24].functionIndex).toBe(24);
    expect(functions.internal[24].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[24].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions.internal[25].name).toBe("<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_char::h7ce04ba63be07a5d");
    expect(functions.internal[25].typeIndex).toBe(3);
    expect(functions.internal[25].functionIndex).toBe(25);
    expect(functions.internal[25].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[25].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions.internal[26].name).toBe("<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_fmt::h366fb92f1c6d804e");
    expect(functions.internal[26].typeIndex).toBe(3);
    expect(functions.internal[26].functionIndex).toBe(26);
    expect(functions.internal[26].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[26].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions.internal[27].name).toBe("<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_str::hc67b7914ad867b23");
    expect(functions.internal[27].typeIndex).toBe(5);
    expect(functions.internal[27].functionIndex).toBe(27);
    expect(functions.internal[27].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[27].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions.internal[28].name).toBe("core::panicking::panic_bounds_check::h5e0d682eeeb4ea02");
    expect(functions.internal[28].typeIndex).toBe(7);
    expect(functions.internal[28].functionIndex).toBe(28);
    expect(functions.internal[28].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[28].type!.result).toBe(PrimitiveTypes.voidType);

    expect(functions.internal[29].name).toBe("core::fmt::num::<impl_core::fmt::Display_for_usize>::fmt::h31ff92112cdfbd01");
    expect(functions.internal[29].typeIndex).toBe(3);
    expect(functions.internal[29].functionIndex).toBe(29);
    expect(functions.internal[29].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[29].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions.internal[30].name).toBe("core::fmt::ArgumentV1::show_usize::h31ed957c3096bec9");
    expect(functions.internal[30].typeIndex).toBe(3);
    expect(functions.internal[30].functionIndex).toBe(30);
    expect(functions.internal[30].type!.parameters).toEqual([PrimitiveTypes.i32,PrimitiveTypes.i32]);
    expect(functions.internal[30].type!.result).toBe(PrimitiveTypes.i32);

    expect(functions.internal[31].name).toBe("core::fmt::Formatter::pad_integral::__closure__::h94fc5aab011b1f92");
    expect(functions.internal[31].functionIndex).toBe(31);


    expect(functions.internal[32].name).toBe("memcpy");
    expect(functions.internal[32].functionIndex).toBe(32);


});