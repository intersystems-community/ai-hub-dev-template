Class Sample.ToolSet Extends %AI.ToolSet
{
    XData Definition
    {
        <ToolSet>
            <Description>Sample Toolset</Description>
            <Policy>
                <Audit Class="Sample.AuditPolicy"></Audit>
                <Authorization Class="Sample.AuthorizationPolicy"></Authorization>
            </Policy>
            <Include Class="Sample.Tool"></Include>
        </ToolSet>
    }    
}
