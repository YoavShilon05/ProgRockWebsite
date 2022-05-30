<%@ Page Title="" Language="C#" MasterPageFile="~/master pages/ContentPages.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" Runat="Server">
    Admin Log In
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
    Log In as Admin
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="subtitle" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="text" Runat="Server">
    
    <div class="form">
        <input type="text" id="username" placeholder="Username" name="username" class="unselectable field" style="width:49.5%" />
        <input type="password" id="password" placeholder="Password" name="password" class="unselectable right field" style="width:49.5%" />

        <a href="Login.aspx" class="right" style="color: #28b075; text-decoration: none;">User Login</a>
        <input name="submit" type="submit" class="unselectable left button" value="Log In" />

        <br /><br /><br /><br />
        <div style="text-align: center;" class="middle">
            <%= msg %>
        </div>
    </div>

</asp:Content>

