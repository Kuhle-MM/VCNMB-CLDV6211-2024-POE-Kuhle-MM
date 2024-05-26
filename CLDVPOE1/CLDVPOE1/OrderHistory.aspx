<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="CLDVPOE1.OrderHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Order History</h2>
    <asp:DataGrid ID="dgOrders" runat="server" />
    <br />
    <br />
    <asp:Label runat="server" ID="lblOrderUpdate">Select an Order to Update: </asp:Label>
    <asp:DropDownList ID="ddlOrderList" runat="server" />
    <br />
    <br />
    <asp:Label runat="server" ID="lblOrderStatus">Select the Order Status: </asp:Label>
    <asp:DropDownList ID="ddlOrderStatus" runat="server">
        <asp:ListItem Text="Open" />
        <asp:ListItem Text="In Progress" />
        <asp:ListItem Text="Done" />
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button runat="server" ID="btnUpdateOrder" Text="Update Order" OnClick="btnUpdateOrder_Click" />
</asp:Content>
