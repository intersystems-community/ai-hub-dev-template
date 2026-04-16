Class Sample.MCPSetup Extends %RegisteredObject
{
    ClassMethod Run() As %Status
    {   
        New $NAMESPACE
        Set $NAMESPACE = "%SYS"
        kill props
        set props("DispatchClass") = "Sample.MCPService" 
        set props("AutheEnabled") = 64 // Unautheticated access
        set props("Type") = 18 // Type 18 corresponds to MCP service, ensuring it lives in the MCP Service menu. 
        set props("namespace") = "IRISAPP"
        set sc =  ##class(Security.Applications).Create("/mcp/sample", .props)
        if $$$ISERR(sc) {
            write "Error creating MCP Service: ", $SYSTEM.Status.GetErrorText(sc), !
            quit sc
        } else {
            write "MCP Service created successfully.", !
            quit $$$OK
        }
    }
}