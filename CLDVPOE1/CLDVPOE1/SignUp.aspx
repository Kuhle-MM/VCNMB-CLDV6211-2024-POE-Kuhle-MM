<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CLDVPOE1.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="centre">

        <h2>Welcome to KhumaloCraft Emporium.
        <br />
            Sign Up Below</h2>

        <div class="centre">
            <asp:Label runat="server" Text="Name"></asp:Label><br />
            <asp:TextBox runat="server" Text="" ID="txtSignUpName" />
            <br />
            <br />
            <asp:Label runat="server" Text="Surname"></asp:Label><br />
            <asp:TextBox runat="server" Text="" ID="txtSurname" />
            <br />
            <br />
            <asp:Label runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox runat="server" Text="" ID="txtSignUpEmail" />
            <br />
            <br />
            <asp:Label runat="server" Text="Password"></asp:Label><br />
            <asp:TextBox runat="server" Text="" ID="txtSignUpPassword" />
            <br />
            <br />
            <asp:Label runat="server" Text="Confirm Password" /><br />
            <asp:TextBox runat="server" Text="" ID="txtSignUpConfirm" />
            <br />
            <br />
            <asp:Button runat="server" Text="Sign Up!" ID="btnSignUp" OnClick="btnSignUp_Click" />
            <br />
            Login instead? 
            <asp:HyperLink ID="hlToLoginPage" runat="server" NavigateUrl="~/Login">Click here!</asp:HyperLink>
        </div>
    </div>
    <style>
        html, body {
            background-color: #FAB170;
            margin: 0;
            padding: 0;
            height: 100%;
        }

        .centre {
            margin: auto;
            width: 50%;
            padding: 10px;
        }
    </style>
</asp:Content>
