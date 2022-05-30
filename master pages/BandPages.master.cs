using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string accountLink;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null) // if logged out
            Response.Redirect("Home.aspx"); // redirect to home
        else if ((string)Session["admin"] == "yes") // if logged in as admin
            accountLink = "<a href=\"../AdminPage.aspx\">Admin Page</a> | " +
                          "<a href=\"../LogOut.aspx\" style=\"color: red;\">Log Out</a>";
        else // if logged in as user
            accountLink = "<a href=\"../EditAccount.aspx\">Account</a>";
    }
}
