import {Section} from "./section";
import {hexToDec} from "./hexToDec";

export class FunctionIndexWithTypeIndex
{
    public functionIndex : number = -1;
    public typeIndex : number = -1;
}

export class FunctionSection implements Section
{
    public contents : Array<string> = new Array<string>();

    public getFunctionIndexesWithTypeIndexes() : Array<FunctionIndexWithTypeIndex>
    {
        let res : Array<FunctionIndexWithTypeIndex> = new Array<FunctionIndexWithTypeIndex>();

        for(let i = 0; i != this.contents.length; ++i)
        {
            if(/; function/.test(this.contents[i]) && /signature index/.test(this.contents[i]))
            {
                let comp = this.contents[i].split(/\s/);
  
                let entry = new FunctionIndexWithTypeIndex();

                if(comp[1] == "00")
                    entry.typeIndex = 0;
                else
                    entry.typeIndex = hexToDec(comp[1]);
                    
                entry.functionIndex = parseInt(comp[comp.length-3]);
                res.push(entry);
            }
        }

        return res;
    }
}