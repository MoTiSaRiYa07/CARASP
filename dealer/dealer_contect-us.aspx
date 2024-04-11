<%@ Page Title="" Language="C#" MasterPageFile="~/dealer/dealer.master" AutoEventWireup="true" CodeFile="dealer_contect-us.aspx.cs" Inherits="dealer_dealer_contect_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<html><head>
<title>CarTrade | Contact</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="Bike Race Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, &#10;Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design">
<!-- fonts -->
<link href="//fonts.googleapis.com/css?family=Michroma" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Comfortaa:300,400,700" rel="stylesheet">
<!-- /fonts -->
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/aos.css" rel="stylesheet prefetch" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
<!-- /css -->
</head>
<body>
<%--<!-- navigation -->
<nav class="navbar navbar-default navbar-fixed-top aos-init aos-animate" data-aos="flip-up">
    <div class="container">
        <div class="navbar-header">
			<button class="navbar-toggle collapsed" aria-expanded="false" aria-controls="navbar" type="button" data-toggle="collapse" data-target="#navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"><h1>Bike Race</h1></a>
        </div>
        <div class="navbar-collapse collapse" id="navbar">
			<ul class="nav navbar-nav slide-nav">
				<li><a href="index.html">Home</a></li>
				<li><a href="about.html">About</a></li>
				<li><a href="news.html">News</a></li>
				<li><a href="schedule.html">Schedule</a></li>
				<li><a href="gallery.html">Gallery</a></li>
				<li><a href="drivers.html">Drivers</a></li>
				<li class="dropdown">
					<a class="dropdown-toggle" href="#" data-toggle="dropdown">Short Codes <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="typo.html">Typography</a></li>
						<li><a href="icons.html">Icons</a></li>
					</ul>
				</li>
				<li class="active current"><a href="contact.html">Contact</a></li>
			</ul>
        </div><!--/.nav-collapse -->
		<div class="search1">
			<form action="#" method="post">
				<div class="input-group">
					<input name="search" class="form-control" id="search2" required="" type="text" placeholder="Search">
					<span class="input-group-btn">
						<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
					</span>
				</div>
			</form>
		</div>	
    </div>
</nav>
<!-- /navigation -->--%> 
<!-- Page Content -->
<!-- header section -->
<section class="inner-w3ls">
    <div class="container">
		<h3 class="text-center aos-init aos-animate" data-aos="zoom-in">Contact Us</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb aos-init aos-animate" data-aos="zoom-in">
                    <li><a href="dealer_home.aspx">Home</a></li>
                    <li class="active">Contact</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
	</div>
</section>
<!-- /header section -->
<section class="contact-w3layouts">
	<!-- Page Content -->
    <div class="container">
        <!-- Map Column -->
        <div class="col-md-8 aos-init aos-animate" data-aos="flip-left">
            <!-- Embedded Google Map -->
			<div class="map-w3ls">
				<iframe class="googlemaps" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d380510.6741687111!2d-88.01234121699822!3d41.83390417061058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1455598377120" allowfullscreen="" style="border:0"></iframe>
			</div>
        </div>
        <!-- Contact Details Column -->
        <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
        <div class="col-md-4 aos-init aos-animate" data-aos="flip-right">
            <h3>Contact Details</h3>
            <p><i class="fa fa-map-marker"></i><%# Eval("") %></p>
            <p><i class="fa fa-phone"></i> (123) 456-7890</p>
            <p><i class="fa fa-envelope-o"></i> <a href="mailto:bhupendra.rai0646@gmail.com">bhupendra.rai0646@gmail.com</a></p>
			<ul class="social-icons2">
				<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
			</ul>
        </div>
        </ItemTemplate>
        </asp:ListView>
    </div>
</section>
<section class="contact-w3ls">	
    <!-- Contact Form -->
	<div class="container">	
		<div class="col-md-12">
			<h3 class="text-center aos-init" data-aos="flip-up">Send us a Message</h3>
			<form name="sentMessage" id="contactForm" action="" method="post" novalidate="">
                <div class="control-group form-group aos-init" data-aos="flip-up">
                    <div class="controls">
                        <label>Full Name:</label>
                        <%--<input class="form-control" id="name" required="" type="text" data-validation-required-message="Please enter your name.">--%>
                        <asp:TextBox ID="txtname" runat="server" class="form-control" required="" data-validation-required-message="Please enter your name."></asp:TextBox>
                        <p class="help-block"></p>
                    </div>
                </div>
                <div class="control-group form-group aos-init" data-aos="flip-up">
                    <div class="controls">
                        <label>Phone Number:</label>
                        <%--<input class="form-control" id="phone" required="" type="tel" data-validation-required-message="Please enter your phone number.">--%>
                        <asp:TextBox ID="txtpno" runat="server" class="form-control" required="" data-validation-required-message="Please enter your phone number."></asp:TextBox>
                    <div class="help-block"></div></div>
                </div>
                <div class="control-group form-group aos-init" data-aos="flip-up">
                    <div class="controls">
                        <label>Email Address:</label>
                      <%--  <input class="form-control" id="email" required="" type="email" data-validation-required-message="Please enter your email address.">--%>
                      <asp:TextBox ID="txtemail" runat="server" class="form-control" required="" data-validation-required-message="Please enter your email address."></asp:TextBox>
                    <div class="help-block"></div></div>
                </div>
				<div class="control-group form-group aos-init" data-aos="flip-up">
                    <div class="controls">
						<label>Message:</label>
                      <%--  <textarea class="form-control" id="message" style="resize:none" required="" maxlength="999" rows="10" cols="100" data-validation-required-message="Please enter your message"></textarea>--%>
                      <asp:TextBox ID="txtmsg" runat="server" class="form-control" style="resize:none" 
                            required="" maxlength="999" rows="10" 
                            data-validation-required-message="Please enter your message" Columns="100" 
                            TextMode="MultiLine"></asp:TextBox>
                    <div class="help-block"></div></div>
                </div>
                <div id="success"></div>
                <!-- For success/fail messages -->
                <%--<button class="btn btn-primary aos-init" type="submit" data-aos="flip-up">Send Message</button>--%>
                <asp:Button ID="btnsubmit" runat="server" Text="Send Message" 
                    class="btn btn-primary aos-init"  data-aos="flip-up" onclick="btnsubmit_Click"></asp:Button>

<div class="control-group form-group aos-init" data-aos="flip-up">
                    <div class="controls">
                        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                        </div>
                        </div>
                


            </form>
		</div>
	</div>
</section>	
<%--<section class="last-w3layouts">
	<div class="container">
		<a class="bottom-agile" href="index.html"><h2 class="text-center">Bike Race</h2></a>
		<p class="text-center">© 2017 Bike Race. All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank"> W3layouts </a></p>
	</div>	
</section>
<!-- last section -->
<!-- back to top -->--%>
<a class="cd-top" href="#0">Top</a>
<!-- /back to top -->	
<!-- js files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script src="js/top.js"></script> 
<script src="js/modernizr.min.js"></script>
<script src="js/index.js"></script>
<script src="js/aos.js"></script>
<script src="js/aos2.js"></script>
<!-- js for contact form -->
<script src="js/jqBootstrapValidation.js"></script>
<script src="js/contact_me.js"></script>
<!-- //js for contact form -->		
<!-- /js files -->

		</body></html>


</asp:Content>

