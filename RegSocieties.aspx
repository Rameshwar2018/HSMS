<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegSocieties.aspx.cs" Inherits="RegSocieties" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registered Societies</title>
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
                    <li>                
                    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#4CAF50" Height="39px" Width="100px"
                        style="padding-left:10px; padding-right:10px; border-radius:5px; margin-top:12px; padding-top:10px; margin-left:20px; text-decoration:none; border:none;"
                        CssClass="btn" ForeColor="White" href="Login.aspx">Login</asp:LinkButton>
                    </li>
                    <li>
                        
                        <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#4CAF50" Height="39px" Width="100px"
                            style="padding-left:10px; padding-right:10px; border-radius:5px; margin-top:12px; padding-top:10px; margin-left:20px; text-decoration:none; border:none; margin-right:-30px;"
                            CssClass="btn" ForeColor="White" href="SocietyMemRegistration.aspx">Member</asp:LinkButton>
                        
                    </li>

                   


                                     
                </ul>
                
            </div>

        </div>
    </div>
    <!--END Menu Bar -->
    
    
        
        
        <div style="border:0px solid black; margin-left:200px; margin-right:180px; margin-top:100px; height:530px;">
            <h2 id="custom-title-h2-1" class="ui--animation " style="text-align: center; Color:#CC0000;">Welcome To The Housing Society Maintainance Solutions</h2><div class="auto-format ui--animation"><p></p><center>To manage Cooperative Housing Society and Resident Welfare Association professionally.</center><p></p>
            <img src="Images/banner2.jpg" width="100%" >

            <div style="border:0px solid black; height:100px; width:500px; margin-left:250px; margin-top:20px;" align="center">
                    <br>
                    <div style="margin-left:23px;">
                         <asp:Label ID="Label2" runat="server" CssClass="text-left" 
                         Text="VIEW SOCIETIY INFORMATION" style="text-align:justify; font-size:25px;"></asp:Label>
                    </div>
                    <br>        
            
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="SNAME" DataValueField="SNAME" style="margin-left:10px;"
                        Height="34px" Width="180px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
                        SelectCommand="SELECT [SNAME] FROM [ADMIN_REG]"></asp:SqlDataSource>
                    <asp:Button ID="Button8" runat="server" BackColor="#4CAF50" CssClass="btn" style="margin-top:-4px;"
                        ForeColor="White" onclick="Button8_Click" Text="GO" Height="32px" />
             </div>

        </div>
    </div>

    




    <!--Footer -->
            <div align="center" style="margin-top:60px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Housing Society Maintainance Solutions - All Rights Reserved</p>
            </div>
    <!--END of Footer -->




    </form>
</body>
</html>
