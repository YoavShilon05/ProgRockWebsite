<%@ Page Title="" Language="C#" MasterPageFile="~/master pages/ContentPages.master" AutoEventWireup="true" CodeFile="FilterPage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" Runat="Server">
    Admin Page (Filter)
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
    Admin Page (Filter)
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="subtitle" Runat="Server">
    Show, Edit & Filter Users
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="text" Runat="Server">
    
    <script src="scripts/checkEdit.js"></script>
    
    <!-- filter -->
    <table style="width: 99%" class="middle">
        <tr>
            <td style="width: 15%"><select name="filterby" class="filter-by">
                <option value="email">Email</option>
                <option value="username">Username</option>
                <option value="password">Password</option>
                <option value="realname">Real Name</option>
                <option value="gender">Gender</option>
                <option value="favband">Favorite Band</option>
            </select></td>
            <td><input type="search" name="filtertext" placeholder="search" class="filter-text" /></td>
            <td style="width: 10%"><input type="submit" name="submitsearch" class="submit-filter" value="filter" /></td>
        </tr>
    </table>

    <!-- users table -->
    <table class="unselectable users">
        <tr>
            <th>Email</th>
            <th>Username</th>
            <th>Password</th>
            <th>Real Name</th>
            <th>Gender</th>
            <th>Favorite Band</th>
        </tr>
        <%= insert %>
    </table>

    <!-- TODO check edit -->
    <input type="submit" name="applychanges" class="button" value="Apply Changes"/>
    <a href="AdminPage.aspx" class="right" style="color: #28b075; text-decoration: none;">#NoFilter</a>

</asp:Content>

