import {FunctionIndexWithTypeIndex} from "./functionSection";
import {FunctionIndexWithFunctionBody} from "./codeSection";

export enum PrimitiveTypes
{
    i32 = 1,
    i64 = 2,
    f32 = 3,
    f64 = 4,
    voidType = 5
}

export class FunctionType
{
    public typeIndex : number | undefined;
    public parameters : Array<PrimitiveTypes> = new Array<PrimitiveTypes>();
    public result : PrimitiveTypes | undefined;
}

export class FunctionEntry
{
    public functionIndex : number | undefined;
    public typeIndex : number | undefined;
    public name : string | undefined;
    public type : FunctionType | undefined;
    public body : Array<string> = new Array<string>();
}

export function linkTypeIndexesToFunctions(functions : Array<FunctionEntry>,indexes : Array<FunctionIndexWithTypeIndex>) : void
{
    for(let i = 0; i != functions.length; ++i)
    {
        for(let k = 0; k != indexes.length; ++k)
        {
            if(functions[i].functionIndex == indexes[k].functionIndex)
            {
                functions[i].typeIndex = indexes[k].typeIndex;
                break;
            }
        }
    }
}

export function linkFunctionTypesToFunctions(functions : Array<FunctionEntry>,types : Array<FunctionType>) : void
{
    for(let i = 0; i != functions.length; ++i)
    {
        for(let k = 0; k != types.length; ++k)
        {
            if(types[k].typeIndex == functions[i].typeIndex)
            {
                functions[i].type = types[k];
                break;
            }
        }
    }
}

export function linkFunctionBodiesToFunctions(functions : Array<FunctionEntry>,bodies : Array<FunctionIndexWithFunctionBody>) : void
{
    for(let i = 0; i != functions.length; ++i)
    {
        for(let k = 0; k != bodies.length; ++k)
        {
            if(bodies[k].functionIndex == functions[i].functionIndex)
            {
                functions[i].body = bodies[k].functionBody;
                break;
            }
        }
    }
}