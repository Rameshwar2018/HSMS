<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SocietyDesc.aspx.cs" Inherits="SocietyDesc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Society Description</title>
    <link href="stylesheets/bootstrap.css" rel="stylesheet" />
    <link href="stylesheets/style.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="Images/icon.png" type="image/png" />

</head>
<body>
    <form id="form1" runat="server">
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
    
        
        <div style="border:0px solid black; width:100%; margin-top:100px; height:530px;">
            <h2 id="custom-title-h2-1" class="ui--animation " style="text-align: center; font-size:45px;">
                <asp:Label ID="Label2" runat="server" ForeColor="#CC0000"></asp:Label></h2><div class="auto-format ui--animation"><p></p><center>To manage Cooperative Housing Society and Resident Welfare Association professionally.</center><p></p>
            &nbsp;</div><hr style="margin-top:-15px;">
         <img src="Images/Society.jpg" width="450px" style="margin-left:280px; margin-top:30px;"> 
         <div Width="400px" style="margin-left:780px; margin-top:-420px;"> 
            
             <asp:DataList ID="DataList1" runat="server" DataKeyField="SNAME" 
                 DataSourceID="SqlDataSource1" Height="576px" Width="307px">
                 <ItemTemplate>
                     <strong>Name of Secretory:</strong>
                     <asp:Label ID="FNAMELabel" runat="server" Text='<%# Eval("FNAME") %>' />
                     <asp:Label ID="LNAMELabel" runat="server" Text='<%# Eval("LNAME") %>' />
                     <br /><br />
                     <strong>Name of Society:</strong>
                     <asp:Label ID="SNAMELabel" runat="server" Text='<%# Eval("SNAME") %>' />
                     <br /><br />
                     <strong>No. of Flats:</strong>
                     <asp:Label ID="NOFLabel" runat="server" Text='<%# Eval("NOF") %>' />
                     <br /><br />
                     <strong>Mobile No.:</strong>
                     <asp:Label ID="MOBLabel" runat="server" Text='<%# Eval("MOB") %>' />
                     <br /><br />
                     <strong>EMAIL:</strong>
                     <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                     <br /><br />
                     <strong>Address:</strong>
                     <asp:Label ID="ADDRLabel" runat="server" Text='<%# Eval("ADDR") %>' />
                     <br /><br />
                     <strong>City:</strong>
                     <asp:Label ID="CITYLabel" runat="server" Text='<%# Eval("CITY") %>' />
                     <br /><br />
                     <strong>State:</strong>
                     <asp:Label ID="STATELabel" runat="server" Text='<%# Eval("STATE") %>' />
                     <br /><br />
                     <strong>Pin Code:</strong>
                     <asp:Label ID="PINLabel" runat="server" Text='<%# Eval("PIN") %>' />
                     <br /><br />
                     <strong>Type of Society:</strong>
                     <asp:Label ID="TYPELabel" runat="server" Text='<%# Eval("TYPE") %>' />
                     <br /><br />
                     <br />
                 </ItemTemplate>
             </asp:DataList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
                 SelectCommand="SELECT [FNAME], [LNAME], [SNAME], [NOF], [MOB], [EMAIL], [ADDR], [CITY], [STATE], [PIN], [TYPE] FROM [ADMIN_REG] WHERE ([SNAME] = @SNAME)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="Label2" Name="SNAME" PropertyName="Text" 
                         Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </div>
    </div>
    <br>

    <div style="margin-left:350px;">
        <asp:Label ID="Label1" runat="server" Text="View Authorized Society Registration Document" Font-Size="17pt" 
            ForeColor="Maroon" Font-Bold="False" Font-Names="Segoe UI Light"></asp:Label>
    </div>

    <div style="margin-left:820px; margin-top:-55px;">
     
        <asp:GridView ID="GridView1" CssClass="Gridview" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="DOCS" BorderColor="White" >
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                    <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" BackColor="#4CAF50" ForeColor="White" CssClass="btn" OnClick="lnkDownload_Click"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

    <!--Footer -->
            <div align="center" style="margin-top:60px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Housing Society Maintainance Solutions - All Rights Reserved</p>
            </div>
    <!--END of Footer -->




    </form>
</body>
</html>
