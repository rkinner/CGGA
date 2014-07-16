<%@ Page Title="Reservation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title%>.</h1>
        <h2>Tee Time Management System</h2>
    </hgroup>

    
    <article>
        <form action="/About.aspx.cs" method="post">
            <header> 
                <link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
                  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
                  <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
                  <link rel="stylesheet" href="/resources/demos/style.css">
                  <script>
                      $(function () {
                          $("#datepicker").datepicker();
                      });
                  </script>
            </header>
            <div>
                <label for="name">First Name:</label>
                <input type="text" id="name" name="first_name" />
            </div>
            <div>
                <label for="name">Last Name:</label>
                <input type="text" id="Lastname" name="last_name" />
            </div>
            
            <div>
                <label for="mail">E-mail:</label>
                <input type="email" id="mail" name="user_email" />
            </div>
         
            <div>
               <label for="mail">Tee Time Date:</label>
               <input type="text" id="datepicker">
            </div>

            <div>
                <label for="NoOfGuests">No. of Guests</label>
                <select>
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                </select>
            </div>

            <div>
                <label for="msg">Message:</label>
                <textarea id="msg" name="user_message"></textarea>
            </div>
    
            <div class="button">
                <button type="submit" onclick="location.href='google.com'">Reserve your Tee Time</button>
            </div>
        </form>
    </article>

    <aside>
        <h3>Usefull links</h3>
        <p>        
            Click below for fast navigation
        </p>
        <ul>
            <li><a runat="server" href="~/CGGA.aspx">Home</a></li>
            <li><a runat="server" href="~/About.aspx">Reservations</a></li>
            <li><a runat="server" href="~/AboutUs.aspx">About Us</a></li>
            <li><a runat="server" href="~/Contact.aspx">Contact</a></li>
        </ul>
    </aside>
</asp:Content>
