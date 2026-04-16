Class Sample.ToolSet Extends %AI.ToolSet [dependsOn=Sample.Tool, dependsOn=Sample.AuditPolicy, dependsOn=Sample.AuthPolicy]
{
    XData Definition
    {
        <ToolSet>
            <Description>Sample Toolset</Description>
            <Policies>
                <Audit Class="Sample.AuditPolicy"></Audit>
                <Authorization Class="Sample.AuthPolicy"></Authorization>
            </Policies>
            <Include Class="Sample.Tool"></Include>
        </ToolSet>
    }    
}
