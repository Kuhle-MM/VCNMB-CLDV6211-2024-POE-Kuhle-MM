<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewArtWork.aspx.cs" Inherits="CLDVPOE1.NewArtWork" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main style="background-color: #FAB170">
        <div class="centre">
            <asp:Label ID="lblWarning" Text="You do not have access." runat="server"></asp:Label>
            <div id="divAdd" runat="server">
                <h2>Adding new Art</h2>
                <div class="centre">
                    <asp:Label runat="server" Text="Name: "></asp:Label><br />
                    <asp:TextBox runat="server" Text="" ID="txtName" />
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Description: "></asp:Label><br />
                    <asp:TextBox runat="server" Text="" ID="txtDescription" />
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Price: "></asp:Label><br />
                    <asp:TextBox runat="server" Text="" ID="txtPrice" />
                    <br />
                    <br />
                    <asp:Label runat="server" Text="ImageUrl: "></asp:Label><br />
                    <asp:TextBox runat="server" Text="" ID="txtImageUrl" />
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Category: "></asp:Label><br />
                    <asp:TextBox runat="server" Text="" ID="txtCategory" />
                    <br />
                    <br />
                    <asp:Label runat="server" Text="Availability: "></asp:Label><br />
                    <asp:TextBox runat="server" Text="" ID="txtAvailability" />
                    <br />
                    <br />
                    <asp:Button ID="BtnAddProduct" runat="server" Text="Add Art" OnClick="BtnAddProduct_Click" />
                </div>
            </div>
        </div>
    </main>
    <style>
        html, body {
            background-color: #FAB170;
            margin: 0;
            padding: 0;
            height: 100%;
        }
    </style>
</asp:Content>


