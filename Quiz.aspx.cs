using System;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null) // if logged out
            Response.Redirect("Home.aspx"); // redirect to home
    }
}