<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Milestone_2_Test_index2" Debug="true" %>

<!doctype html>
<html lang="en">
  <head>

    <title>Customer Login</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/sign-in/">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.css">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      
 
        .auto-style1 {
            width: 164px;
            height: 169px;
        }

      
 
    </style>
  
 
  </head>

<body>
    <form id="form1" method="get" action="FindPage.aspx" runat="server">
        <div class="wrapper">
            <div class="text-center" style="width: 100%; height: 100%; margin: 10% auto;">
                <img src="../Images/ICT%20Sunglasses%20Logo%20(2).png" alt="" class="auto-style1"><br />
                <br />
&nbsp;<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>

                <div class="form-group">
                    <label for="inputEmail">Email address</label>
                    <br />
                    <asp:TextBox ID="inputEmail" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="inputPassword">Password</label>
                    <br />
                    <asp:TextBox ID="inputPassword" runat="server"></asp:TextBox>
                </div>
                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me">
                        Remember me
                    </label>
                </div>
                New customer? <a href="Registration.aspx">Signup here</a>
                <div>
                    <asp:Label ID="MessageLabel" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                </div>
                <asp:Button runat="server" ID="LoginButton" class="btn btn-lg btn-primary" style="width: 200px; position: center;" type="submit" Text="Sign In"></asp:Button>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_Log %>" ProviderName="<%$ ConnectionStrings:ConnectionString_Log.ProviderName %>" SelectCommand="SELECT [UserID], [Password] FROM [User]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>