<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewArtWork.aspx.cs" Inherits="CLDVPOE1.NewArtWork" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblWarning" Text="You do not have access." runat="server"></asp:Label> 
    <div runat="server">
        <h2>Adding new Art</h2>
        <label runat="server" text="Art Name: "></label>
        <asp:TextBox runat="server" Text="" ID="txtName" />
        <br />
        <br />
         <label runat="server" text="Art Description: "></label>
         <asp:TextBox runat="server" Text="" ID="txtDescription" />
         <br />
         <br />
         <label runat="server" text="Art Price: "></label>
         <asp:TextBox runat="server" Text="" ID="txtPrice" />
         <br />
         <br />
         <label runat="server" text="Art ImageUrl: "></label>
         <asp:TextBox runat="server" Text="" ID="txtImageUrl" />
         <br />
         <br />
        <asp:Button ID="BtnAddProduct" runat="server"   Text="Add Art."                                                              
    </div>
</asp:Content>
