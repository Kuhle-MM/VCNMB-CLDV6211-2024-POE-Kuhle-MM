<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyWork.aspx.cs" Inherits="CLDVPOE1.MyWork" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Work</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col">
                    <asp:ImageButton ID="imgLogo" runat="server" ImageUrl="~/Image/Logo.png" Height="58px" Width="67px" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:Image ID="item1" CssClass="img-fluid" ImageUrl="~/Image/item1.jpg" runat="server" Height="100px" Width="150px"/>
                    <h3 class=""></h3>
                    <p></p>
                </div>
                <div class="col-md-4">
                    <asp:Image ID="item2" CssClass="img-fluid" ImageUrl="~/Image/item2.jpg" runat="server" Height="100px" Width="150px" />
                </div>
                <div class="col-md-4">
                    <asp:Image ID="Image3" CssClass="img-fluid" ImageUrl="~/Image/item3.jpg"  runat="server" Height="100px" Width="150px" />
                </div>
            </div>


        </div>


        
    

    </form>
</body>
</html>
