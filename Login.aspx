<%@ Page Title="" Language="C#" MasterPageFile="~/master pages/ContentPages.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" Runat="Server">
    Log In
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="title" Runat="Server">
    Log In
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="subtitle" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="text" Runat="Server">

    <div class="form">
        <input type="text" id="username" placeholder="Username" name="username" style="width:49.5%" class="field"/>
        <input type="password" id="password" placeholder="Password" name="password" style="width:49.5%" class="right field"/>

        <a href="AdminLogin.aspx" class="right" style="color: #28b075; text-decoration: none;">Admin Login</a>
        <input name="submit" type="submit" class="button left" value="Log In" />

        <br /><br /><br /><br />
        <div style="text-align: center;" class="middle">
            <%= msg %>
        </div>
    </div>

</asp:Content>