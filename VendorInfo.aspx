<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VendorInfo.aspx.cs" Inherits="VendorInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Vendor Information</title>
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
            <h2 id="H1" class="ui--animation " style="text-align: center; Color:#CC0000;">
                Welcome To <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h2><div class="auto-format ui--animation"><p></p><center>To manage Cooperative Housing Society and Resident Welfare Association professionally.</center><p></p>
            <hr>
    </div>
    
    <div><p style="color:#CC3300; text-align:right; margin-right:50px; margin-top:-100px;"><img src="Images/userlogo.png"/>&nbsp Welcome 
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></p></div>
    
    <div id="admenu" >
        <ul >
          <li><a class="active" href="AdminAuthorities.aspx">Home</a></li>
          <li><a href="Notice.aspx">Add Notices</a></li>
          <li><a href="StaffRegistration.aspx">Add Staff</a></li>
          <li><a href="VendorRegistration.aspx">Add Vendor</a></li>
          <li><a href="VendorInfo.aspx">Vendor Info</a></li>
          <li><a href="ViewAllMembers.aspx">Society Members Info</a></li>
          <li><a href="IssueWorkOrder.aspx">View Complaints</a></li>
          <li><a href="HallBookingRequest.aspx">Hall Booking</a></li>
          <li><a href="MemApproval.aspx">Member Approval</a></li>
          <li><a href="ViewNoticeAdmin.aspx">View Notice</a></li>
          <li><a href="ProfileAdmin.aspx">Profile</a></li>
        </ul>
    </div>

    <br>




            <br />
            <div align="center">
                <br>
                <h3><img src="Images/icon.png"/>&nbsp;&nbsp;Vendor Information</h3><br>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="text-align:center;"
                    DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="140px" 
                    Width="849px">
                    <Columns>
                        <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
                        <asp:BoundField DataField="LNAME" HeaderText="LNAME" SortExpression="LNAME" />
                        <asp:BoundField DataField="TYPE" HeaderText="TYPE" SortExpression="TYPE" />
                        <asp:BoundField DataField="MOB" HeaderText="MOB" SortExpression="MOB" />
                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                        <asp:BoundField DataField="ADDR" HeaderText="ADDR" SortExpression="ADDR" />
                        <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                        <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
                        <asp:BoundField DataField="PIN" HeaderText="PIN" SortExpression="PIN" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
                    SelectCommand="SELECT * FROM [VEN_REG] WHERE ([SOCIETY] = @SOCIETY)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label2" Name="SOCIETY" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>



    <!--Footer -->
            <div align="center" style="margin-top:129px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Housing Society Maintainance Solutions - All Rights Reserved</p>
            </div>
    <!--END of Footer -->

    </form>
</body>
</html>
