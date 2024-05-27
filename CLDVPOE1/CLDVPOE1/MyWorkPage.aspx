<%@ Page Title="My Work" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyWorkPage.aspx.cs" Inherits="CLDVPOE1.MyWorkPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Repeater ID="CategoryRepeater" runat="server" OnItemDataBound="CategoryRepeater_ItemDataBound">
        <ItemTemplate>
            <div class="category-section" >
                <h2 class="category-title" style="background-color:antiquewhite"><%# Eval("CategoryName") %></h2>
                <div class="row">

                    <asp:Repeater ID="workRepeater" runat="server">
                        <ItemTemplate>
                            <div class="col-4">
                                <asp:Image runat="server" ImageUrl='<%# Eval("ImageUrl") %>' Height="300" Width="300" />
                                <h3><%# Eval("Name") %></h3>
                                <p>
                                    Description: <%# Eval("Description")%><br />
                                    Price: ZAR <%# Eval("Price") %><br />
                                    Category: <a href="#" style="color: gray"><%# Eval("Category") %></a><br />
                                    Availability: <%# Eval("Availability") %><br />
                                </p>
                                <asp:Button runat="server" Text="Add To Cart" ID="btnAddToCart" OnCommand="btnAddToCart_Command" OnClick="btnAddToCart_Click" CommandArgument='<%# Eval("artID") %>' />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <style>
        .category-section {
            margin-bottom: 20px;
        }

        .category-title {
            font-size: 24px;
            font-weight: bold;
        }

        .image-list {
            display: flex;
            flex-wrap: wrap;
        }

        .image-item {
            margin: 5px;
        }
    </style>
</asp:Content>

<%-- Braintemple Tutorial TV (2018). Bootstrap 4 tutorial 15 adding background image. YouTube. Available at: https://www.youtube.com/watch?v=xbHvjWYDHkg [Accessed 2 Apr. 2024].
     IAmTimCorey (2018). Intro to Bootstrap in ASP.NET MVC. YouTube. Available at: https://www.youtube.com/watch?v=vRqz_zUiJTw&t=1239s [Accessed 2 Apr. 2024].

‌
‌ --%>