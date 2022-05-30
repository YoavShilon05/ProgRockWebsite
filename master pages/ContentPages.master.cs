using System;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string pageLinks, accountLinks;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null) // if logged out
            accountLinks = "<a href=\"../SignUp.aspx\">Sign Up</a> | " +
                           "<a href=\"../Login.aspx\">Log In</a>";
        else // if logged in
        {
            pageLinks = "<li class=\"link\"><a href=\"../Pink_Floyd.aspx\">Pink Floyd</a></li>" +
                        "<li class=\"link\"><a href=\"../King_Crimson.aspx\">King Crimson</a></li>" +
                        "<li class=\"link\"><a href=\"../Dire_Straits.aspx\">Dire Straits</a></li>" +
                        "<li class=\"link\"><a href=\"../Favorite_Song.aspx\">My Favorite Prog Song</a></li>" +
                        "<li class=\"link\"><a href=\"../Quiz.aspx\">Quiz</a></li>" +
                        "<li class=\"link\"><a href=\"../DONATE!.aspx\">DONATE!</a></li>";
        }

        if ((string)Session["admin"] == "yes") // if admin
            accountLinks = "<a href=\"../AdminPage.aspx\">Admin Page</a> | " +
                           "<a href=\"../LogOut.aspx\" style=\"color: red;\">Log Out</a>";
        else if (Session["email"] != null) // if logged in as user
            accountLinks = "<a href=\"../EditAccount.aspx\">Account</a>";
    }
}
