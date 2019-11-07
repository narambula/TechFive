<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ChangeInfo.aspx.vb" Inherits="Milestone_2_ChangePassword" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 

   
     <meta name="viewport" content="width=device-width, initial-scale=1" />
      <link rel="stylesheet" type="text/css" href="StyleSheetPersistant.css"/>
    <link rel="alternate stylesheet" type="text/css" href="StyleSheetAlternate.css" title="darkmode"/>
    <link rel="stylesheet" type="text/css" href="StyleSheetPreferred1.css" title="preferred" />
  <meta charset="utf-8" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 159px;
            height: 150px;
            border-width: 0px;
            float: left;
        }
          
  .panel-footer {
    background-color: white !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #f4511e;
    color: #fff;
  }
        .auto-style2 {
            width: 357px;
            height: 621px;
        }
        .auto-style3 {
            width: 637px;
            text-align: center;
            height: 621px;
        }
        .auto-style5 {
            width: 100%;
            height: 1412px;
        }
        .auto-style9 {
            width: 357px;
            text-align: center;
            height: 77px;
        }
        .auto-style68 {
            height: 77px;
            width: 637px;
        }
        .auto-style72 {
            height: 77px;
            width: 637px;
            text-align: right;
        }

       

.row::after {
  content: "";
  clear: both;
  display: table;
}

[class*="col-"] {
  float: left;
  padding: 15px;
}




        .auto-style73 {
            height: 20px;
        }




 </style>
 

  </head>
<body>
   

    <form id="form1" runat="server">
        <!--#include file ="NavbarCustomer.inc"-->

        <br />
       <div>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style9"> </td>
                    <td class="auto-style72" </td>
                               
                      
                                <table style="width:100%;">
                                    <tr>
                                        <td class="auto-style73"></td>
                                        <td class="auto-style73">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource4">
                                                <Columns>
                                                    <asp:CommandField ShowEditButton="True" />
                                                    <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                                                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                                    <asp:BoundField DataField="StreetAddress" HeaderText="StreetAddress" SortExpression="StreetAddress" />
                                                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                                    <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FinalDatabase1ConnectionString_EditInfo %>" ProviderName="<%$ ConnectionStrings:FinalDatabase1ConnectionString_EditInfo.ProviderName %>" SelectCommand="SELECT email, FirstName, LastName, [password], StreetAddress, City, State, Zip FROM UserID WHERE email = ?" UpdateCommand="UPDATE UserID SET FirstName = aa, LastName = bb, [password] = dd, StreetAddress = ee, City = ff, State = gg, Zip = hh Where email = ?">
                                    <SelectParameters>
                                        <asp:SessionParameter DefaultValue="N/A" Name="?" SessionField="sesEmail" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <a href="Profile.aspx">[Back to Profile]</a><br />
                            </div>

                              
                              
                                
                        </td>
                    <td class="auto-style68"></td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style3">
                        </td>
                    <td class="auto-style3">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style68">&nbsp;</td>
                    <td class="auto-style68">
                        &nbsp;</td>
                    <td class="auto-style68">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style3">
         
                        &nbsp;</table>
       
        
     
   
        <br />
        <br />
        <br />
        <div class="active" style="background-color: #CCCCCC; text-align: left; word-spacing: normal; text-indent: inherit; padding-top: 52px; padding-right: 52px; padding-left: 52px;">
            <h2 class="text-sm-left">CONTACT</h2>
            <div class="row">
                <div class="col-sm-5">
                    <p>
                          Have questions regarding your order? Please fill out the form and we will get back to you within 24 hours.</p>
                    <p>
                        <span class="glyphicon glyphicon-map-marker"></span> Wichita, US</p>
                    <p>
                        <span class="glyphicon glyphicon-phone"></span> +1 316.293.2819</p>
                    <p>
                        <span class="glyphicon glyphicon-envelope"></span> CustomerSupport@ICTWichita.com</p>
            
                      
                   
                </div>
                <div class="col-sm-7">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <input id="name" class="form-control" name="name" placeholder="Name"  type="text" />
                        </div>
                        <div class="col-sm-6 form-group">
                            <input id="email" class="form-control" name="email" placeholder="Email" type="email" />
                        </div>
                    </div>
                    <textarea id="comments" class="form-control" cols="20" name="comments" placeholder="Comment" rows="5"></textarea>
                                        
                    <div class="row">
                        <div class="col-sm-12 form-group" style="left: 0px; top: 0px">
                            <button class="btn btn-default pull-right" type="submit">
                                Send</button>
                            </div>  
                            </div>     
                        
  </div>
        </div>
              </div>
       
    </form>
</body>
          
               <!-- #include file = "test.inc" -->    
</html>
