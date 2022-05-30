<%@ Page Title="" Language="C#" MasterPageFile="~/master pages/ContentPages.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" Runat="Server">
    Admin Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
    Admin Page
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="subtitle" Runat="Server">
    Show & Edit Users
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="text" Runat="Server">
    
    <script src="scripts/checkEdit.js"></script>

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
    <a href="FilterPage.aspx" class="right" style="color: #28b075; text-decoration: none;">Filter</a>

</asp:Content>

