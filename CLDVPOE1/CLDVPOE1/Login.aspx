<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CLDVPOE1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="centre">
        <h2>Welcome to KhumaloCraft Emporium.
        <br />
            Login Below</h2>
        <div class="centre">
            <asp:Label runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox runat="server" Text="" ID="txtLoginEmail" />
            <br />
            <br />
            <asp:Label runat="server" Text="Password"></asp:Label><br />
            <%--asp:TextBox runat="server"  Text="" ID="txtLoginPassword"--%>
            <input id="txtLoginPassword" type="password" runat="server" />
            <br />
            <br />
            <asp:Button runat="server" Text="Login!" ID="btnLogin" OnClick="btnLogin_Click" />
            <br />
            New here?
        <asp:HyperLink ID="hlToSignUpPage" runat="server" NavigateUrl="~/SignUp"> Sign Up!</asp:HyperLink>
        </div>
    </div>

    <style>
        .centre {
            margin: auto;
            width: 50%;
            padding: 10px;
        }

        html, body {
            background-color: #FAB170;
            margin: 0;
            padding: 0;
            height: 100%;
        }
    </style>
</asp:Content>
