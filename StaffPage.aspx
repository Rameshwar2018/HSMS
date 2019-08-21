<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StaffPage.aspx.cs" Inherits="StaffPage" %>

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
    
    <div><p style="color:#CC3300; text-align:right; margin-right:50px; margin-top:-100px;"><img src="Images/staff.png"/>&nbsp Welcome 
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></p></div>

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


    <!--staff Section -->
    <div align="center" style="width:500px; height:370px; border:1px solid white; margin-top:30px; margin-left:30px;" >
        <br>
        <asp:GridView ID="GridViewIMG" runat="server" AutoGenerateColumns = "False" style=" box-shadow:0px 0px 8px 0px;"
            Font-Names = "Arial" CellPadding="4" ForeColor="#333333" GridLines="None" 
            DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ImageField DataImageUrlField = "IMAGE" ControlStyle-Width = "400px" ControlStyle-Height = "300px" HeaderText = ""/>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
            
            SelectCommand="SELECT [IMAGE] FROM [IMG_UPLOAD] WHERE ([SOCIETY] = @SOCIETY)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label2" Name="SOCIETY" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

   </div>
   <div align="center" style="width:800px; border:1px solid white; margin-left:500px; margin-top:-340px;">
   <h3>About Us</h3><br>
    <p style="width:700px; line-height:30px;" align="justify">A housing society is a situation popular in India with a group of house owners within a residential complex, usually one consisting of buildings that each has flats. A housing society's apartments or premises are formed as per relevant laws for smooth functioning of utilities and other amenities provided to them. The housing society formed must be formally registered with registrar of co-operatives. In India, each state has its own rules in this regard. Each building in same premise may have separate housing society or one. Many housing societies form one federation. Housing societies run on the fees or charges levied by them on house or flat owners. Some of the housing societies in Mumbai are cash rich, having millions of rupees in their bank account.</p>
   </div>
   <!--End of staff Section -->


    <!--Footer -->
            <div align="center" style="margin-top:128px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Akshay, Gaurav and Lalit - All Rights Reserved</p>
            </div>
    <!--END of Footer -->



    </form>



</body>
</html>
