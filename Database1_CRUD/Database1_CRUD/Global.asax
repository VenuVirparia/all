<%@ Application Language="C#" %>
<script runat="server">
    void Application_Start(object sender, EventArgs e)
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        System.Data.SqlClient.SqlDependency.Start(connStr);
    }

    void Application_End(object sender, EventArgs e)
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        System.Data.SqlClient.SqlDependency.Stop(connStr);
    }
</script>
