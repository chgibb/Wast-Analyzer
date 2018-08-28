import {Section} from "./section";
import {hexToDec} from "./hexToDec";
import {FunctionEntry} from "./functionEntry";
import {isHexTwoOrFourOctet} from "./hexOctet";
import {hexToASCII} from "./hexToASCII";

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

    public findFunctionEntries() : Array<FunctionEntry>
    {
        let res : Array<FunctionEntry> = new Array<FunctionEntry>();

        for(let i = 0; i != this.contents.length; ++i)
        {
            if(/; function index/.test(this.contents[i]))
            {
                let entry : FunctionEntry = new FunctionEntry();
                entry.functionIndex = hexToDec(this.contents[i].split(/\s/)[1]);
                i++;
                if(/; string length/.test(this.contents[i]))
                {
                    let nameLength = hexToDec(this.contents[i].split(/\s/)[1]);
                    entry.name = "";
                    while(entry.name.length < nameLength)
                    {
                        i++;
                        let potentialOctets = this.contents[i].split(/\s/);
                        for(let k = 0; k != potentialOctets.length; ++k)
                        {
                            if(k == 0 || k == 1)
                            {
                                if(isHexTwoOrFourOctet(potentialOctets[k]))
                                    entry.name += hexToASCII(potentialOctets[k]);
                            }
                            
                            else if(k > 1)
                            {
                                if(isHexTwoOrFourOctet(potentialOctets[k]) && isHexTwoOrFourOctet(potentialOctets[k - 1]))
                                    entry.name += hexToASCII(potentialOctets[k]);
                            }
                        }
                    }
                    res.push(entry);
                }
            }
        }

        return res;
    }
}