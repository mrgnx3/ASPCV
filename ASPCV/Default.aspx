<%@ Page Title="ASP.CV" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPCV._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1><%: Title %></h1>
        <p class="lead">APS.CV is a free tool where users can upload working code for potential employers to view.</p>
        <p><a href="/Account/Register" class="btn btn-primary btn-lg">Get Started Now</a></p>
    </div>

    <!-- For mobile devices the jumbotron will be removed and mobile-header will replace it for better fit-->
    <div class="mobile-header">
        <h1><%: Title %></h1>
        <p class="lead">APS.CV is a free tool where users can upload working code for potential employers to view.</p>
        <p><a href="/Account/Register" class="btn btn-primary btn-lg">Get Started Now</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Create A Portfolio</h2>
            <p>
                With ASP.CV you can create a personal portfolio that can be updated at the click of a button. With our slick design interviwers will never find the process of viewing your work a chore.
            </p>
            <p>
                <a class="btn btn-default" href="/Account/Login">Get Started now or login to update your Portfolio</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Inform Potential Employers Of Your Accomplishments</h2>
            <p>
                When you finish a college project or personal piece of work upload it to your personal <i>Portfolio</i> so that potential employers can see your work.
            </p>
            <p>
                <a class="btn btn-default" href="http://readwrite.com/2013/04/09/15-programming-skills-most-coveted-by-employers">What are employers looking for in my code?</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Premium Service</h2>
            <p>
                While this is a free service, we aspire to bring a complete package including web hosting in the not too distant future. Any and all donations are much appreciated and will go towards cementing <i>ASP.CV</i> as a premium service for job seekers. 
            </p>
            <p>
                <a class="btn btn-default" href="/DonationsPage">Donate here</a>
            </p>
        </div>
    </div>

</asp:Content>
