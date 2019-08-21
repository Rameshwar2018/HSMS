<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SetForget.aspx.cs" Inherits="SetForget" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Set Password</title>
    <link href="stylesheets/bootstrap.css" rel="stylesheet" />
    <link href="stylesheets/style.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="Images/icon.png" type="image/png" />

          <style type="text/css">
                .login-card {
                  padding: 40px;
                  width: 674px;
                  margin-top:150px;
                  background-color: #F7F7F7;
                  margin: 0 auto 10px;
                  border-radius: 2px;
                  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                  overflow: hidden;
                    height: 447px;
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
                  width: 32%;
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
              .style1
              {
                  width: 248px;
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
                            BorderStyle="Ridge" href="Login.aspx">HELLO</asp:LinkButton>
                   
                                     
                </ul>
                
            </div>

        </div>
    </div>
    <!--END Menu Bar -->

    <div class="login-card" style="margin-top:145px;">
            <div align="center"><img src="Images/icon.png"/></div>
            <h1>Forget Password</h1>
        <table style="width: 75%; margin-left:70px;" align="center">
            <tr>
                <td class="style1">
                    &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Enter New Password :" Font-size="17px"   
                         ForeColor="Gray"></asp:Label>
                </td>
                <td class="style4">
                    &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="42px" 
                        Width="250px" required TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Re-Enter Password :" Font-size="17px"   
                         ForeColor="Gray"></asp:Label>
                </td>
                <td class="style4">
                      &nbsp;&nbsp;<asp:TextBox 
                          ID="TextBox2" runat="server" Height="42px" Width="250px" required 
                          TextMode="Password"></asp:TextBox>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" 
                          ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
                          ErrorMessage="Missmatch"></asp:CompareValidator>
                </td>
            </tr>
         </table>
         <br/>
         <div align="center" style="margin-left:30px;">
             <asp:Button ID="Button1" 
                 runat="server" Text="Submit" BackColor="#4CAF50" CssClass="btn" 
                 ForeColor="White" onclick="Button1_Click" /></div>
    </div>

    <!--Footer -->
            <div align="center" style="margin-top:92px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Housing Society Maintainance Solution - All Rights Reserved</p>
            </div>
    <!--END of Footer -->
    </form>
</body>
</html>
