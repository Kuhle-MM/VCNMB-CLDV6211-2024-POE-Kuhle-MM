<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerCart.aspx.cs" Inherits="CLDVPOE1.CustomerCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblEmpty" runat="server" Text="No Items in the cart. Browse Art Works to add to cart."></asp:Label>
    <br />
    <br />
    <asp:DataGrid ID="dgCart" runat="server" />
    <br />
    <br />
    <asp:Button ID="btnPurchase" runat="server" OnClick="btnPurchase_Click" Text="Purchase Items" />
    <asp:Button ID="btnClearCart" runat="server" OnClick="btnClearCart_Click" Text="Clear Cart" />


</asp:Content>
