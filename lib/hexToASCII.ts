export function hexToASCII(hex : string) : string
{
    let res =  Buffer.from(hex,"hex").toString("ascii");

    if(res.charCodeAt(res.length - 1) <= 31)
        res = res.substring(0,res.length - 1);
    return res;
}