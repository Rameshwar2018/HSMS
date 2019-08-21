<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Gallery</title>
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
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" Height="39px" Width="145px" 
                            style="padding-left:20px; padding-right:10px; border-radius:5px; margin-top:12px; padding-top:10px; margin-left:20px; text-decoration:none; border:none;" 
                            CssClass="btn-link" BackColor="#4CAF50" BorderColor="#666666" 
                            BorderStyle="Ridge" href="SocietyRegistration.aspx">Register Society</asp:LinkButton>
                    </li>
                                       
                </ul>
                
            </div>

        </div>
    </div>
    <!--END Menu Bar -->
    
    <div align="center" style="margin-top:80px;"><h1>Gallery</h1></div>
    <hr style="border-width:inherit; height: 1px; background: #333; background-image: linear-gradient(to right, #ccc, #000, #ccc);">
    

    <div align="center" style="margin-top:50px;">
    <asp:GridView ID="GridViewIMG" runat="server" AutoGenerateColumns = "False" 
            Font-Names = "Arial" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField = "SOCIETY" HeaderText = "SOCIETY PICTURES" />
                <asp:ImageField DataImageUrlField = "IMAGE" HeaderText = "" ControlStyle-Width = "400" ControlStyle-Height = "300"/>
            </Columns> 

            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>



    <!--Footer -->
            <div align="center" style="margin-top:210px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Housing Society Maintainance Solutions - All Rights Reserved</p>
            </div>
    <!--END of Footer -->
    </form>
</body>
</html>
