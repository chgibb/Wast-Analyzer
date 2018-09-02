import {Section} from "./section";
import {hexToDec} from "./hexToDec";

export class ImportSection implements Section
{
    public contents : Array<string> = new Array<string>();
    public getNumberOfImports() : number
    {
        let res = 0;
        for(let i = 0; i != this.contents.length; ++i)
        {
            if(/; num imports/.test(this.contents[i]))
            {
                let comp = this.contents[i].split(/\s/);
                let num = hexToDec(comp[1])
                if(num)
                    return num;
            }
        }
        return res;
    }
}