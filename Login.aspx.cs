using System;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    public string msg = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null) // if logged in
            Response.Redirect("Home.aspx"); // redirect to home

        if (Request.Form["submit"] != null)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];
            string find = "SELECT * FROM [Users] WHERE username = '" + username + "' AND password = '" + password + "' COLLATE SQL_Latin1_General_CP1_CS_AS";

            DataRowCollection user = DbConn.ExecuteDataTable(find).Rows;

            if (user.Count > 0) // if user exists log in
            {
                Session["email"] = user[0]["email"].ToString().Trim();
                Session["username"] = user[0]["username"].ToString().Trim();
                Session["password"] = user[0]["password"].ToString().Trim();
                Session["realname"] = user[0]["realname"].ToString().Trim();
                Session["gender"] = user[0]["gender"].ToString().Trim();
                Session["favband"] = user[0]["favband"].ToString().Trim();
                Response.Redirect("Home.aspx"); // redirect to home
            }
            else
                msg += "<h2 style=\"font-size:20px\">Your login info didn't match any existing account.</h2>" +
                       "<h3>You can try again or <a href=\"Home.aspx\">return to home</a>.</h3>";
        }
    }
}