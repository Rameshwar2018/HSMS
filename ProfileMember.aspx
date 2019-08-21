<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProfileMember.aspx.cs" Inherits="ProfileMember" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Member Profile</title>
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

    <div id="admenu">
        <ul>
          <li><a class="active" href="MemberPage.aspx">Home</a></li>
          <li><a href="Complaint.aspx">Add Complaint</a></li>
          <li><a href="ViewNoticeMember.aspx">View Notices</a></li>
          <li><a href="VendorInfoMem.aspx">View Vendors</a></li>
          <li><a href="ViewSocietyInfoMember.aspx">View Society Info</a></li>
          <li><a href="HallBooking.aspx">Hall Booking</a></li>
          <li><a href="ProfileMember.aspx">View Profile</a></li>
        </ul>
    </div>


    <div style="margin-top:60px; margin-left:680px; padding-left:30px; padding-top:10px; width:650px;">
        <div><h3><asp:Label ID="Label3" runat="server" Text="My Complaints" ForeColor="#660033"></asp:Label></h3></div><br>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="margin-top:-10px; box-shadow:0px 0px 8px 0px;"
            CellPadding="3" DataSourceID="SqlDataSource1" Height="136px" Width="521px" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="ORDERNO" HeaderText="ORDERNO" 
                    SortExpression="ORDERNO" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="TYPE" HeaderText="TYPE" SortExpression="TYPE" />
                <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" 
                    SortExpression="DESCRIPTION" />
                <asp:BoundField DataField="DATE" HeaderText="DATE" SortExpression="DATE" />
                <asp:BoundField DataField="STATUS" HeaderText="STATUS" 
                    SortExpression="STATUS" />
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
            
            SelectCommand="SELECT [ORDERNO], [NAME], [TYPE], [DESCRIPTION], [DATE], [STATUS] FROM [COMPLAINT] WHERE ([UNAME] = @UNAME)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="UNAME" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>


    <div style="margin-top:60px; margin-left:680px; padding-left:30px; padding-top:10px; width:650px;">
        <div><h3><asp:Label ID="Label4" runat="server" Text="Hall Booking Status" ForeColor="#660033"></asp:Label></h3></div><br>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" style="margin-top:-10px; box-shadow:0px 0px 8px 0px;"
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource2" 
            Height="85px" Width="534px">
            <Columns>
                <asp:BoundField DataField="RQNO" HeaderText="RQNO" SortExpression="RQNO" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="EVENT" HeaderText="EVENT" SortExpression="EVENT" />
                <asp:BoundField DataField="DATE" HeaderText="DATE" SortExpression="DATE" />
                <asp:BoundField DataField="STATUS" HeaderText="STATUS" 
                    SortExpression="STATUS" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
            SelectCommand="SELECT [RQNO], [NAME], [EVENT], [DATE], [STATUS] FROM [HALL_BOOKING] WHERE ([UNAME] = @UNAME)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="UNAME" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

    <div style="margin-left:240px; margin-top:-440px;">
        <h3><img src="Images/icon.png" style="margin-left:70px;"/>&nbsp;&nbsp;Profile</h3><br>

        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="315px" style=" box-shadow:0px 0px 8px 0px;"
            AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataSourceID="SqlDataSource3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
                <asp:BoundField DataField="SNAME" HeaderText="SNAME" SortExpression="SNAME" />
                <asp:BoundField DataField="WING" HeaderText="WING" SortExpression="WING" />
                <asp:BoundField DataField="FLATNO" HeaderText="FLATNO" 
                    SortExpression="FLATNO" />
                <asp:BoundField DataField="NOM" HeaderText="NOM" SortExpression="NOM" />
                <asp:BoundField DataField="MOB" HeaderText="MOB" SortExpression="MOB" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="ADDR" HeaderText="ADDR" SortExpression="ADDR" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
                <asp:BoundField DataField="PIN" HeaderText="PIN" SortExpression="PIN" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" 
                    SortExpression="USERNAME" />
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
            SelectCommand="SELECT [FNAME], [SNAME], [WING], [FLATNO], [NOM], [MOB], [EMAIL], [ADDR], [CITY], [STATE], [PIN], [DOB], [USERNAME] FROM [MEM_REG] WHERE ([USERNAME] = @USERNAME)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="USERNAME" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

    <!--Footer -->
            <div align="center" style="margin-top:158px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Housing Society Maintainance Solutions - All Rights Reserved</p>
            </div>
    <!--END of Footer -->
    </form>
</body>
</html>
