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
                <input type="text" id="name" name="first_name"  />
            </div>
            <div>
                <label for="name">Last Name:</label>
                <input type="text" id="Lastname" name="last_name"  />
            </div>
            
            <div>
                <label for="mail">E-mail:</label>
                <input type="email" id="mail" name="user_email" />
            </div>
         
            <div>
               <label for="mail">Date:</label>
               <input type="text" id="datepicker" name="date" >
            </div>

            <%--<div>
                <label>Time:</label>
                <asp:DropDownList ID="DropDownList1" runat="server"  >
                    <asp:ListItem>Morning 7:30am-10:00am</asp:ListItem>
                    <asp:ListItem>Mid-Day 10:00am-2:00pm</asp:ListItem>
                    <asp:ListItem>Twilight after 2:00pm</asp:ListItem>
                </asp:DropDownList>
            </div>--%>

            <div>
                <label>Time:</label>
                <asp:DropDownList ID="DropDownList2" runat="server" >
                  
                </asp:DropDownList>
            </div>

            <div>
                <label for="NoOfGuests">No. of Guests </label>
                <asp:DropDownList ID="NoGuests"  runat="server">
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
