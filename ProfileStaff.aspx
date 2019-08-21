<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProfileStaff.aspx.cs" Inherits="ProfileStaff" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Staff Profile</title>
    <link href="stylesheets/bootstrap.css" rel="stylesheet" />
    <link href="stylesheets/style.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="Images/icon.png" type="image/png" />
    <style type="text/css">
                .login-card {
                  padding: 40px;
                  width: 774px;
                  margin-top:150px;
                  background-color: #F7F7F7;
                  margin: 0 auto 10px;
                  border-radius: 2px;
                  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                  overflow: hidden;
                    height: 350px;
                }

                .login-card h1 {
                  font-weight: 100;
                  text-align: center;
                  font-size: 2.3em;
                }

                .login-card input[type=text], input[type=password] {
                  height: 44px;
                  font-size: 16px;
                  width: 100%;
                  margin-bottom: 10px;
                  -webkit-appearance: none;
                  background: #fff;
                  border: 1px solid #d9d9d9;
                  border-top: 1px solid #c0c0c0;
                  /* border-radius: 2px; */
                  padding: 0 8px;
                  box-sizing: border-box;
                  -moz-box-sizing: border-box;
                }

                .login-card input[type=submit] {
                  width: 29%;
                  display: block;
                  margin-bottom: 10px;
                  position: relative;
                    top: 3px;
                    left: -1px;
                    height: 44px;
                            bottom: -3px;
                        }

                .login-submit {
                  /* border: 1px solid #3079ed; */
                  border: 0px;
                  color: #fff;
                  text-shadow: 0 1px rgba(0,0,0,0.1); 
                  background-color: #4d90fe;
                  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
                }

                .login-help {
                  width: 100%;
                  text-align: center;
                  font-size: 12px;
                    height: 15px;
                }

                .login-card a {
                  text-decoration: none;
                  color: #666;
                  font-weight: 400;
                  text-align: center;
                  display: inline-block;
                  opacity: 0.6;
                  transition: opacity ease 0.5s;
                }
              .style4
              {
                  height: 60px;
              }
              .style5
              {
                  height: 60px;
                  width: 399px;
              }
        </style>

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

    <br>
    <div style="height:auto; margin-top:60px; padding-left:55px;" class="login-card" >
            <div align="center">
            <h3><img src="Images/icon.png"/>&nbsp;&nbsp;Profile</h3><br>
            </div>

            <div align="center">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="16px" Width="443px" style=" box-shadow:0px 0px 8px 0px;"
                    AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="USERNAME" 
                    DataSourceID="SqlDataSource1" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Fields>
                    <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
                    <asp:BoundField DataField="LNAME" HeaderText="LNAME" SortExpression="LNAME" />
                    <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" ReadOnly="True" 
                        SortExpression="USERNAME" />
                    <asp:BoundField DataField="MOB" HeaderText="MOB" SortExpression="MOB" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                    <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
                    <asp:BoundField DataField="PIN" HeaderText="PIN" SortExpression="PIN" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="TYPEOFWORK" HeaderText="TYPEOFWORK" 
                        SortExpression="TYPEOFWORK" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" >
                    <ControlStyle BackColor="#99CCFF" />
                    </asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
                    DeleteCommand="DELETE FROM [SATFF_REG] WHERE [USERNAME] = @original_USERNAME AND (([FNAME] = @original_FNAME) OR ([FNAME] IS NULL AND @original_FNAME IS NULL)) AND (([LNAME] = @original_LNAME) OR ([LNAME] IS NULL AND @original_LNAME IS NULL)) AND (([MOB] = @original_MOB) OR ([MOB] IS NULL AND @original_MOB IS NULL)) AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL)) AND (([ADDR] = @original_ADDR) OR ([ADDR] IS NULL AND @original_ADDR IS NULL)) AND (([CITY] = @original_CITY) OR ([CITY] IS NULL AND @original_CITY IS NULL)) AND (([STATE] = @original_STATE) OR ([STATE] IS NULL AND @original_STATE IS NULL)) AND (([PIN] = @original_PIN) OR ([PIN] IS NULL AND @original_PIN IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([TYPEOFWORK] = @original_TYPEOFWORK) OR ([TYPEOFWORK] IS NULL AND @original_TYPEOFWORK IS NULL))" 
                    InsertCommand="INSERT INTO [SATFF_REG] ([FNAME], [LNAME], [USERNAME], [MOB], [EMAIL], [ADDR], [CITY], [STATE], [PIN], [DOB], [TYPEOFWORK]) VALUES (@FNAME, @LNAME, @USERNAME, @MOB, @EMAIL, @ADDR, @CITY, @STATE, @PIN, @DOB, @TYPEOFWORK)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [FNAME], [LNAME], [USERNAME], [MOB], [EMAIL], [ADDR], [CITY], [STATE], [PIN], [DOB], [TYPEOFWORK] FROM [SATFF_REG] WHERE ([USERNAME] = @USERNAME)" 
                    UpdateCommand="UPDATE [SATFF_REG] SET [FNAME] = @FNAME, [LNAME] = @LNAME, [MOB] = @MOB, [EMAIL] = @EMAIL, [ADDR] = @ADDR, [CITY] = @CITY, [STATE] = @STATE, [PIN] = @PIN, [DOB] = @DOB, [TYPEOFWORK] = @TYPEOFWORK WHERE [USERNAME] = @original_USERNAME AND (([FNAME] = @original_FNAME) OR ([FNAME] IS NULL AND @original_FNAME IS NULL)) AND (([LNAME] = @original_LNAME) OR ([LNAME] IS NULL AND @original_LNAME IS NULL)) AND (([MOB] = @original_MOB) OR ([MOB] IS NULL AND @original_MOB IS NULL)) AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL)) AND (([ADDR] = @original_ADDR) OR ([ADDR] IS NULL AND @original_ADDR IS NULL)) AND (([CITY] = @original_CITY) OR ([CITY] IS NULL AND @original_CITY IS NULL)) AND (([STATE] = @original_STATE) OR ([STATE] IS NULL AND @original_STATE IS NULL)) AND (([PIN] = @original_PIN) OR ([PIN] IS NULL AND @original_PIN IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([TYPEOFWORK] = @original_TYPEOFWORK) OR ([TYPEOFWORK] IS NULL AND @original_TYPEOFWORK IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_USERNAME" Type="String" />
                        <asp:Parameter Name="original_FNAME" Type="String" />
                        <asp:Parameter Name="original_LNAME" Type="String" />
                        <asp:Parameter Name="original_MOB" Type="String" />
                        <asp:Parameter Name="original_EMAIL" Type="String" />
                        <asp:Parameter Name="original_ADDR" Type="String" />
                        <asp:Parameter Name="original_CITY" Type="String" />
                        <asp:Parameter Name="original_STATE" Type="String" />
                        <asp:Parameter Name="original_PIN" Type="String" />
                        <asp:Parameter Name="original_DOB" Type="String" />
                        <asp:Parameter Name="original_TYPEOFWORK" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FNAME" Type="String" />
                        <asp:Parameter Name="LNAME" Type="String" />
                        <asp:Parameter Name="USERNAME" Type="String" />
                        <asp:Parameter Name="MOB" Type="String" />
                        <asp:Parameter Name="EMAIL" Type="String" />
                        <asp:Parameter Name="ADDR" Type="String" />
                        <asp:Parameter Name="CITY" Type="String" />
                        <asp:Parameter Name="STATE" Type="String" />
                        <asp:Parameter Name="PIN" Type="String" />
                        <asp:Parameter Name="DOB" Type="String" />
                        <asp:Parameter Name="TYPEOFWORK" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="USERNAME" PropertyName="Text" 
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
                        <asp:Parameter Name="TYPEOFWORK" Type="String" />
                        <asp:Parameter Name="original_USERNAME" Type="String" />
                        <asp:Parameter Name="original_FNAME" Type="String" />
                        <asp:Parameter Name="original_LNAME" Type="String" />
                        <asp:Parameter Name="original_MOB" Type="String" />
                        <asp:Parameter Name="original_EMAIL" Type="String" />
                        <asp:Parameter Name="original_ADDR" Type="String" />
                        <asp:Parameter Name="original_CITY" Type="String" />
                        <asp:Parameter Name="original_STATE" Type="String" />
                        <asp:Parameter Name="original_PIN" Type="String" />
                        <asp:Parameter Name="original_DOB" Type="String" />
                        <asp:Parameter Name="original_TYPEOFWORK" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div><br>
    </div>
    <!--Footer -->
            <div align="center" style="margin-top:58px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Akshay, Gaurav and Lalit - All Rights Reserved</p>
            </div>
    <!--END of Footer -->

    </form>
</body>
</html>
