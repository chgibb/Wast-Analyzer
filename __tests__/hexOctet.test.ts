/// <reference types="jest" />

import {isHexTwoOrFourOctet} from "./../lib/hexOctet";

it(`should be all valid octets`,() => {
    expect(isHexTwoOrFourOctet("6572")).toBe(true);
    expect(isHexTwoOrFourOctet("00")).toBe(true);
    expect(isHexTwoOrFourOctet("65")).toBe(true);
    expect(isHexTwoOrFourOctet("6f6e")).toBe(true);
    expect(isHexTwoOrFourOctet("7375")).toBe(true);
    expect(isHexTwoOrFourOctet("7268")).toBe(true);
});

it(`should not be valid octets`,() => {
    expect(isHexTwoOrFourOctet("0000070")).toBe(false);
    expect(isHexTwoOrFourOctet("FIXUP")).toBe(false);
    expect(isHexTwoOrFourOctet("size")).toBe(false);
    expect(isHexTwoOrFourOctet(";")).toBe(false);
    expect(isHexTwoOrFourOctet(" ")).toBe(false);
    expect(isHexTwoOrFourOctet("7268 73 ")).toBe(false);
})