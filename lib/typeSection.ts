import {Section} from "./section";
import {FunctionType, PrimitiveTypes} from "./functionEntry";
import {hexToDec} from "./hexToDec";

export class TypeSection implements Section
{
    public contents : Array<string> = new Array<string>();

    public findFunctionTypes() : Array<FunctionType>
    {
        let res : Array<FunctionType> = new Array<FunctionType>();

        for(let i = 0; i != this.contents.length; ++i)
        {
            if(/; type/.test(this.contents[i]))
            {
                let entry : FunctionType = new FunctionType();
                entry.typeIndex = parseInt(this.contents[i].split(/\s/)[2]);
                i++;
                i++;
                let numParameters = hexToDec(this.contents[i].split(/\s/)[1]);

                while(entry.parameters.length != numParameters)
                {
                    if(/; i32/.test(this.contents[i]))
                    {
                        entry.parameters.push(PrimitiveTypes.i32);
                    }

                    else if(/; i64/.test(this.contents[i]))
                    {
                        entry.parameters.push(PrimitiveTypes.i64);
                    }

                    else if(/; f32/.test(this.contents[i]))
                    {
                        entry.parameters.push(PrimitiveTypes.f32);
                    }

                    else if(/; f64/.test(this.contents[i]))
                    {
                        entry.parameters.push(PrimitiveTypes.f64);
                    }

                    i++;
                }

                if(/; num results/.test(this.contents[i]))
                {
                    i++;
                    if(/; i32/.test(this.contents[i]))
                    {
                        entry.result = PrimitiveTypes.i32;
                    }

                    else if(/; i64/.test(this.contents[i]))
                    {
                        entry.result = PrimitiveTypes.i64;
                    }

                    else if(/; f32/.test(this.contents[i]))
                    {
                        entry.result = PrimitiveTypes.f32;
                    }

                    else if(/; f64/.test(this.contents[i]))
                    {
                        entry.result = PrimitiveTypes.f64;
                    }
                }
                res.push(entry);
            }
        }

        return res;
    }
}