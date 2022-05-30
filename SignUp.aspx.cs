using System;

public partial class _Default : System.Web.UI.Page
{
    public string msg = "<span id=\"csError\"></span>";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null) // if logged in
            Response.Redirect("Home.aspx"); // redirect to home

        if (Request.Form["CreateAccount"] != null) // create account button pressed
        {
            bool usernameTaken = DbConn.ExecuteDataTable("SELECT * FROM [Users] WHERE " +
                "username = '" + Request.Form["username"] + "' ").Rows.Count != 0; // is username taken
            bool emailTaken = DbConn.ExecuteDataTable("SELECT * FROM [Users] WHERE " +
                "email = '" + Request.Form["email"] + "' ").Rows.Count != 0; // is email taken

            if (usernameTaken) // if username is taken
                msg = "<h2 style=\"color: #b32515;\" class=\"top right\">sign up failed: username is taken</h2>";
            else if (emailTaken) // if email is taken
                msg = "<h2 style=\"color: #b32515;\" class=\"top right\">sign up failed: email is taken</h2>";
            else
            {
                DbConn.DoQuery("INSERT INTO [Users](email, username, [password], realname, gender, favband) VALUES('" +
                    Request.Form["email"] + "', '" +
                    Request.Form["username"] + "', '" +
                    Request.Form["password"] + "', '" +
                    Request.Form["realname"] + "', '" +
                    Request.Form["gender"] + "', '" +
                    Request.Form["favband"] + "')"); // add user
                Response.Redirect("Login.aspx"); // redirect to login page
            }
        }
    }
}