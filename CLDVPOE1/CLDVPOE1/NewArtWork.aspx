<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewArtWork.aspx.cs" Inherits="CLDVPOE1.NewArtWork" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblWarning" Text="You do not have access." runat="server"></asp:Label>
    <div id="divAdd" runat="server">
        <h2>Adding new Art</h2>
        <asp:label runat="server" text="Name: "></asp:label>
        <asp:TextBox runat="server" Text="" ID="txtName" />
        <br />
        <br />
        <asp:label runat="server" text="Description: "></asp:label>
        <asp:TextBox runat="server" Text="" ID="txtDescription" />
        <br />
        <br />
        <asp:label runat="server" text="Price: "></asp:label>
        <asp:TextBox runat="server" Text="" ID="txtPrice" />
        <br />
        <br />
        <asp:label runat="server" text="ImageUrl: "></asp:label>
        <asp:TextBox runat="server" Text="" ID="txtImageUrl" />
        <br />
        <br />
        <asp:label runat="server" text="Category: "></asp:label>
        <asp:TextBox runat="server" Text="" ID="txtCategory" />
        <br />
        <br />
        <asp:label runat="server" text="Availability: "></asp:label>
        <asp:TextBox runat="server" Text="" ID="txtAvailability" />
        <br />
        <br />
        <asp:Button ID="BtnAddProduct" runat="server" Text="Add Art" OnClick="BtnAddProduct_Click" />
    </div>
</asp:Content>
