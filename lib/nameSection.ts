import {Section} from "./section";
import {hexToDec} from "./hexToDec";

export class NameSection implements Section
{
    public contents : Array<string> = new Array<string>();
    public determineNumberOfFunctions() : number | undefined
    {
        for(let i = 0; i != this.contents.length; ++i)
        {
            if(/; num functions/.test(this.contents[i]))
            {
                let comp = this.contents[i].split(/\s/);
                return hexToDec(comp[1]);
            }
        }
        return undefined;
    }
}