<%@ Page Title="My Work" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyWorkPage.aspx.cs" Inherits="CLDVPOE1.MyWorkPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <asp:Repeater ID="workRepeater" runat="server">
            <ItemTemplate>

                <div class="col-4">
                    <asp:Image runat="server" ImageUrl='<%# Eval("ImageUrl") %>' Height="300" Width="300" />
                    <h3><%# Eval("Name") %></h3>
                    <p>
                        <%# Eval("Description")%><br />
                        ZAR <%# Eval("Price") %><br />
                        <href style="color: gray"><%# Eval("Category") %></href><br />
                        Avail: <%# Eval("Availability") %><br />
                    </p>
                    <asp:Button runat="server" Text="Add To Cart" ID="btnAddToCart" OnCommand="btnAddToCart_Command" OnClick="btnAddToCart_Click" CommandArgument='<%# Eval("artID") %>' />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

<%-- Braintemple Tutorial TV (2018). Bootstrap 4 tutorial 15 adding background image. YouTube. Available at: https://www.youtube.com/watch?v=xbHvjWYDHkg [Accessed 2 Apr. 2024].
     IAmTimCorey (2018). Intro to Bootstrap in ASP.NET MVC. YouTube. Available at: https://www.youtube.com/watch?v=vRqz_zUiJTw&t=1239s [Accessed 2 Apr. 2024].

‌
‌ --%>