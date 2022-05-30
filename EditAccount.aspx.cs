using System;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    public string insert, msg = "<span id=\"csError\"></span>";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null) // if logged out
            Response.Redirect("Home.aspx"); // redirect to home
        else
        {
            BuildTable();

            /*----- apply changes to database -----*/
            if (Request.Form["applychanges"] != null)
            {
                ApplyChanges(); // apply changes to database
                BuildTable(); // rebuild table
            }
        }
    }

    protected void BuildTable()
    {
        DataRow user = DbConn.ExecuteDataTable("SELECT * FROM [Users] WHERE " +
            "email = '" + Session["email"] + "'").Rows[0]; // user details

        insert = "<tr>" +
            "<td><input type=\"email\" value=\"" + Trim(user["email"]) + "\" readonly /></td>" +
            "<td><input type=\"text\" name=\"username\" id=\"username\" value=\"" + Trim(user["username"]) + "\" /></td>" +
            "<td><input type=\"text\" name=\"password\" id=\"password\" value=\"" + Trim(user["password"]) + "\" /></td>" +
            "<td><input type=\"text\" name=\"realname\" id=\"realname\" value=\"" + Trim(user["realname"]) + "\" /></td>" +
            "<td><select name=\"gender\" class=\"field\">" +
                "<option value=\"" + Trim(user["gender"]) + "\" selected hidden>" + Trim(user["gender"]) + "</option>" +
                "<option value=\"Male\">Male</option>" +
                "<option value=\"Female\">Female</option>" +
                "<option value=\"Other\">Other</option>" +
            "</select></td>" +
            "<td><input type=\"text\" name=\"favband" + user["email"] + "\" id=\"favband\" value=\"" + Trim(user["favband"]) + "\" /></td>" +
            "</tr>";
    }

    protected void ApplyChanges()
    {
        bool changesMade = (string)Session["username"] != Request.Form["username"] ||
            (string)Session["password"] != Request.Form["password"] ||
            (string)Session["realname"] != Request.Form["realname"] ||
            (string)Session["gender"] != Request.Form["gender"] ||
            (string)Session["favband"] != Request.Form["favband" + (string)Session["email"]];

        DataRowCollection username = DbConn.ExecuteDataTable("SELECT [username] FROM [Users] WHERE " +
            "username = '" + Request.Form["username"] + "' " +
            "AND NOT email = '" + Session["email"] + "'").Rows;

        if (username.Count != 0) // username is taken
            msg = "<h2 style=\"color: #b32515;\" class=\"top right\">changes failed: username is taken</h2>";
        else if (changesMade)
        {
            DbConn.DoQuery("UPDATE [Users] SET " + // edit user
                "username = '" + Request.Form["username"] + "', " + // username
                "password = '" + Request.Form["password"] + "', " + // password
                "realname = '" + Request.Form["realname"] + "', " + // real name
                "gender = '" + Request.Form["gender"] + "', " + // gender
                "favband = '" + Request.Form["favband" + (string)Session["email"]] + "' " + // favorite band
                "WHERE email = '" + Session["email"] + "'"); // discriminator

            Session["username"] = Request.Form["username"]; // update session username
            Session["password"] = Request.Form["password"]; // update session password
            Session["realname"] = Request.Form["realname"]; // update session realname
            Session["gender"] = Request.Form["gender"]; // update session gender
            Session["favband"] = Request.Form["favband" + (string)Session["email"]]; // update session favorite band
            msg = "<h2 id=\"csError\" style=\"color: #15b315;\" class=\"top right\">changes successfully saved</h2>";
        }
    }

    protected string Trim(object value) { return value.ToString().Trim(); }
}