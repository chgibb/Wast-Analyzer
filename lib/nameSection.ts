import {Section} from "./section";
import {hexToDec} from "./hexToDec";
import {FunctionEntry,getFunctionByFunctionIndex} from "./functionEntry";
import {isHexTwoOrFourOctet} from "./hexOctet";
import {hexToASCII} from "./hexToASCII";

export class NameSection implements Section
{
    public contents : Array<string> = new Array<string>();

    public nameFunctions(functions : Array<FunctionEntry>,numImports : number) : void
    {
        for(let i = 0; i != this.contents.length; ++i)
        {
            if(/; function index/.test(this.contents[i]))
            {
                let functionIndex = hexToDec(this.contents[i].split(/\s/)[1]);
                i++;
                if(/; string length/.test(this.contents[i]))
                {
                    let nameLength = hexToDec(this.contents[i].split(/\s/)[1]);
                    let name = "";
                    while(name.length < nameLength)
                    {
                        i++;
                        let potentialOctets = this.contents[i].split(/\s/);
                        for(let k = 0; k != potentialOctets.length; ++k)
                        {
                            if(k == 0 || k == 1)
                            {
                                if(isHexTwoOrFourOctet(potentialOctets[k]))
                                    name += hexToASCII(potentialOctets[k]);
                            }
                            
                            else if(k > 1)
                            {
                                if(isHexTwoOrFourOctet(potentialOctets[k]) && isHexTwoOrFourOctet(potentialOctets[k - 1]))
                                    name += hexToASCII(potentialOctets[k]);
                            }
                        }
                    }
                    let entry = getFunctionByFunctionIndex(functions,functionIndex);
                    if(entry)
                        entry.name = name;
                }
            }
        }   
    }
}