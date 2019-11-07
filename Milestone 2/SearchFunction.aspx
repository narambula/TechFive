<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SearchFunction.aspx.vb" Inherits="Milestone_2_SearchFunction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" method="get" action="FindPage.aspx" runat="server">
        <div>
            Search By Product Category:<br />
            <asp:DropDownList ID="Category" runat="server" DataSourceID="SqlDataSource1" DataTextField="TypeDemographic" DataValueField="TypeDemographic" >
            </asp:DropDownList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_CategorySearch %>" ProviderName="<%$ ConnectionStrings:ConnectionString_CategorySearch.ProviderName %>" SelectCommand="SELECT DISTINCT [TypeDemographic] FROM [Product]"></asp:SqlDataSource>
        <br />
        <asp:Button name= "btnSubmit" ID="btnidsubmit" runat="server" Text="Category Search" value ="Category Search" />
    </form>
</body>
</html>
