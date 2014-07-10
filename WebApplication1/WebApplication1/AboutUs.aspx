<%@ Page Title="Reservation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WebApplication1.AboutUs" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>About Us.</h1>
        <h2>Everything you need to know about CGGA</h2>
    </hgroup>

    <article>
        <h3>CGGA</h3>
        <p>Using the land’s natural contours as a canvas and a fertile imagination as a palette, this meticulously designed course was created with you in mind. Our 18-hole masterpiece pulls in elements from several of the world’s classic courses - some designed a century ago. The layout ingeniously blends its traditional character with endless subtleties for a challenging experience. Mindful of the natural elements and in homage to the game’s storied history, we here at CGGA created a golf course of great integrity and environmental consciousness that seamlessly folds into the terrain, so it appears to have been here forever.
        </p> 
        <h3>PRO SHOP</h3>
        <p>        
            The Pro Shop at Cypress Gardens Golf Academy is fully stocked with a variety of merchandise fit for even the most experienced golfers. We’ve included top-of-the-line Nike and Peter Millar merchandise. Nike club rentals and golf shoe rentals are available. <br /><br />425.555.0100
        </p>
        <h3>PRACTICE RANGE AND PUTTING GREEN</h3>
        <p>        
            The practice range features several target greens, enabling golfers to hone their accuracy with a number of different clubs. There is also a chipping area to fine-tune the short game, and a putting green is maintained in the same condition as the ones on the course.
            The expansive practice range and putting green are included in the Greens Fee.  Guests who would like to experience the golf course but do not have time to play a round, can enjoy the practice facility for a fee.  Proper golf attire is required at all times.
        </p>
        <h3>INDIVIDUAL PRIVATE LESSONS</h3>
        <p>        
            To truly improve your game, we offers a range of private and group golf packages. Benefit from the advantages of private, one-on-one instruction led by one of our trained professionals.
        </p>
        <h3>DRESS CODE</h3>
        <p><strong>MEN</strong> – Shirts with collars and sleeves. Slacks or Bermuda shorts are considered appropriate attire. Tank tops, tee shirts, fishnet tops, cut-offs, sweat pants, warm up suits, blue jeans or denim shorts, tennis shorts, short shorts or other athletic shorts are not permitted.<br /><br /><strong>WOMEN</strong> – Dresses, skirts, mid-length shorts and blouses are considered appropriate attire. Halter tops, tee shirts, fishnet tops, bathing suits, sweat pants, warm up suits, blue jeans or denim shorts, tennis dress, athletic shorts, cut-offs or short shorts are not permitted.<br /><br /><strong>SHOES</strong> – Golf shoes with no metal spikes are required on the golf course. Tennis, soft sole and field shoes are only permitted if approved by the golf shop.<br /><br /><i>Improperly dressed golfers will be asked to change before being allowed to play or practice. The Golf Staff reserves the right to make final decisions on compliance with the dress code policy.</i></p>
    </article>

    <aside>
        <h3>Usefull links</h3>
        <p>        
            Click below for fast navigation
        </p>
        <ul>
            <li><a id="A1" runat="server" href="~/CGGA.aspx">Home</a></li>
            <li><a id="A2" runat="server" href="~/About.aspx">Reservations</a></li>
            <li><a id="A3" runat="server" href="~/AboutUs.aspx">About Us</a></li>
            <li><a id="A4" runat="server" href="~/Contact.aspx">Contact</a></li>
        </ul>
    </aside>
</asp:Content>