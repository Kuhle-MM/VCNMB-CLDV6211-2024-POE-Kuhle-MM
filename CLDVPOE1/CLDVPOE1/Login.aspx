<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CLDVPOE1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2> Welcome to KhumaloCraft Emporium. <br/> Login Below</h2>
    <asp:Label runat="server" Text="Email"></asp:Label>
    <asp:TextBox runat="server" Text="" ID="txtLoginEmail" />
    <br />
    <br />
    <asp:Label runat="server" Text="Password"></asp:Label>
    <asp:TextBox runat="server" Text="" ID="txtLoginPassword" />
    <br />
    <br />
    <asp:Button runat="server" Text="Login!" ID="btnLogin" OnClick="btnLogin_Click" />
    <asp:HyperLink ID="hlToSignUpPage" runat="server" NavigateUrl="~/SignUp">New here? Sign Up!</asp:HyperLink>
</asp:Content>
