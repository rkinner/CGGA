<%@ Page Title="Reservation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WebApplication1.AboutUs" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>About Us.</h1>
        <h2>Everything you need to know about CGGA</h2>
    </hgroup>
   <article>
       <h3>Tee Time Rates</h3>
       <asp:DropDownList ID="Dates" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem>12/26 - 5/31</asp:ListItem>
            <asp:ListItem>6/1 - 9/15</asp:ListItem>
            <asp:ListItem>9/16 - 12/24</asp:ListItem>
       </asp:DropDownList>
       <asp:Table ID="Table1" runat="server">
           <asp:TableHeaderRow ID="row1">
               <asp:TableHeaderCell></asp:TableHeaderCell>
               <asp:TableHeaderCell>MON-THU</asp:TableHeaderCell>
               <asp:TableHeaderCell>FRI-SUN</asp:TableHeaderCell>
           </asp:TableHeaderRow>
           <asp:TableRow ID="row2">
               <asp:TableCell>Morning Rates 7:30am-10:00am</asp:TableCell>
               <asp:TableCell runat="server"></asp:TableCell>
               <asp:TableCell runat="server"></asp:TableCell>
           </asp:TableRow>
           <asp:TableRow ID="row3">
               <asp:TableCell >Mid-Day Rates 10:00am-2:00pm</asp:TableCell>
               <asp:TableCell runat="server"></asp:TableCell>
               <asp:TableCell runat="server"></asp:TableCell>
           </asp:TableRow>
           <asp:TableRow ID="row4">
               <asp:TableCell>Twilight Rates after 2:00pm</asp:TableCell>
               <asp:TableCell runat="server"></asp:TableCell>
               <asp:TableCell runat="server"></asp:TableCell>
           </asp:TableRow>
       </asp:Table>
   </article>
        
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

</asp:Content>