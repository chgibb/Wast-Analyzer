import {Section} from "./section";
import {hexToDec} from "./hexToDec";
import {ImportedFunctionEntry} from "./functionEntry";

export class ImportSection implements Section
{
    public contents : Array<string> = new Array<string>();
    private getNumberOfImports() : number
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

    public initializeImportedFunctionSpace() : Array<ImportedFunctionEntry>
    {
        let res : Array<ImportedFunctionEntry> = new Array<ImportedFunctionEntry>();

        for(let i = 0; i != this.contents.length; ++i)
        {
            if(/; import header/.test(this.contents[i]))
            {
                let currentImport = parseInt(this.contents[i].split(/\s/)[3]);
                let entry : ImportedFunctionEntry = new ImportedFunctionEntry();
                while(!/; FIXUP section size/.test(this.contents[i]))
                {
                    if(/; import kind/.test(this.contents[i]))
                    {
                        entry.typeIndex = hexToDec(this.contents[i].split(/\s/)[1]);
                    }

                    else if(/; import signature index/.test(this.contents[i]))
                    {
                        entry.functionIndex = hexToDec(this.contents[i].split(/\s/)[1]);
                    }
                    
                    if(entry.typeIndex !== undefined && entry.functionIndex !== undefined)
                    {
                        res.push(entry);
                        break;
                    }
                    i++;
                }
            }
        }

        return res;
    }
}