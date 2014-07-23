<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>We would love to hear from you.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Pro Shop:</span>
            <span>425.555.0100</span>
        </p>
        <p>
            <span class="label">Reservations:</span>
            <span>425.555.0199</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email Us:</h3>
        </header>
        <p>
            <span class="label">Pro Shop:</span>
            <span><a href="mailto:proshop@cypressgardens.com">ProShop@cypressgardens.com</a></span>
        </p>
        <p>
            <span class="label">Reservations:</span>
            <span><a href="mailto:reservations@cypressgardens.com">Reservations@cypressgardens.com</a></span>
        </p>
        <p>
            <span class="label">Customer Care:</span>
            <span><a href="mailto:customercare@cypressgardens.com">CustomerCare@cypressgardens.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            100 Cypress Gardens Avenue<br />
            Orlando, FL 34747
        </p>
    </section>
</asp:Content>