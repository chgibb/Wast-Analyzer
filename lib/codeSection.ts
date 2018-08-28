import {Section} from "./section";

export class FunctionIndexWithFunctionBody
{
    public functionIndex : number = -1;
    public functionBody : Array<string> = new Array<string>();
}

export class CodeSection implements Section
{
    public contents : Array<string> = new Array<string>();

    public getFunctionBodies() : Array<FunctionIndexWithFunctionBody>
    {
        let res : Array<FunctionIndexWithFunctionBody> = new Array<FunctionIndexWithFunctionBody>();

        let currentEntry : FunctionIndexWithFunctionBody = new FunctionIndexWithFunctionBody();

        for(let i = 0; i != this.contents.length; ++i)
        {
            if(/; function body/.test(this.contents[i]))
            {
                if(currentEntry.functionIndex != -1)
                    res.push(currentEntry);
                currentEntry = new FunctionIndexWithFunctionBody();
                currentEntry.functionIndex = parseInt(this.contents[i].split(/\s/)[3]);
            }
            else
                currentEntry.functionBody.push(this.contents[i]);
        }
        if(currentEntry.functionIndex != -1)
            res.push(currentEntry);

        return res;
    }
}