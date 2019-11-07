<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CategorySearch.aspx.vb" Inherits="Milestone_2_CategorySearch" %>

--<!DOCTYPE html>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<%--    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <table id="tblGrid" runat="server" visible="false"  > 
               <tr> 
                   <td>
            <asp:GridView ID="GridView_Data" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-style1" DataKeyNames="TypeDemographic" >
                <Columns>
                    <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" ReadOnly="True" />
                    <asp:BoundField DataField="P_Name" HeaderText="P_Name" SortExpression="P_Name" />
                    <asp:BoundField DataField="TypeDemographic" HeaderText="TypeDemographic" SortExpression="TypeDemographic" />
                    
                </Columns>
                  <FooterStyle BackColor="#CCCCCC" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#33BBFF" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#3399FF" ForeColor="White" />
                        <EmptyDataRowStyle Height="10px" />   
            </asp:GridView>
        </td>
                       </tr>
                </table>
     </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_CategorySearch1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString_CategorySearch1.ProviderName %>" SelectCommand="SELECT DISTINCT [Product_ID], [P_Name], [TypeDemographic] FROM [Product]"></asp:SqlDataSource>
    </form>
</body>
</html>

'hunter's code--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <table id="tblGrid" runat="server" visible="false"  > 
               <tr> 
                   <td>
            <asp:GridView ID="GridView_Data" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-style1" DataKeyNames="TypeDemographic" >
                <Columns>
                    <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" ReadOnly="True" />
                    <asp:BoundField DataField="P_Name" HeaderText="P_Name" SortExpression="P_Name" />
                    <asp:BoundField DataField="TypeDemographic" HeaderText="TypeDemographic" SortExpression="TypeDemographic" />
                    <asp:BoundField DataField="TypeStyle" HeaderText="TypeStyle" SortExpression="TypeStyle" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:ImageField DataImageUrlField="Picture" HeaderText="Picture">
                            </asp:ImageField>

                    
                    <asp:HyperLinkField DataNavigateUrlFields="Product_ID,P_Name,TypeDemographic,Price" DataNavigateUrlFormatString="cart.aspx?Product_ID={0}&P_Name={1}&TypeDemographic={2}&Price={3}" HeaderText="U want sum?" NavigateUrl="http://localhost:61875/Milestone%202/Cart.aspx" Text="Add To Cart" />

                    
                </Columns>
                  <FooterStyle BackColor="#CCCCCC" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#33BBFF" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#3399FF" ForeColor="White" />
                        <EmptyDataRowStyle Height="10px" />   
            </asp:GridView>
        </td>
                       </tr>
                </table>
     </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_CategorySearch1 %>" ProviderName="<%$ ConnectionStrings:ConnectionString_CategorySearch1.ProviderName %>" SelectCommand="SELECT [Product_ID], [P_Name], [TypeDemographic], [TypeStyle], [Price], [Picture] FROM [Product]"></asp:SqlDataSource>
    </form>
</body>
</html>