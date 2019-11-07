<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="Milestone_1_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 159px;
            height: 150px;
            border-width: 0px;
        }
        .auto-style2 {
            width: 390px;
        }
        .auto-style3 {
            width: 637px;
        }
        .auto-style4 {
            width: 42px;
            height: 44px;
        }
        .auto-style5 {
            width: 100%;
            height: 145px;
        }
        .auto-style6 {
            width: 175px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style9 {
            width: 390px;
            text-align: center;
        }
        .auto-style14 {
            width: 342px;
            height: 80px;
        }
        .auto-style17 {
            width: 14px;
            text-align: center;
            height: 23px;
        }
        .auto-style18 {
            width: 342px;
            text-align: center;
            height: 23px;
        }
        .auto-style19 {
            height: 23px;
        }
        .auto-style21 {
            height: 23px;
            text-align: center;
        }
        .auto-style22 {
            width: 1424px;
            height: 890px;
        }
        .auto-style23 {
            width: 81px;
            height: 23px;
        }
        .auto-style24 {
            width: 476px;
            height: 218px;
        }
        .auto-style25 {
            width: 409px;
            height: 443px;
        }
        .auto-style26 {
            width: 420px;
            height: 369px;
        }
        .auto-style27 {
            width: 100%;
        }
        .auto-style28 {
            width: 476px;
            height: 426px;
        }
        .auto-style30 {
            width: 342px;
            height: 23px;
        }
        .auto-style31 {
            width: 14px;
            height: 23px;
        }
        .auto-style32 {
            width: 497px;
            height: 521px;
        }
        .auto-style33 {
            height: 585px;
        }
        .auto-style34 {
            width: 411px;
            height: 526px;
        }
        .auto-style35 {
            height: 585px;
            width: 421px;
        }
        .auto-style36 {
            height: 585px;
            width: 514px;
        }
        .auto-style37 {
            width: 368px;
            height: 336px;
            float: left;
        }
        .auto-style38 {
            width: 475px;
            height: 444px;
            float: left;
        }
        .auto-style40 {
            height: 23px;
            text-align: left;
        }
        .auto-style42 {
            height: 36px;
        }
        .auto-style44 {
            width: 99%;
        }
        .auto-style45 {
            width: 30px;
            height: 37px;
        }
        .auto-style46 {
            width: 50px;
            height: 36px;
        }
        .auto-style47 {
            width: 55px;
            height: 37px;
        }
        .auto-style48 {
            width: 75px;
            height: 33px;
        }
        .auto-style50 {
            height: 36px;
            width: 669px;
            text-align: left;
        }
        .auto-style51 {
            height: 23px;
            width: 669px;
            text-align: left;
        }
        .auto-style52 {
            width: 669px;
            height: 137px;
        }
        .auto-style53 {
            width: 230px;
            height: 137px;
        }
        .auto-style54 {
            height: 36px;
            width: 230px;
            text-align: left;
        }
        .auto-style55 {
            height: 23px;
            width: 230px;
            text-align: left;
        }
        .auto-style56 {
            width: 669px;
            text-align: left;
        }
        .auto-style57 {
            width: 230px;
            text-align: left;
        }
        .auto-style59 {
            text-align: left;
            height: 137px;
        }
        .auto-style60 {
            text-align: center;
            font-size: large;
        }
        .auto-style61 {
            height: 298px;
            width: 201px;
        }
        .auto-style62 {
            text-align: center;
            height: 298px;
        }
        .auto-style63 {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style64 {
            width: 201px;
            height: 80px;
        }
        .auto-style65 {
            width: 201px;
            height: 23px;
        }
        .auto-style66 {
            height: 43px;
        }
        .auto-style67 {
            height: 43px;
            width: 669px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="StyleSheetPersistant.css"/>
    <link rel="alternate stylesheet" type="text/css" href="StyleSheetAlternate.css" title="darkmode"/>
    <link rel="stylesheet" type="text/css" href="StyleSheetPreferred1.css" title="preferred" />
</head>
   
<body>
    <form id="form1" runat="server">
      <div>
            Search By Product Category:<br />
            <asp:DropDownList ID="Category" runat="server" DataSourceID="SqlDataSource1" DataTextField="TypeDemographic" DataValueField="TypeDemographic" >
            </asp:DropDownList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalDatabase1ConnectionString_Search %>" ProviderName="<%$ ConnectionStrings:FinalDatabase1ConnectionString_Search.ProviderName %>" SelectCommand="SELECT DISTINCT [TypeDemographic], [TypeStyle] FROM [Product]"></asp:SqlDataSource>
            <br />
        </div>
        <br />
        <asp:Button name= "btnSubmit" ID="btnsubmit" runat="server" Text="Search" value ="Search" />
    </form>
     
        
            <table class="auto-style5">
                <tr>
                    <td class="auto-style9"><a href="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/index.aspx">
                        
                        <img alt="" class="auto-style1" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/1200px-SNice.svg.png" /></a><br />
                    </td>
                    <td class><h2>
                         Men&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Women&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kids</h2></td>
                    <td class="auto-style6">
                        <img alt="" class="auto-style4" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/shopping-cart-1901584__340.png" /></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
        
        <p class="auto-style7">
            <img alt="" class="auto-style22" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/large_image_woman_indexpg1.jpg" /></p>
    </form>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p class="auto-style7"> <h4 class="auto-style60"> Featured Products</h4>
       </p>
    <table class="auto-style27">
        <tr>
            <td class="auto-style23">
                <img alt="" class="auto-style24" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/Boys_Casual_1.jpg" /></td>
            <td class="auto-style18">
                <img alt="" class="auto-style26" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/Boys_Sport_1.jpg" /></td>
            <td class="auto-style17">
                <img alt="" class="auto-style25" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/Girl_Casual_1.jpg" /></td>
            <td class="auto-style17">
                <img alt="" class="auto-style28" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/Men_Sport_1.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style14">Women SpicyShades</td>
            <td class="auto-style14">Men Spicy Shades</td>
            <td class="auto-style14">Girl Spicy Shades</td>
            <td class="auto-style14">Old Men Spicy Shades</td>
        </tr>
        <tr>
            <td class="auto-style23">$9</td>
            <td class="auto-style30">$9</td>
            <td class="auto-style31">$12</td>
            <td class="auto-style31">$38</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style35">
                <img alt="" class="auto-style34" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/womens-sunglasses-cateye.jpg" /></td>
            <td class="auto-style33"><h4>Women</h4>
                <br />
                By Trend<br />
                <br />
                By Shape<br />
                <br />
                By Style<br />
                <br />
                By Frame Type<br />
                <br />
                <br />
            </td>
            <td class="auto-style36">
                <img alt="" class="auto-style32" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/man_sortby_image1.jpg" /></td>
            <td class="auto-style33"><h4>Men</h4>
                <br />
                By Shape<br />
                <br />
                By Style<br />
                <br />
                By Frame Type<br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p class="auto-style7"><h4 class="auto-style60">New Arrivals</h4>
        </p>
    <table class="auto-style63">
        <tr>
            <td class="auto-style61">
                <img alt="" class="auto-style38" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/Womens_Sport_2.jpg" /></td>
            <td class="auto-style62">
                <img alt="" class="auto-style37" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/Men_Sport_2.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style64">Grandma Spicy Glasses</td>
            <td class="auto-style14">Gentlemen Spicy Shades</td>
        </tr>
        <tr>
            <td class="auto-style65">$1</td>
            <td class="auto-style23">$18</td>
        </tr>
    </table>


    <table class="auto-style44">
        <tr> <h3>
            <td class="auto-style53">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style52"></td>
            <td class="auto-style59"></td>
        </tr>
        <tr>
            <td class="auto-style66"><h3>Navigate</h3></td>
            <td class="auto-style67"><h3>Our Categories</h3></td>
            <td class="auto-style66"><h3>Connect With Us</h3></td>

                                                
        </tr>
        <tr>
            <td class="auto-style54"><h3>About Us</h3></td>
            <td class="auto-style50">New</td>
            <td class="auto-style42">
                <img alt="" class="auto-style45" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/facebook.png" />&nbsp;&nbsp;
                <img alt="" class="auto-style46" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/instagram.png" />&nbsp;&nbsp;
                <img alt="" class="auto-style47" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/youtube.png" />&nbsp;&nbsp;
                <img alt="" class="auto-style48" src="http://ch-323-server.dyn.wichita.edu/techfive/Milestone%201/Images/twitter.png" />&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style55"><h3>FAQs</h3></td>
            <td class="auto-style51">Women</td>
            <td class="auto-style40">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style57"><h3>Privacy Policy</h3></td>
            <td class="auto-style56">Men</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style57"><h3>Shipping &amp; Returns</h3></td>
            <td class="auto-style56">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style55"><h3>Contact Us</h3></td>
            <td class="auto-style51">&nbsp;
            </td>
            <td class="auto-style19"></td>
       </tr> 
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
  
</body>
<!-- #include file = "test.inc" -->
</html>
