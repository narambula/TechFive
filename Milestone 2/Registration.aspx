<%@ Page Language = "VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Milestone_2_Registration" Debug="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">

    <title>Registration</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
        
.register{
    background:#495057;
    margin-top: 7%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 5%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    margin-top: 15%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 55%;
    border-bottom-left-radius: 10% 55%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 50%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: 400;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 11%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 7%;
    margin-bottom: -14%;
    color: #495057;
}    </style>

   
</head>
<body>
    <form id="form1" runat="server">
    <div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                       <img alt="" class="auto-style1" src="../Images/ICT%20Sunglasses%20Logo%20(2).png" />
                        <h3>Welcome!</h3>
                        <p>Please register as a new customer or as a new vendor </p>
                        <input type="submit" name="" value="Login"/><br/>
                    </div>
                    <div class="col-md-9 register-right">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab" >
                                <h3 class="register-heading">New Customer</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-group">
                                        <asp:TextBox ID="newEmail" runat="server" placeholder=" Email Address*" ></asp:TextBox>
                                                <asp:RequiredFieldValidator controltovalidate="newEmail" ID="RequiredFieldValidator1" runat="server" ErrorMessage="E-Mail is required, please enter a valid email address." ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                            <asp:TextBox ID="NewFirstName" runat="server" placeholder=" First Name*"></asp:TextBox>
                                            <asp:RequiredFieldValidator controltovalidate="NewFirstName" ID="RequiredFieldValidator2" runat="server" ErrorMessage="First name is required, please enter a valid first name." ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>                                      
                                       
                                       
                                    <div class="form-group">
                                              <asp:TextBox ID="newAddress" runat="server" placeholder=" Street Address*" ></asp:TextBox>
                                              <asp:RequiredFieldValidator controltovalidate="newAddress" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Mailing address is required, please enter a valid mailing address." ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                     
                                         <div class="form-group">
                                              <asp:TextBox ID="newState" runat="server" placeholder=" State*" ></asp:TextBox>
                                              <asp:RequiredFieldValidator controltovalidate="newState" ID="RequiredFieldValidator8" runat="server" ErrorMessage="State is required, please enter a valid state." ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                       
                                    <div class="form-group">
                                            <div class="maxl">
                                               
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                             <asp:TextBox ID="newPassword" runat="server" placeholder=" Password*"></asp:TextBox>
                                             <asp:RequiredFieldValidator controltovalidate="newPassword" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is required, please enter a valid password." ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                           <asp:TextBox ID="NewLastName" runat="server" placeholder=" Last Name*" ></asp:TextBox>
                                            <asp:RequiredFieldValidator controltovalidate="newLastName" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Last name is required, please enter a valid last name." ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                          <div class="form-group">
                                              <asp:TextBox ID="newCity" runat="server" placeholder=" City*" ></asp:TextBox>
                                              <asp:RequiredFieldValidator controltovalidate="newCity" ID="RequiredFieldValidator5" runat="server" ErrorMessage="City is required, please enter a valid city in the field.                           " ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                         <div class="form-group">
                                              <asp:TextBox ID="newZip" runat="server" placeholder=" Zip*" ></asp:TextBox>
                                              <asp:RequiredFieldValidator controltovalidate="newZip" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Zip code is required, please enter a valid zip code." ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>


                                        <%-- <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Your Phone *" value="" />
                                        </div>
                                      <div class="form-group">
                                            <select class="form-control">
                                                <option class="hidden"  selected disabled>Please select your Sequrity Question</option>
                                                <option>What is your Birthdate?</option>
                                                <option>What is Your old Phone Number</option>
                                                <option>What is your Pet Name?</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Enter Your Answer *" value="" />
                                        </div>--%>
                                        <div>

                                            <br />                                           
                                            <asp:Button name ="btnRegister" ID="btnRegsubmit" runat="server" Text="Create account" value ="RegisterButton" />
                                            <br />
                                            <br />
                                          
                                           

                                        </div> 
                                        
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
        
                           <%-- <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <h3  class="register-heading">New Vendor class="row register-form"> </h3>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="First Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Email *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" maxlength="10" minlength="10" class="form-control" placeholder="Phone *" value="" />
                                        </div>


                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Password *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Confirm Password *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control">
                                                <option class="hidden"  selected disabled>Please select your Sequrity Question</option>
                                                <option>What is your Birthdate?</option>
                                                <option>What is Your old Phone Number</option>
                                                <option>What is your Pet Name?</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="`Answer *" value="" />
                                        </div>
                                         <asp:Button runat="server" ID="RegistrationButton" class="btn btn-lg btn-primary" style="width: 200px; position: center;" type="submit" Text="Sign In"></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>    
        
    </div>
       
    </form>
</body>
</html>
