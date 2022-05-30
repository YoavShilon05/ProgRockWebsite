<%@ Page Title="" Language="C#" MasterPageFile="~/master pages/ContentPages.master" AutoEventWireup="true" CodeFile="EditAccount.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" Runat="Server">
    Edit Account Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
    Account
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="subtitle" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="text" Runat="Server">
    
    <script src="scripts/checkEdit.js"></script>
    
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

    <input type="submit" name="applychanges" onclick="return checkEdit()" value="Apply Changes" class="button" />
    <%= msg %>
    <a href="LogOut.aspx" style="color:red;">Log Out</a>
    <h2 style="color: #b32515;" class="top right" id="jsError"></h2>

</asp:Content>