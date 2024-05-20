<%@ Page Title="My Work" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyWorkPage.aspx.cs" Inherits="CLDVPOE1.MyWorkPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="column">
            <asp:Repeater ID="workRepeater" runat="server">
                <ItemTemplate>
                    <div class="column">
                        <h2><%# Eval("Name") %></h2>
                        <asp:Image runat="server" ImageUrl="<%# Eval("ImageUrl") %>" Height="150" Width="150" />
                        <p>
                            <%# Eval("Description")%>
                        </p>
                        <p>
                            R<%# Eval("Price") %>
                        </p>
                        <asp:Button runat="server" Text="Add To Cart" ID="btnAddToCart" OnClick="btnAddToCart_Click" CommandArgument='<%# Eval("WorkID") %>' />
                    </div>
                    
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>




</asp:Content>

<%-- Braintemple Tutorial TV (2018). Bootstrap 4 tutorial 15 adding background image. YouTube. Available at: https://www.youtube.com/watch?v=xbHvjWYDHkg [Accessed 2 Apr. 2024].
     IAmTimCorey (2018). Intro to Bootstrap in ASP.NET MVC. YouTube. Available at: https://www.youtube.com/watch?v=vRqz_zUiJTw&t=1239s [Accessed 2 Apr. 2024].

‌
‌ --%>