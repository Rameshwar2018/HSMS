<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactsUs.aspx.cs" Inherits="ContactsUs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Housing Society Maintainance Solution</title>
    <link href="stylesheets/bootstrap.css" rel="stylesheet" />
    <link href="stylesheets/style.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="Images/icon.png" type="image/png" />
    
</head>

<body>
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
                    
                    <li>
                    <form runat="server">
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" Height="39px" Width="145px" 
                            style="padding-left:20px; padding-right:10px; border-radius:5px; margin-top:12px; padding-top:10px; margin-left:20px; text-decoration:none; border:none;" 
                            CssClass="btn-link" BackColor="#4CAF50" BorderColor="#666666" 
                            BorderStyle="Ridge" href="SocietyRegistration.aspx">Register Society</asp:LinkButton>
                    </form>
                    </li>
                    
                    
                </ul>
            </div>

        </div>
    </div>
    <!--END Menu Bar -->
    
    <!--Contact us -->
    
        <div class="section" style="margin-bottom:50px;">
            <div class=>
                <div class="row main-low-margin">
                    <div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1">
                    <h1>Contact Us</h1>
                    <h5 style="line-height:20px; font-family:Segoe UI Light; margin-top:30px;">@HOUSING SOCIETY MAINTAINANCE SOLUTION here we provide you with more information,<br>answer any question you may have and create a effective solution your instructional needs !!!                      </h5>
                    </div>
                </div>

            </div>
        </div>
    
        <div class="container" style="height:450px;">
           <div style="text-align:center">
            <div class="col-md-5 col-sm-5" >
                <img src="Images/location.png" />
                <h3>Our Location</h3><br>
                <p style="text-align:justify; margin-left:30px;">
                    <strong>Address : </strong>Balaji Society, Sector-18, Yavatmal. Maharashtra <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pin-445001.<br><br>
                    <strong>Ph. No. </strong>07232-654212&nbsp;&nbsp;&nbsp;
                    <strong>Email : </strong>HouseSupport@gmail.com
                </p>
            </div>
            <br>
            <div class="col-md-7 col-sm-7">
                <h3>SEND A QUICK QUERY</h3>
                <hr>
                <br>
                <form>
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Name">
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Email address">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <textarea name="message" id="Textarea1" required="required" class="form-control" rows="7" placeholder="Message"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Submit Request</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    
    <!--END of Contact us -->
    
    
    <!--Footer -->
            <div id="footer" align="center" >
                <p>Copyright © 2017 Housing Society Maintainance Solution - All Rights Reserved</p>
            </div>
    <!--END of Footer -->



</body>
</html>
