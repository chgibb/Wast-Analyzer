const isHex = require("is-hex");

export function isHexTwoOrFourOctet(str : string) : boolean
{
    if(str.length == 2 || str.length == 4 && isHex(str))
        return true;
    return false;
}