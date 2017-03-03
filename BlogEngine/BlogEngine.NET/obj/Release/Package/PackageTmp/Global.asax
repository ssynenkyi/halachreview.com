<%@ Application Language="C#" %>
<%@ Import Namespace="BlogEngine.Core.Packaging" %>
<%@ Import Namespace="BlogEngine.NET.App_Start" %>

<script RunAt="server">
    void Application_BeginRequest(object sender, EventArgs e)
    {
        var app = (HttpApplication)sender;
        BlogEngineConfig.Initialize(app.Context);
    }

    void Application_PreRequestHandlerExecute(object sender, EventArgs e)
    {
        BlogEngineConfig.SetCulture(sender, e);
    }
    void Application_Error(object sender, EventArgs e)
    {
        Exception exc = Server.GetLastError();
        // throw exc;
        if (exc is HttpUnhandledException)
        {

            // Pass the error on to the error page.
            Server.Transfer("error404.aspx", true);
        }
    }

    void Session_Start(object sender, EventArgs e)
    {
        if (HttpContext.Current != null && HttpContext.Current.Session != null)
            HttpContext.Current.Session[Constants.OnlySummary] = false;
        //HttpContext.Current.Session
        //Code that runs when a new session is started
    }

    void Session_End(object sender, EventArgs e)
    {
        if (HttpContext.Current != null && HttpContext.Current.Session != null)
            HttpContext.Current.Session[Constants.OnlySummary] = false;
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
    }

    //protected void Session_Start(object aSender, EventArgs aEventArgs)
    //{
    //    //Create an object to hold all the settings for the user in the session. This is only loaded once we 
    //    //have a user successfully logged in
    //    HttpContext.Current.Session[Constants.OnlySummary] = new SystemSettings();
    //}

    //  public static SystemSettings SystemSettings
    //{
    //          get
    //          {
    //              if (HttpContext.Current == null)
    //                  return null;

    //              return HttpContext.Current.Session[SYSTEM_SETTINGS_SESSION_KEY] as SystemSettings;
    //          }
    //      }
</script>
