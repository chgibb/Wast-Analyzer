import * as Wabt from "wabt";

export function disassembleWat(wat : string) : string
{
    let mod = Wabt.parseWat("",wat);
    return mod.toBinary({log : true,write_debug_names : true,canonicalize_lebs : true}).log;
}