<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Home.aspx.cs" Inherits="_Default" %>

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
                                         
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" Height="39px" Width="145px" 
                            style="padding-left:20px; padding-right:10px; border-radius:5px; margin-top:12px; padding-top:10px; margin-left:20px; text-decoration:none; border:none;" 
                            CssClass="btn-link" BackColor="#4CAF50" BorderColor="#666666" 
                            BorderStyle="Ridge" href="SocietyRegistration.aspx">Register Society</asp:LinkButton>
                    
                                     
                </ul>
                
            </div>

        </div>
    </div>
    <!--END Menu Bar -->
    <div align="center" style="margin-top:80px;"><h1>Our Services</h1></div>
    <hr style="border-width:inherit; height: 1px; background: #333; background-image: linear-gradient(to right, #ccc, #000, #ccc);">
    
    <div style="margin-top:20px; height:400px;">
            <br>
            <div style="width:300px; margin-left:150px;">
                <h4 align="center">Society Registration and Formation</h4>
                <hr>
                <ul>
                    <li>Initial screening</li>
                    <li>Gap identification and ratification</li>
                    <li>Process documentation and finalization</li>
                    
                </ul>

            </div>
            
            <div style="width:300px; margin-left:500px; margin-top:-115px;">
                <h4 align="center">Society Accounts and Audits</h4>
                <hr>
                <ul>
                    <li>Co-operative Accounting</li>
                    <li>Statutory Documentation</li>
                    <li>Society Management Consultancy</li>
                </ul>

            </div>
            
            <div style="width:300px; margin-left:850px; margin-top:-115px;">
                <h4 align="center">Society Management Consultancy</h4>
                <hr>
                <ul>
                    <li>Society Administrative set up</li>
                    <li>Society initial set up</li>
                    <li>Society monetary set up</li>
                </ul>

            </div>
            <br><br>
            <div style="width:300px; margin-top:50px; margin-left:150px;">
                <h4 align="center">Society Compliance Management</h4>
                <hr>
                <ul>
                    <li>Updating All Statutory Registers-I-form,J-form,Share register etc.</li>
                    <li>Attend the AGM,SGM as per requirements.</li>
                    <li>Draft all minutes of managing committee & General Body Meetings.</li>
                    
                </ul>

            </div>
            
            <div style="width:300px; margin-top:-175px; margin-left:500px;">
                <h4 align="center">Property Management</h4>
                <hr>
                <ul>
                    <li>To Co-ordinate with various service providers & contractors for AMCs such as security,Housse Keeping,Lift Maintainance,Pump maintainance,Fire fighting Equipments maintainance,Health club,garden,etc.</li>
                </ul>

            </div>
            
            <div style="width:300px; margin-top:-175px; margin-left:850px;">
                <h4 align="center">Quality Policies</h4>
                <hr>
                <ul>
                    <li>Continuous improvement in quality of services</li>
                    <li>Setting Standards while simultaneously being flexible to meet</li>
                    <li>Assist Customers meet statutory and regulatory requirements</li>
                    
                </ul>

            </div>
            
    </div>



    <!--Footer -->
            <div align="center" style="margin-top:80px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Housing Society Maintainance Solution - All Rights Reserved</p>
            </div>
    <!--END of Footer -->



    </form>



</body>
</html>
