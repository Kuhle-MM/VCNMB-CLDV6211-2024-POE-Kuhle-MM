<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CLDVPOE1._Default" %>

<asp:Content class="whole-page" ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="whole-page image-container">

        <asp:Image CssClass="whole-page" runat="server" src="https://images.pexels.com/photos/9982090/pexels-photo-9982090.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" />
        <div class="dark-filter"></div>
        <section class="bottom-section">
            <h3 style="color: white">Welcome to KhumaloCraft Emporium!</h3><br />
            <p style="color: white">
                The centre for the greatest artisans from all over the world. Explore and get what you like.
            </p>
        </section>
    </div>
    <div>

    </div>

    <%--<main style="background-color: #FAB170" class="whole-page">--%>








    <%--<section class="row centre" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle" style="color: black">KhumaloCraft Emporium</h1>
            <p class="lead">The only pottery Artisan stop you'll ever need</p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="homeMyWork">
                <h2 >My Work</h2>
                <p>
                    Get to know me through my work. 
                </p>
                <p>
                    <a class="btn btn-default" href="MyWorkPage.aspx">My Work &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">Other libraries</h2>
                <p>
                    Coming Soon...
                </p>

            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Get To know James Khumalo</h2>
                <p>
                    I am a very humble entrepreneur, who is amongst the best in the world in of pottery and no one can compete with my art. I used to play with mud from a very 
                    tender age. Who knew my mothers modest James would be pushing boundaries and exceeding expectations to become a global leader.
                </p>
                <p>
                    <a class="btn btn-default" href="About.aspx">Learn more about me &raquo;</a>
                </p>
            </section>
        </div>--%>
    <%--    </main>--%>
    <style>
        html, body {
            background-color: #FAB170;
            margin: 0;
            padding: 0;
            height: 100%;
        }

        .whole-page {
            width: 100%;
            height: 90vh;
            position: relative; /* Add position relative */
        }

        .image-container {
            width: 100%;
            height: 90vh;
            overflow: hidden;
            position: relative; /* Add position relative */
        }

        .dark-filter {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.3);
            z-index: 1; /* Ensure the overlay is above the image */
        }

        .bottom-section {
            margin: 20px;
            position: absolute;
            bottom: 0;
            padding-bottom:50px;
            width: 100%;
            z-index: 2; /* Ensure the text is above the overlay */
        }
    </style>
</asp:Content>

<%-- IAmTimCorey (2018). Intro to Bootstrap in ASP.NET MVC. YouTube. Available at: https://www.youtube.com/watch?v=vRqz_zUiJTw&t=1239s [Accessed 2 Apr. 2024].

‌ --%>