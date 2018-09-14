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
    private isStaticallyUnreachable : boolean | undefined = undefined;

    public isUnreachable() : boolean | undefined
    {
        if(this.isStaticallyUnreachable === undefined)
        {
            throw new Error("Unreachability has not been determined yet");
        }
        else
            return this.isStaticallyUnreachable;
    }

    public determineUnreachability() : void
    {
        if(!this.body)
        {
            throw new Error("Function body has not been linked yet");
        }
        for(let i = 0; i != this.body.length; ++i)
        {
            if(/; unreachable/.test(this.body[i]))
            {
                this.isStaticallyUnreachable = true;
                return;
            }
        }
        this.isStaticallyUnreachable = false;
    }
}

export class ImportedFunctionEntry extends FunctionEntry
{

}

export class FunctionSpace
{
    public imported : Array<ImportedFunctionEntry> = new Array<ImportedFunctionEntry>();
    public internal : Array<FunctionEntry> = new Array<FunctionEntry>();

    public constructor(
        internal : Array<FunctionEntry>,
        imported : Array<ImportedFunctionEntry>
    ) {
        this.internal = internal;
        this.imported = imported;
    }
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

export function linkFunctionBodiesToFunctions(space : FunctionSpace,bodies : Array<FunctionIndexWithFunctionBody>) : void
{
    for(let i = 0; i != space.internal.length; ++i)
    {
        for(let k = 0; k != bodies.length; ++k)
        {
            if(space.internal[i].functionIndex == bodies[i].functionIndex)
            {
                space.internal[i].body = bodies[i].functionBody;
                break;
            }
        }
    }

}

export function getFunctionByFunctionIndexOffsetByImportSpace(space : FunctionSpace,index : number) : FunctionEntry | undefined
{
    if(index >= 0 && index <= space.imported.length - 1)
    {
        for(let i = 0; i != space.imported.length; ++i)
        {
            if(space.imported[i].functionIndex == index)
                return space.imported[i];
        }
    }

    else
    {
        for(let i = 0; i != space.internal.length; ++i)
        {
            if(space.internal[i].functionIndex! + space.imported.length == index)
                return space.internal[i];
        }
    }
    throw new Error(`Could not locate function index ${index}`);
}