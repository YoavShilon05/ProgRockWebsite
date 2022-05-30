using System;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    public string insert;

    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string) Session["admin"] != "yes") // if not admin
            Response.Redirect("Home.aspx"); // redirect to home

        BuildTable();

        /*----- apply changes to database -----*/
        if (Request.Form["applychanges"] != null)
        {
            ApplyChanges(); // apply changes to database
            BuildTable(); // rebuild table
        }
    }

    protected void BuildTable()
    {
        insert = ""; // reset table values
        
        string usersTable = "SELECT * FROM [Users]";
        if (Request.Form["submitsearch"] != null) // if filter is pressed
            if (Request.Form["filtertext"] != "") // if filter is not empty
                usersTable += " WHERE " + Request.Form["filterby"] + " = '" + Request.Form["filtertext"] + "'";
        
        DataRowCollection users = DbConn.ExecuteDataTable(usersTable).Rows; // list of admins

        foreach (DataRow user in users) // add users to table
        {
            insert += "<tr>" +
                      "<td><input type=\"text\" name=\"email" + user["email"] + "\" id=\"email\" value=\"" + Trim(user["email"]) + "\" /></td>" +
                      "<td><input type=\"text\" name=\"username" + user["email"] + "\" id=\"username\" value=\"" + Trim(user["username"]) + "\" /></td>" +
                      "<td><input type=\"text\" name=\"password" + user["email"] + "\" id=\"password\" value=\"" + Trim(user["password"]) + "\" /></td>" +
                      "<td><input type=\"text\" name=\"realname" + user["email"] + "\" id=\"realname\" value=\"" + Trim(user["realname"]) + "\" /></td>" +
                      "<td><select name=\"gender" + user["email"] + "\" class=\"field\">" +
                          "<option value=\"" + Trim(user["gender"]) + "\" selected hidden>" + Trim(user["gender"]) + "</option>" +
                          "<option value=\"Male\">Male</option>" +
                          "<option value=\"Female\">Female</option>" +
                          "<option value=\"Other\">Other</option>" +
                      "</select></td>" +
                      "<td><input type=\"text\" name=\"favband" + user["email"] + "\" id=\"favband\" value=\"" + Trim(user["favband"]) + "\" /></td>" +
                      "</tr>";
        }

        string adminTable = "SELECT * FROM [Managers] WHERE NOT email = '" + Session["email"] + "'";
        if (Request.Form["submitsearch"] != null) // if filter is pressed
            if (Request.Form["filtertext"] != "") // if filter is not empty
                adminTable += " AND " + Request.Form["filterby"] + " = '" + Request.Form["filtertext"] + "'";
        
        DataRowCollection admins = DbConn.ExecuteDataTable(adminTable).Rows; // list of admins

        foreach (DataRow admin in admins) // add users to table
        {
            insert += "<tr>" +
                      "<td><input type=\"text\" name=\"email" + admin["email"] + "\" id=\"email\" value=\"" + Trim(admin["email"]) + "\" /></td>" +
                      "<td><input type=\"text\" name=\"username" + admin["email"] + "\" id=\"username\" value=\"" + Trim(admin["username"]) + "\" /></td>" +
                      "<td><input type=\"text\" name=\"password" + admin["email"] + "\" id=\"password\" value=\"" + Trim(admin["password"]) + "\" /></td>" +
                      "<td><input type=\"text\" name=\"realname" + admin["email"] + "\" id=\"realname\" value=\"" + Trim(admin["realname"]) + "\" /></td>" +
                      "<td><select name=\"gender" + admin["email"] + "\" class=\"field\">" + 
                          "<option value=\"" + Trim(admin["gender"]) + "\" selected hidden>" + Trim(admin["gender"]) + "</option>" +
                          "<option value=\"Male\">Male</option>" +
                          "<option value=\"Female\">Female</option>" +
                          "<option value=\"Other\">Other</option>" +
                      "</select></td>" +
                      "<td><input type=\"text\" name=\"favband" + admin["email"] + "\" id=\"favband\" value=\"" + Trim(admin["favband"]) + "\" /></td>" +
                      "</tr>";
        }
    }

    protected void ApplyChanges()
    {
        string usersTable = "SELECT * FROM [Users]";
        if (Request.Form["filtertext"] != "") // if filter is not empty
            usersTable += " WHERE " + Request.Form["filterby"] + " = '" + Request.Form["filtertext"] + "'";

        DataRowCollection users = DbConn.ExecuteDataTable(usersTable).Rows; // list of emails

        foreach (DataRow user in users)
        {
            string email = (string) user["email"];

            if (Trim(Request.Form["email" + email]) == "") // if email field is empty
                DbConn.DoQuery("DELETE FROM [Users] WHERE email = '" + email + "'"); // delete user
            else
                DbConn.DoQuery("UPDATE [Users] SET " + // update user
                               "email = '" + Request.Form["email" + email] + "', " + // email
                               "username = '" + Request.Form["username" + email] + "', " + // username
                               "password = '" + Request.Form["password" + email] + "', " + // password
                               "realname = '" + Request.Form["realname" + email] + "', " + // real name
                               "gender = '" + Request.Form["gender" + email] + "', " + // gender
                               "favband = '" + Request.Form["favband" + email] + "' " + // favorite band
                               "WHERE email = '" + email + "'"); // discriminator
        }

        string adminTable = "SELECT * FROM [Managers] WHERE NOT email = '" + Session["email"] + "'";
        if (Request.Form["filtertext"] != "") // if filter is not empty
            adminTable += " AND " + Request.Form["filterby"] + " = '" + Request.Form["filtertext"] + "'";

        DataRowCollection admins = DbConn.ExecuteDataTable(adminTable).Rows; // list of admins

        foreach (DataRow admin in admins)
        {
            string email = (string) admin["email"];

            if (Trim(Request.Form["email" + email]) == "") // if email field is empty
                DbConn.DoQuery("DELETE FROM [Managers] WHERE email = '" + email + "'"); // delete admin
            else
                DbConn.DoQuery("UPDATE [Managers] SET " + // update admin
                               "email = '" + Request.Form["email" + email] + "', " + // email
                               "username = '" + Request.Form["username" + email] + "', " + // username
                               "password = '" + Request.Form["password" + email] + "', " + // password
                               "realname = '" + Request.Form["realname" + email] + "', " + // real name
                               "gender = '" + Request.Form["gender" + email] + "', " + // gender
                               "favband = '" + Request.Form["favband" + email] + "' " + // favorite band
                               "WHERE email = '" + email + "'"); // discriminator
        }
    }

    protected string Trim(object value) { return value.ToString().Trim(); }
}