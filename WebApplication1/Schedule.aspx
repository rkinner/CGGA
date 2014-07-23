<%@ Page Title="Schedule" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="WebApplication1.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <article>
        <form action="/Schedule.aspx.cs" method="post">
            <header> 
                <link rel="stylesheet" href="http://localhost:51215/code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
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
                <label>Date:</label>
                <input type="text" id="datepicker" name="date" >
            </div>

            <asp:Button ID ="Submit" 
                Text ="Submit"
                OnClick="Submit_Click"
                runat="server"/>
            <asp:Label ID="GreetingLabel" runat="server" 
                 Visible="false" Text="View your schedule below." />
            <div>
            <asp:Table ID="Table1" runat="server" Visible="false">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Date and Time</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Number of Guests</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Customer Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Customer Email</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
                </div>
        </form>
        
    </article>
</asp:Content>
