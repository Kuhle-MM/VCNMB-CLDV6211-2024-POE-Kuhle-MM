<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CLDVPOE1.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2> Welcome to KhumaloCraft Emporium. <br/> Sign Up Below</h2>
     <asp:Label runat="server" Text="Name"></asp:Label>
     <asp:TextBox runat="server" Text="" ID="txtSignUpName" />
     <br />
     <br />
    <asp:Label runat="server" Text="Surname"></asp:Label>
    <asp:TextBox runat="server" Text="" ID="txtSurname" />
    <br />
    <br />
    <asp:Label runat="server" Text="Email"></asp:Label>
    <asp:TextBox runat="server" Text="" ID="txtSignUpEmail" />
    <br />
    <br />
    <asp:Label runat="server" Text="Password"></asp:Label>
    <asp:TextBox runat="server" Text="" ID="txtSignUpPassword" />
    <br />
    <br />
    <asp:Label runat="server" Text="Confirm Password" />
    <asp:TextBox runat="server" Text="" ID="txtSignUpConfirm" />
    <br />
    <br />
    <asp:Button runat="server" Text="Sign Up!" ID="btnSignUp" OnClick="btnSignUp_Click" />
    <br />
    Login instead? 
    <asp:HyperLink ID="hlToLoginPage" runat="server" NavigateUrl="~/Login">Click here!</asp:HyperLink>
</asp:Content>
