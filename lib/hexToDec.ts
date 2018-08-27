const hexToDecJS = require("hex-to-dec");

export function hexToDec(hex : string) : number
{
    return hexToDecJS(hex);
}