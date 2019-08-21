<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>About us</title>
    <link href="stylesheets/bootstrap.css" rel="stylesheet" />
    <link href="stylesheets/style.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="Images/icon.png" type="image/png" />
    
</head>

<body>
    <form id="form1" runat="server">
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

                       <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" Height="39px" Width="145px"
                            style="padding-left:20px; padding-right:10px; border-radius:5px; margin-top:12px; padding-top:10px; margin-left:20px; text-decoration:none; border:none;" 
                            CssClass="btn-link" BackColor="#4CAF50" BorderColor="#666666" 
                            BorderStyle="Ridge" href="SocietyRegistration.aspx">Register Society</asp:LinkButton>
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
                    <h1>About us</h1>
                    <h5 style="line-height:20px; text-align:justify; font-family:Segoe UI Light;">
                        From inception to final handover, we provide society formation services for  housing societies, commercial societies, maintenance societies and large townships.
                        We, at Society Plus, provide registration and formation services which help you at every step of society formation, right from inception to final handover. We look after all the legal complications involved in society formation and carry out necessary negotiations with developers.
                        Proper functioning and efficient management systems in a society need to outline some ground rules. Every society needs a contingency plan for repairs, day-to-day maintenance, etc. Apart from these they also need to set rules regarding tenants, parking issues, disputes, and many more issues. Society Plus guides societies to identify all these hassles and helps with initial administrative and monetary set up of societies.
                    </h5>
                    </div>
                </div>

            </div>
        </div>
        
        <div class="container">
        <div class="row main-low-margin text-center">
            <div class="col-md-4 col-sm-4 text-center">
                <img class="img-circle" src="Images/MEMBER.PNG">
                <h3>Akshay S. Shastrakar</h3>
                <h4>Final Year Section-B</h4>
                <p>
                    (Founder)
                </p>
            </div>
            <div class="col-md-4 col-sm-4 text-center">
                <img class="img-circle" src="Images/MEMBER.PNG">
                <h3>Lalit P. Kandi</h3>
                <h4>Final Year Section-B</h4>
                <p>
                    (Co-Founder)
                </p>
            </div>
            <div class="col-md-4 col-sm-4 text-center">
                <img class="img-circle" src="Images/MEMBER.PNG">
                <h3>Gaurav B. Kurwade</h3>
                <h4>Final Year Section-B</h4>
                <p>
                    (Co-Founder) 
                </p>
            </div>
            <div class="col-md-4 col-sm-4 text-center" style="margin-left:170px; margin-top:50px;">
                <img class="img-circle" src="Images/MEMBER.PNG">
                <h3>Akash Maswadkar</h3>
                <h4>Final Year Section-B</h4>
                <p>
                    (Member) 
                </p>
            </div>
            <div class="col-md-4 col-sm-4 text-center" style="margin-top:50px;">
                <img class="img-circle" src="Images/MEMBER.PNG">
                <h3>Rameshwar U. Udgire</h3>
                <h4>Final Year Section-B</h4>
                <p>
                    (Member) 
                </p>
            </div>
     </div>
    
    
        
    
    <!--Footer -->
            <div id="footerab" align="center" >
                <p>Copyright © 2017 Housing Society Maintaianance Solutions - All Rights Reserved</p>
            </div>
    <!--END of Footer -->
    </form>
</body>
</html>
