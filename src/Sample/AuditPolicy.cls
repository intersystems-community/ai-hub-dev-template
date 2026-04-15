Class Sample.AuditPolicy Extends %AI.Policy.Audit
{
    /// Audit policy to log tool executions to a global 
    Method %LogExecution(call As %DynamicObject, metadata As %DynamicObject, result As %DynamicObject, duration As %Integer, status As %Status) As %Status{
        Set Tool = call.%Get("name")
        Set ^ToolLog(Tool, $$$INCREMENT(^ToolLog(Tool))) = {
            "Tool": (Tool),
            "Call": (call),
            "Metadata": (metadata),
            "Result": (result),
            "Duration": (duration),
            "Status": (status)
        }
    }

}
