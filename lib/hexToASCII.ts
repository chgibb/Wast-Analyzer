export function hexToASCII(hex : string) : string
{
    let res = "";

    for(let i = 0; i < hex.length; i += 2)
    {
        let code = parseInt(hex.substr(i,2),16);
        if(code)
            res += String.fromCharCode(code);
    }

    if(res.charCodeAt(res.length - 1) <= 32)
        res = res.substring(0,res.length - 1);
    if(res.charCodeAt(res.length - 1) == 34)
        res = res.substring(0,res.length - 1);
    if(res.charCodeAt(res.length - 1) >= 127)
        res = res.substring(0,res.length - 1);
    return res;
}