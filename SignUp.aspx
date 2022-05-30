<%@ Page Title="" Language="C#" MasterPageFile="~/master pages/ContentPages.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" Runat="Server">
    Sign Up
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="title" Runat="Server">
    Create an account
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="subtitle" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="text" Runat="Server">

    <script src="scripts/checkReg.js"></script>

    <%= msg %>
    <h2 style="color: #b32515;" class="top right" id="jsError"></h2>

    <div class="unselectable form">
        <input type="email" name="email" id="email" placeholder="email" class="field" />
        <input type="text" style="width: 49.5%" name="username" id="username" placeholder="username" class="field" />
        <input type="text" style="width: 49.5%" name="realname" id="realname" placeholder="real name" class="right field" />
        <input type="password" style="width: 49.5%" name="password" id="password" placeholder="password" class="field" />
        <input type="password" style="width: 49.5%" id="confirmpassword" placeholder="confirm password" class="right field" />
        
        <input type="text" style="width: 49.5%" name="favorite band" id="favband" placeholder="Pink Floyd" class="field" />

        <ul class="top right gender" style="width: 49.5%">
          <li>
            <input type="radio" id="male" value="Male" name="gender" />
            <label for="male">Male</label>
          </li>
          <li>
            <input type="radio" id="female" value="Female" name="gender" />
            <label for="female">Female</label>
          </li>
          <li>
            <input type="radio" id="other" value="Other" name="gender" checked />
            <label for="other">Other</label>
          </li>
        </ul>

        <br />
        <input type="submit" name="CreateAccount" onclick="return checkReg()" class="button left" value="Create Account" />
        <br />
        <a href="Login.aspx" class="right">Log In</a>
    </div>

</asp:Content>

