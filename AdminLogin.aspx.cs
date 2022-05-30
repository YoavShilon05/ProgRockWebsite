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
            string find = "SELECT * FROM [Managers] WHERE username = '" + username + "' AND password = '" + password + "'";
            
            DataRowCollection user = DbConn.ExecuteDataTable(find).Rows;

            if (user.Count > 0) // if admin exists log in
            {
                Session["email"] = user[0]["email"];
                Session["username"] = username;
                Session["password"] = password;
                Session["realname"] = user[0]["realname"];
                Session["admin"] = "yes"; // user is admin
                Response.Redirect("Home.aspx");
            }
            else // if not admin
                msg += "<h2 style=\"font-size:20px\">Your login info didn't match any existing admin.</h2>" +
                       "<h3>You can try again or <a href=\"Home.aspx\">return to home</a>.</h3>";
        }
    }
}