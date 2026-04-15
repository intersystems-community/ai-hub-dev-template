Class Sample.AuthPolicy Extends %AI.Policy.Authorization
{   
    /// Authorization policy to control whether a tool can be executed
    Method %CanExecute(tool As %String, call As %DynamicObject, metadata As %DynamicObject) As %Status
{   
    If $USERNAME = "SuperUser"{
        Return $$$OK
    }Elseif tool = "GetPeopleYoungerThan" {
        Return $$$OK
    }
    Else {
        return $$$ERROR($$$AICoreToolAccessDenied, "Access denied: User does not have the 'Doctor' role required to execute this tool.")
    }
}
}
