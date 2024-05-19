<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CLDVPOE1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title" >
        <h2 class="h-25" id=="title"><%: Title %>.</h2>
        <div style="background-color:blanchedalmond">
            <h3>Our contact page.</h3>
            <address>
                36 Justin Road<br />
                Broadwood, Gqeberha<br />
                <abbr title="Phone">Phone: </abbr>
                0837115558
            </address>

            <address>
                <strong>Support:</strong>   <a href="mailto:Support@CraftsKhumalo.com">Support@CraftsKhumalo.com</a><br />
                <strong>Marketing:</strong> <a href="mailto:Marketing@CraftsKhumalo.com">Marketing@CraftsKhumalo.com</a>
            </address>
        </div>
    </main>
</asp:Content>

<%-- IAmTimCorey (2018). Intro to Bootstrap in ASP.NET MVC. YouTube. Available at: https://www.youtube.com/watch?v=vRqz_zUiJTw&t=1239s [Accessed 2 Apr. 2024].

‌ --%>