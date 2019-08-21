<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProfileAdmin.aspx.cs" Inherits="ProfileAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Profile</title>
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
                            BorderStyle="Ridge" href="RegSocieties.aspx" >Logout</asp:LinkButton>
                    
                                     
                </ul>
                
            </div>

        </div>
    </div>
    <!--END Menu Bar -->
    
    <div style="margin-top:100px;">
            <h2 id="H1" class="ui--animation " style="text-align: center; Color:#CC0000; ">
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
    

    <div align="center">
    <br><br><h2><img src="Images/icon.png"/>&nbsp;&nbsp;Profile</h2><br>
    </div>

    <div style="margin-top:10px; margin-left:680px; padding-left:30px; padding-top:10px; background-color:#F7F7F7; box-shadow:0px 0px 8px 0px; width:350px; height:200px;">
        <br><h4>&nbsp;<asp:Label ID="Label3" runat="server" Text="Upload/Change Society Images" style="font-size:20px;"
                ForeColor="#660033"></asp:Label></h4><br>
         <asp:FileUpload ID="FileUpload1" runat="server" Height="33px" Width="200px" style="margin-left:50px;"/>
         
         <asp:Button ID="Button2" runat="server" Text="Upload" 
            onclick="Button2_Click" BackColor="#333300" CssClass="btn" style="margin-left:100px;"
            ForeColor="White" />
    </div>

    <div style="margin-left:270px; margin-top:-200px;">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="386px" style=" box-shadow:0px 0px 8px 0px;"
            AutoGenerateRows="False" CellPadding="3" DataKeyNames="SNAME" 
            DataSourceID="SqlDataSource1" GridLines="Horizontal" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="SNAME" HeaderText="SNAME" ReadOnly="True" 
                    SortExpression="SNAME" />
                <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
                <asp:BoundField DataField="LNAME" HeaderText="LNAME" SortExpression="LNAME" />
                <asp:BoundField DataField="MOB" HeaderText="MOB" SortExpression="MOB" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="ADDR" HeaderText="ADDR" SortExpression="ADDR" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
                <asp:BoundField DataField="PIN" HeaderText="PIN" SortExpression="PIN" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
            DeleteCommand="DELETE FROM [ADMIN_REG] WHERE [SNAME] = @original_SNAME AND (([FNAME] = @original_FNAME) OR ([FNAME] IS NULL AND @original_FNAME IS NULL)) AND (([LNAME] = @original_LNAME) OR ([LNAME] IS NULL AND @original_LNAME IS NULL)) AND (([MOB] = @original_MOB) OR ([MOB] IS NULL AND @original_MOB IS NULL)) AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL)) AND (([ADDR] = @original_ADDR) OR ([ADDR] IS NULL AND @original_ADDR IS NULL)) AND (([CITY] = @original_CITY) OR ([CITY] IS NULL AND @original_CITY IS NULL)) AND (([STATE] = @original_STATE) OR ([STATE] IS NULL AND @original_STATE IS NULL)) AND (([PIN] = @original_PIN) OR ([PIN] IS NULL AND @original_PIN IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL))" 
            InsertCommand="INSERT INTO [ADMIN_REG] ([FNAME], [LNAME], [MOB], [EMAIL], [ADDR], [CITY], [STATE], [PIN], [DOB], [SNAME]) VALUES (@FNAME, @LNAME, @MOB, @EMAIL, @ADDR, @CITY, @STATE, @PIN, @DOB, @SNAME)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [FNAME], [LNAME], [MOB], [EMAIL], [ADDR], [CITY], [STATE], [PIN], [DOB], [SNAME] FROM [ADMIN_REG] WHERE ([SNAME] = @SNAME)" 
            UpdateCommand="UPDATE [ADMIN_REG] SET [FNAME] = @FNAME, [LNAME] = @LNAME, [MOB] = @MOB, [EMAIL] = @EMAIL, [ADDR] = @ADDR, [CITY] = @CITY, [STATE] = @STATE, [PIN] = @PIN, [DOB] = @DOB WHERE [SNAME] = @original_SNAME AND (([FNAME] = @original_FNAME) OR ([FNAME] IS NULL AND @original_FNAME IS NULL)) AND (([LNAME] = @original_LNAME) OR ([LNAME] IS NULL AND @original_LNAME IS NULL)) AND (([MOB] = @original_MOB) OR ([MOB] IS NULL AND @original_MOB IS NULL)) AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL)) AND (([ADDR] = @original_ADDR) OR ([ADDR] IS NULL AND @original_ADDR IS NULL)) AND (([CITY] = @original_CITY) OR ([CITY] IS NULL AND @original_CITY IS NULL)) AND (([STATE] = @original_STATE) OR ([STATE] IS NULL AND @original_STATE IS NULL)) AND (([PIN] = @original_PIN) OR ([PIN] IS NULL AND @original_PIN IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_SNAME" Type="String" />
                <asp:Parameter Name="original_FNAME" Type="String" />
                <asp:Parameter Name="original_LNAME" Type="String" />
                <asp:Parameter Name="original_MOB" Type="String" />
                <asp:Parameter Name="original_EMAIL" Type="String" />
                <asp:Parameter Name="original_ADDR" Type="String" />
                <asp:Parameter Name="original_CITY" Type="String" />
                <asp:Parameter Name="original_STATE" Type="String" />
                <asp:Parameter Name="original_PIN" Type="String" />
                <asp:Parameter Name="original_DOB" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FNAME" Type="String" />
                <asp:Parameter Name="LNAME" Type="String" />
                <asp:Parameter Name="MOB" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="ADDR" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="STATE" Type="String" />
                <asp:Parameter Name="PIN" Type="String" />
                <asp:Parameter Name="DOB" Type="String" />
                <asp:Parameter Name="SNAME" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label2" Name="SNAME" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FNAME" Type="String" />
                <asp:Parameter Name="LNAME" Type="String" />
                <asp:Parameter Name="MOB" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="ADDR" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="STATE" Type="String" />
                <asp:Parameter Name="PIN" Type="String" />
                <asp:Parameter Name="DOB" Type="String" />
                <asp:Parameter Name="original_SNAME" Type="String" />
                <asp:Parameter Name="original_FNAME" Type="String" />
                <asp:Parameter Name="original_LNAME" Type="String" />
                <asp:Parameter Name="original_MOB" Type="String" />
                <asp:Parameter Name="original_EMAIL" Type="String" />
                <asp:Parameter Name="original_ADDR" Type="String" />
                <asp:Parameter Name="original_CITY" Type="String" />
                <asp:Parameter Name="original_STATE" Type="String" />
                <asp:Parameter Name="original_PIN" Type="String" />
                <asp:Parameter Name="original_DOB" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <!--Footer -->
            <div align="center" style="margin-top:97px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Housing Society Maintainance Solutions - All Rights Reserved</p>
            </div>
    <!--END of Footer -->
    </form>
</body>
</html>
