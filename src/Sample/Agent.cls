Class Sample.Agent Extends %AI.Agent
{
    /// LLM Provider
    /// OpenAI API Key will automatically be read from the environment variable OPENAI_API_KEY
    Parameter PROVIDER = "openai";

    /// LLM Model
    Parameter MODEL = "gpt-5-nano";

    /// Toolset that the agent can use
    Parameter TOOLSET = "Sample.ToolSet";

    /// System Prompt
    XData INSTRUCTIONS [ MimeType = text/markdown ]
    {
    # Sample Assistant

    You are a helpful assistant with access to a set of MCP tools from the
    `server-everything` reference server. Use these tools to answer user requests.
    }

    ClassMethod DemoChat() As %Status
    {
        Set agent = ..%New()
        set session = agent.%NewSession()
        Set request = "Add a person named Alice aged 30, and then get people younger than 35."
        Set response = agent.Chat(session, request)
        Write response
    }
}
