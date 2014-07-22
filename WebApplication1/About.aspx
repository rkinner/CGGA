<%@ Page Title="Reservations" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

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
               <input type="text" id="datepicker" name="date">
            </div>

            <div>
            </div>

            <div>
                <label for="NoOfGuests">No. of Guests</label>
                <asp:DropDownList ID="NoGuests" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
            </div>

            <asp:Button ID ="Submit" 
                Text ="Submit"
                OnClick="Submit_Click"
                runat="server"/>
            <asp:Label ID="GreetingLabel" runat="server" 
                 Visible="false" Text="Thank you for reserving a tee time with us!" />

 
     </form>
        </article>
</asp:Content>
