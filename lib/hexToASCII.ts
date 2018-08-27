export function hexToASCII(hex : string) : string
{
    return Buffer.from(hex,"hex").toString("ascii");
}