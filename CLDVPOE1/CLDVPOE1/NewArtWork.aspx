<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewArtWork.aspx.cs" Inherits="CLDVPOE1.NewArtWork" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main style="background-color: blanchedalmond">
        <asp:Label ID="lblWarning" Text="You do not have access." runat="server"></asp:Label>
        <div id="divAdd" runat="server">
            <h2>Adding new Art</h2>
            <asp:Label runat="server" Text="Name: "></asp:Label>
            <asp:TextBox runat="server" Text="" ID="txtName" />
            <br />
            <br />
            <asp:Label runat="server" Text="Description: "></asp:Label>
            <asp:TextBox runat="server" Text="" ID="txtDescription" />
            <br />
            <br />
            <asp:Label runat="server" Text="Price: "></asp:Label>
            <asp:TextBox runat="server" Text="" ID="txtPrice" />
            <br />
            <br />
            <asp:Label runat="server" Text="ImageUrl: "></asp:Label>
            <asp:TextBox runat="server" Text="" ID="txtImageUrl" />
            <br />
            <br />
            <asp:Label runat="server" Text="Category: "></asp:Label>
            <asp:TextBox runat="server" Text="" ID="txtCategory" />
            <br />
            <br />
            <asp:Label runat="server" Text="Availability: "></asp:Label>
            <asp:TextBox runat="server" Text="" ID="txtAvailability" />
            <br />
            <br />
            <asp:Button ID="BtnAddProduct" runat="server" Text="Add Art" OnClick="BtnAddProduct_Click" />
        </div>
    </main>

</asp:Content>
