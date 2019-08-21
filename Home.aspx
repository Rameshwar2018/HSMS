<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Start WOWSlider.com HEAD section -->
    <link rel="stylesheet" type="text/css" href="slider/engine1/style.css" />
    <script type="text/javascript" src="slider/engine1/jquery.js"></script>
    <!-- End WOWSlider.com HEAD section -->

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
                    
                                     
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" Height="39px" Width="145px" 
                            style="padding-left:20px; padding-right:10px; border-radius:5px; margin-top:12px; padding-top:10px; margin-left:20px; text-decoration:none; border:none;" 
                            CssClass="btn-link" BackColor="#4CAF50" BorderColor="#666666" 
                            BorderStyle="Ridge" href="SocietyRegistration.aspx">Register Society</asp:LinkButton>
                    
                                     
                </ul>
                
            </div>

        </div>
    </div>
    <!--END Menu Bar -->

    <!-- Slider section -->
        <div id="wowslider-container1" style="margin-top:62px;">
        <div class="ws_images"><ul>
		        <li><a href="http://wowslider.com/vi"><img src="slider/data1/images/websitebanner03.jpg" alt="bootstrap carousel" title="WebsiteBanner03" id="wows1_0"/></a></li>
		        <li><img src="slider/data1/images/websitebanner05.png" alt="WebsiteBanner05" title="WebsiteBanner05" id="wows1_1"/></li>
	        </ul></div>
	        <div class="ws_bullets"><div>
		        <a href="#" title="WebsiteBanner03"><span><img src="slider/data1/tooltips/websitebanner03.jpg" alt="WebsiteBanner03"/>1</span></a>
		        <a href="#" title="WebsiteBanner05"><span><img src="slider/data1/tooltips/websitebanner05.png" alt="WebsiteBanner05"/>2</span></a>
	        </div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">wowslider.net</a> by WOWSlider.com v8.7</div>
        <div class="ws_shadow"></div>
        </div>	
        <script type="text/javascript" src="slider/engine1/wowslider.js"></script>
        <script type="text/javascript" src="slider/engine1/script.js"></script>
    <!-- End of Slider section -->



    <div style="margin-top:20px; margin-left:65px;">

           
           <br /><br />
           <asp:Label ID="Label2" runat="server" 
               style="text-align:justify; margin-left:30px; font-size:25px;" Text="VIEW SOCIETIES" ></asp:Label>
           <br /><br />
           <asp:Button ID="Button8" runat="server" BackColor="#4CAF50" CssClass="btn" style="margin-left:30px;"
               ForeColor="White" Text="Start" onclick="Button8_Click1" Width="195px" />

           
    
           <br><br><br>
           <div style="margin-left:35px;">
           <asp:Label ID="Label1" runat="server" CssClass="text-left" 
               Text="OUR SERVICES" style="text-align:justify; font-size:25px;"></asp:Label></div>
           <br>
           
           <div>
                     <asp:Button ID="Button1" runat="server" CssClass="btn" 
                         Text="Society Maintainance" Width="252px" 
                         style="border-bottom-style:solid;" BorderColor="#CCFF66" Height="53px"
                         onclick="Button1_Click" />
                     <br>
                     <asp:Button ID="Button2" runat="server" CssClass="btn" 
                         Text="HouseKeeping Services " Width="252px" BorderColor="#CCFF99" 
                         Height="53px" onclick="Button2_Click" />
                     &nbsp;&nbsp;
                     <br>
                     <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Event Manager" 
                         Width="252px" BorderColor="#CCFF99" Height="53px" 
                         onclick="Button3_Click" />
                     <br>
                     <asp:Button ID="Button4" runat="server" CssClass="btn" Text="Security Services" 
                         Width="252px" BorderColor="#CCFF99" Height="53px" 
                         onclick="Button4_Click" />
                     <br>
                     <asp:Button ID="Button5" runat="server" CssClass="btn" 
                         Text="HouseOwner Management " Width="252px" BorderColor="#CCFF99" 
                         Height="53px" onclick="Button5_Click" />
                     <br>
                     <asp:Button ID="Button6" runat="server" CssClass="btn" 
                         Text="Expenses Management" Width="252px" BorderColor="#CCFF99" 
                         Height="53px" onclick="Button6_Click" />
                     <br>
                     <asp:Button ID="Button7" runat="server" CssClass="btn" Text="Accounting" 
                         Width="252px" BorderColor="#CCFF99" Height="53px" 
                         onclick="Button7_Click" />
                     <br>
                            
                            
                    
                     <br />
               
               
               </div>  
     </div>
      
      
     <!--INFO--> 
      <div style="margin-left:380px;margin-right:50px; line-height:33px; text-align: justify; text-justify: inter-word; margin-top:-580px; background-color:F5F5F5;">
            <h4 style="font-size:25px;" align="center"><strong>Welcome to Housing Society Maintainance Solution</strong></h4><br>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A housing society is a situation popular in India with a group of house owners within a residential complex, usually one consisting of buildings that each has flats. A housing society's apartments or premises are formed as per relevant laws for smooth functioning of utilities and other amenities provided to them. The housing society formed must be formally registered with registrar of co-operatives. In India, each state has its own rules in this regard. Each building in same premise may have separate housing society or one. 
            <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Many housing societies form one federation. Housing societies run on the fees or charges levied by them on house or flat owners. Some of the housing societies in Mumbai are cash rich, having millions of rupees in their bank account.
            The Managing Committee takes care of the affairs of the Housing Society like appointment of service providers, maintenance of Society premises, solving member's grievances, maintenance of books of accounts and taking care of safety and security
            <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; For optimal housing society maintenance solution processes, you need robust functionality for managing your facilities. Support for housing society maintenance solution helps you record and track materials on the basis of both quantity and value. Using this software we can reduce costs for transportation, order fulfillment, and material handling – while improving customer service. 
            This software is user friendly and hence easy to use. Flat user can plan to meeting, and document the events and issue work order check out the due detail & give feedback related to the work.
            </p>
      </div>
      <hr style="margin-top:70px;">
      <div style="margin-top:40px;"><img src="Images/features123.jpg" style=" box-shadow:0px 0px 8px 1px;"/></div>
      <div class="row main-low-margin" style="margin-left:50px; margin-top:-180px;">

            <div class="col-md-3 col-sm-3 text-center">
                <img src="Images/features.png"/>
                <h3>TESTED DESIGN</h3>
                
            </div>
            <div class="col-md-3 col-sm-3 text-center">
                <img src="Images/features.png"/>
                <h3>WELL DOCUMENTED</h3>
                
            </div>
            <div class="col-md-3 col-sm-3 text-center">
                <img src="Images/features.png"/>
                <h3>EASY TO CUSTOMIZE</h3>
                
            </div>
            <div class="col-md-3 col-sm-3 text-center">
                <img src="Images/features.png"/>
                <h3>EASY TO USE</h3>
                
            </div>
            
      </div>


    <!--Footer -->
            <div align="center" style="margin-top:50px; background-color:#222222; color:White; height:50px; padding-top:15px;">
                <p>Copyright © 2017 Housing Society Maintainance Solutions - All Rights Reserved</p>
            </div>
    <!--END of Footer -->



    </form>



</body>
</html>
