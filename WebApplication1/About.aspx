<%@ Page Title="Reservation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title%>.</h1>
        <h2>Tee Time Management System</h2>
    </hgroup>

    <article>
        
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>CalendarView — JavaScript Calendar Widget</title>
    <link rel="stylesheet" href="../stylesheets/calendarview.css">
    <style>
      body {
        font-family: Trebuchet MS;
      }
      div.calendar {
        max-width: 240px;
        margin-left: auto;
        margin-right: auto;
      }
      div.calendar table {
        width: 100%;
      }
      div.dateField {
        width: 140px;
        padding: 6px;
        -webkit-border-radius: 6px;
        -moz-border-radius: 6px;
        color: #555;
        background-color: white;
        margin-left: auto;
        margin-right: auto;
        text-align: center;
      }
      div#popupDateField:hover {
        background-color: #cde;
        cursor: pointer;
      }
    </style>
    <script src="../javascripts/prototype.js"></script>
    <script src="../javascripts/calendarview.js"></script>
    <script>
        function setupCalendars() {
            // Embedded Calendar
            Calendar.setup(
              {
                  dateField: 'embeddedDateField',
                  parentElement: 'embeddedCalendar'
              }
            )
        }
        Event.observe(window, 'load', function () { setupCalendars() })
    </script>
  </head>
  <body>
    <div style="float: left; width: 50%">
      <div style="height: 400px; background-color: #efefef; padding: 10px; -webkit-border-radius: 12px; -moz-border-radius: 12px; margin-right: 10px">
        <h3 style="text-align: center; background-color: white; -webkit-border-radius: 10px; -moz-border-radius: 10px; margin-top: 0px; margin-bottom: 20px; padding: 8px">
          Select your Tee Time Date Below
        </h3>
        <div id="embeddedExample" style="">
          <div id="embeddedCalendar" style="margin-left: auto; margin-right: auto">
          </div>
          <br />
          <div id="embeddedDateField" class="dateField">
            Your Selected Date
          </div>
            
          <br />
        </div>
      </div>
    </div>
  </body>
</html>
    </article>


    <aside>
        <h3>Useful links</h3>
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