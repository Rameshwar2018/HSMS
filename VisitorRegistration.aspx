<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VisitorRegistration.aspx.cs" Inherits="VisitorRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Visitor Registration Form</title>
    <link href="stylesheets/bootstrap.css" rel="stylesheet" />
    <link href="stylesheets/style.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="Images/icon.png" type="image/png" />

          <style type="text/css">
                .login-card {
                  padding: 40px;
                  width: 974px;
                  margin-top:150px;
                  background-color: #F7F7F7;
                  margin: 0 auto 10px;
                  border-radius: 2px;
                  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                  overflow: hidden;
                    height: 350px;
                }

                .login-card h1 {
                  font-weight: 100;
                  text-align: center;
                  font-size: 2.3em;
                }

                .login-card input[type=text], input[type=password] {
                  height: 44px;
                  font-size: 16px;
                  width: 100%;
                  margin-bottom: 10px;
                  -webkit-appearance: none;
                  background: #fff;
                  border: 1px solid #d9d9d9;
                  border-top: 1px solid #c0c0c0;
                  /* border-radius: 2px; */
                  padding: 0 8px;
                  box-sizing: border-box;
                  -moz-box-sizing: border-box;
                }

                .login-card input[type=submit] {
                  width: 29%;
                  display: block;
                  margin-bottom: 10px;
                  position: relative;
                    top: 3px;
                    left: -1px;
                    height: 44px;
                            bottom: -3px;
                        }

                .login-submit {
                  /* border: 1px solid #3079ed; */
                  border: 0px;
                  color: #fff;
                  text-shadow: 0 1px rgba(0,0,0,0.1); 
                  background-color: #4d90fe;
                  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
                }

                .login-help {
                  width: 100%;
                  text-align: center;
                  font-size: 12px;
                    height: 15px;
                }

                .login-card a {
                  text-decoration: none;
                  color: #666;
                  font-weight: 400;
                  text-align: center;
                  display: inline-block;
                  opacity: 0.6;
                  transition: opacity ease 0.5s;
                }
              .style4
              {
                  height: 60px;
              }
              .style5
              {
                  height: 60px;
                  width: 399px;
              }
        </style>
</head>
<body>
    <form id="form1" runat="server">

    <!-- Menu Bar -->
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div id="menubar">
            <div class="navbar-header" id="titlebar">
                <a class="navbar-brand" href="#">Housing Society Maintainance Solution</a>
            </div>
            <div>
                <ul class="nav navbar-nav navbar-right" style="margin-right:50px;">
                    <li><a href="Home.aspx">HOME</a></li>
                    <li><a href="AboutUs.aspx">ABOUT</a></li>
                    <li><a href="Services.aspx">SERVICES</a></li>
                    <li><a href="Gallery.aspx">GALLERY</a></li>
                    <li><a href="ContactsUs.aspx">CONTACT</a></li>
                    
                                     
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" Height="39px" Width="125px" 
                            style="padding-left:40px; padding-right:10px; border-radius:5px; margin-top:12px; padding-top:10px; margin-left:20px; text-decoration:none; border:none;" 
                            CssClass="btn-link" BackColor="#4CAF50" BorderColor="#666666" 
                            BorderStyle="Ridge" href="RegSocieties.aspx">Logout</asp:LinkButton>
                   
                                     
                </ul>
                
            </div>

        </div>
    </div>
    <!--END Menu Bar -->


    <div style="margin-top:100px;">
            <h2 id="H1" class="ui--animation " style="text-align: center; Color:#CC0000;">Welcome To <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h2><div class="auto-format ui--animation"><p></p><center>To manage Cooperative Housing Society and Resident Welfare Association professionally.</center><p></p>
            <hr>
    </div>
    
    <div><p style="color:#CC3300; text-align:right; margin-right:50px; margin-top:-100px;"><img src="Images/staff.png"/>&nbsp Welcome <asp:Label ID="Label1" runat="server" Text=""></asp:Label></p></div>

    <div id="admenu">
        <ul>
          <li><a class="active" href="StaffPage.aspx">Home</a></li>
          <li><a href="VisitorRegistration.aspx">Register Visitors</a></li>
          <li><a href="VisitorEnquiry.aspx">Update Out Time</a></li>
          <li><a href="ParkingLayout.aspx">Parking Layout</a></li>
          <li><a href="ViewNoticeStaff.aspx">View Notices</a></li>
          <li><a href="EnquiryAll.aspx">View Visitors</a></li>
          <li><a href="ProfileStaff.aspx">View Profile</a></li>
        </ul>
    </div>

          

    <!--Reg form -->

    <div style="height:620px; margin-top:60px; padding-left:55px;" class="login-card" >
            <div align="center"><img src="Images/icon.png"/></div>
            <h1>Visitor Registration</h1><br>
        <table style="width: 100%; margin-left:50px;" >
            <tr>
                <td class="style5">
                    &nbsp;
                    <asp:TextBox ID="TextBox1" placeholder="Visitors Name" runat="server" Height="42px" Width="350px" required></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:TextBox ID="TextBox2" placeholder="Referal Member Name" runat="server" Height="42px" Width="350px" required></asp:TextBox>
                </td>
            </tr>

                       
            <tr>
                <td class="style5">
                    &nbsp;
                    <asp:TextBox ID="TextBox11" placeholder="Mobile Number" runat="server" 
                        Height="42px" Width="350px" MaxLength="10" MinLength="10" required></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:TextBox ID="TextBox12" placeholder="Email" runat="server" Height="42px" Width="350px" required></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox12" ErrorMessage="Invalid Email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td class="style5">
                    &nbsp;
                    <asp:TextBox ID="TextBox7" placeholder="Address" runat="server" Height="42px" Width="350px" required></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:TextBox ID="TextBox8" placeholder="City" runat="server" Height="42px" Width="350px" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;
                    <asp:TextBox ID="TextBox9" placeholder="State" runat="server" Height="42px" Width="350px" required></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:TextBox ID="TextBox10" placeholder="Pin Code" runat="server" Height="42px" 
                        Width="350px" MaxLength="6" required></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="style5">
                    &nbsp;
                    <asp:TextBox ID="TextBox6" placeholder="Date" runat="server" Height="42px" Width="250px" ></asp:TextBox>
                    <div style="margin-left:270px; margin-top:-55px;">
                        <asp:Button ID="Button1" runat="server" Text="Set Date" Height="42px" Width="90px"
                            CssClass="btn" onclick="Button1_Click1"/>
                    </div>
                    
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:TextBox ID="TextBox4" placeholder="In Time" runat="server" Height="42px" Width="250px" ></asp:TextBox>
                    <div style="margin-left:270px; margin-top:-55px;">
                        <asp:Button ID="Button2" runat="server" Text="In Time" Height="42px" Width="90px"
                            CssClass="btn" onclick="Button2_Click"/>                  
                    </div>
                    
                    
                </td>
            </tr>
       </table> 
           
            <br><br>
            <div align="center">
                <asp:Button ID="Button3" runat="server" Text="Register" BackColor="#4CAF50" width="26%"
                    CssClass="btn" ForeColor="White" onclick="Button3_Click" />
            </div>
        
    </div>  
    
    <!--END Reg form -->
         

    <!--Footer -->
            <div align="center" style="margin-top:92px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Housing Society Maintainance Solution - All Rights Reserved</p>
            </div>
    <!--END of Footer -->
    </form>
    </form>
</body>
</html>
