<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Outtime.aspx.cs" Inherits="Outtime" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Society Registration Form</title>
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
                  width: 26%;
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

    <!--enquiry form -->
        <div style="height:424px; margin-top:60px; padding-left:55px;" 
            class="login-card" >
            <div align="center"><img src="Images/icon.png"/></div>
            <h1>Update Out Time</h1><br>

            <div align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="DATE" HeaderText="DATE" SortExpression="DATE" />
                    <asp:BoundField DataField="NAME" HeaderText="NAME" 
                        SortExpression="NAME" />
                    <asp:BoundField DataField="MEMBER" HeaderText="MEMBER" 
                        SortExpression="MEMBER" />
                    <asp:BoundField DataField="INTIME" HeaderText="INTIME" 
                        SortExpression="INTIME" />
                    <asp:BoundField DataField="OUTTIME" HeaderText="OUTTIME" 
                        SortExpression="OUTTIME" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
            
                    SelectCommand="SELECT [DATE], [NAME], [MEMBER], [INTIME], [OUTTIME] FROM [VISITOR_REG] WHERE ([NAME] = @NAME)">
                    <SelectParameters>
                        <asp:SessionParameter Name="NAME" SessionField="name" Type="String" />
                    </SelectParameters>
            </asp:SqlDataSource>
            </div>

            <div style="margin-left:150px; margin-top:20px;">           
                    <asp:TextBox ID="TextBox4" placeholder="Out Time" runat="server" Height="42px" Width="250px"></asp:TextBox>

                    <div style="margin-left:270px; margin-top:-55px;">
                        <asp:Button ID="Button2" runat="server" Text="Set Out Time" Height="42px" Width="110px"
                            CssClass="btn" onclick="Button2_Click" />                  
                    </div>
            </div><br>
            <div align="center"><asp:Button ID="Button3" runat="server" Text="Update" 
                    BackColor="#4CAF50" onclick="Button3_Click" CssClass="btn" ForeColor="White" /></div>
            
    </div>  

    
    
    <!--END Reg form -->

    <!--Footer -->
            <div align="center" style="margin-top:92px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Housing Society Maintainance Solution - All Rights Reserved</p>
            </div>
    <!--END of Footer -->
    </form>
</body>
</html>
