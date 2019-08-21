<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewNoticeStaff.aspx.cs" Inherits="ViewNoticeStaff" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>View Notice</title>
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


    <!--member Section -->
   <div align="center"><br>
        <br><h3><img src="Images/icon.png"/>&nbsp;&nbsp;View Notice</h3><br>
       <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataSourceID="SqlDataSource1" AutoGenerateColumns="False" Width="975px">
           <Columns>
               <asp:BoundField DataField="SUBJECT" HeaderText="SUBJECT" 
                   SortExpression="SUBJECT" />
               <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" 
                   SortExpression="DESCRIPTION" />
               <asp:BoundField DataField="DATE" HeaderText="DATE" SortExpression="DATE"/>
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
            SelectCommand="SELECT [SUBJECT], [DESCRIPTION], [DATE] FROM [NOTICE_DATA] WHERE ([SOCIETY] = @SOCIETY)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label2" Name="SOCIETY" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            
   </div>
   <!--End of member Section -->


    <!--Footer -->
            <div align="center" style="margin-top:178px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Housing Society Maintainance Solutions - All Rights Reserved</p>
            </div>
    <!--END of Footer -->
    
    
    </form>
</body>
</html>
