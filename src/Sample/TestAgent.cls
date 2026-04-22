Class Sample.TestAgent Extends %AI.Agent
{
    /// LLM Provider
    Parameter PROVIDER = "openai";

    /// LLM Model
    Parameter MODEL = "gpt-5-nano";

    /// Toolsets that the agent can use
    Parameter TOOLSETS = "Sample.ToolSet";

    Parameter APIKEY = "@{env.OPENAI_API_KEY}";

    
    ClassMethod DemoChat() As %Status
    {
        Set agent = ..%New()
        Set sc = agent.%Init()
        if $$$ISERR(sc) {
            Write "Error initializing agent: ", $SYSTEM.Status.GetErrorText(sc), !
            Quit sc
        }

        Set session = agent.CreateSession()

        Set request = "Add a person named Alice aged 30, and then get people younger than 35."
        Set response = agent.Chat(session, request)
        write response.Content
        Quit $$$OK
    }
}