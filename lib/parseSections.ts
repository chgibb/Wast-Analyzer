import {TypeSection} from "./typeSection";
import {FunctionSection} from "./functionSection";
import {ExportSection} from "./exportSection";
import {CodeSection} from "./codeSection";
import {NameSection} from "./nameSection";
import {ImportSection} from "./importSection";

enum CurrentSection
{
    type = 0,
    func = 1,
    exp = 2,
    code = 3,
    name = 4,
    imp = 5
}

export class ParsedSections
{
    public typeSection : TypeSection = new TypeSection();
    public functionSection : FunctionSection = new FunctionSection();
    public exportSection : ExportSection = new ExportSection();
    public codeSection : CodeSection = new CodeSection();
    public nameSection : NameSection = new NameSection();
    public importSection : ImportSection = new ImportSection();
}

export function parseSections(dis : string) : ParsedSections
{
    let res : ParsedSections = new ParsedSections();
    let currentSection : number = -1;

    let lines = dis.split("\n");
    for(let i = 0; i != lines.length; ++i)
    {
        if(/; section "Type"/.test(lines[i]))
        {
            currentSection = CurrentSection.type;
            continue;
        }

        if(/; section "Function"/.test(lines[i]))
        {
            currentSection = CurrentSection.func;
            continue;
        }

        if(/; section "Export"/.test(lines[i]))
        {
            currentSection = CurrentSection.exp;
            continue;
        }

        if(/; section "Code"/.test(lines[i]))
        {
            currentSection = CurrentSection.code;
            continue;
        }

        if(/; section "name"/.test(lines[i]))
        {
            currentSection = CurrentSection.name;
            continue;
        }

        if(/; section "Import"/.test(lines[i]))
        {
            currentSection = CurrentSection.imp;
            continue;
        }

        switch(currentSection)
        {
            case CurrentSection.type:
                if(lines[i])
                    res.typeSection.contents.push(lines[i]);
            break;
            case CurrentSection.func:
                if(lines[i])
                    res.functionSection.contents.push(lines[i]);
            break;
            case CurrentSection.exp:
                if(lines[i])
                    res.exportSection.contents.push(lines[i]);
            break;
            case CurrentSection.code:
                if(lines[i])
                    res.codeSection.contents.push(lines[i]);
            break;
            case CurrentSection.name:
                if(lines[i])
                    res.nameSection.contents.push(lines[i]);
            break;
            case CurrentSection.imp:
                if(lines[i])
                    res.importSection.contents.push(lines[i]);
            break;
        }
    }

    return res;
}