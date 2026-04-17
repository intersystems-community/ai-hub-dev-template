Class Sample.ToolSet Extends %AI.ToolSet [dependsOn=Sample.Tool, dependsOn=Sample.AuditPolicy, dependsOn=Sample.AuthPolicy]
{
    XData Definition
    {
        <ToolSet>
            <Description>Sample Toolset</Description>
            <MCP Name="PythonServer">
                <Stdio Executable="/home/irisowner/.venvs/mcp-tools/bin/python" Args="-I /home/irisowner/dev/src/Python/multiplication_mcp.py" />
            </MCP>
            <Include Class="Sample.Tool"></Include>
        </ToolSet>
    }    
}
