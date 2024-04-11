<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="dealer_registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>CAR SERVICE| Dealer LogIn</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bike Race Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- fonts -->
<link href="//fonts.googleapis.com/css?family=Michroma" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Comfortaa:300,400,700" rel="stylesheet">
<!-- /fonts -->
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href='css/aos.css' rel='stylesheet prefetch' type="text/css" media="all" />
<link href="css/jquery.mb.thumbgallery.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/info.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/banner.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- /css -->

    
    

     <script language="javascript" type="text/javascript">

         function ValidateForm() {
             var name = document.getElementById("txtfname").value;
             var lname = document.getElementById("txtlname").value;
             var dname = document.getElementById("txtdname").value;
             var mo = document.getElementById("txtpno").value;
             var address = document.getElementById("txtaddress").value;
             var email = document.getElementById("txtemail").value;
             var password = document.getElementById("txtpass").value;
             var rpassword = document.getElementById("txtconpass").value;
             var file = document.getElementById("fu1").value;

             //codition 1

             if (name == "" && lname == "" && dname == "" && mo == "" && address == "" && email == "" && password == "" && rpassword == "" && file == "") {
                 alert("PLEASE ALL DETIL ARE FILL");
                 document.getElementById("txtname").focus();
                 return false;
             }
             else if (name == "") {
                 alert("USER NAME ARE NECESSORY ! PLZ ENTER USERNAME.........")
                 document.getElementById("txtname").focus();

                 return false;
             }
             else if (lname == "") {
                 alert(" LATES  NAME ARE NECESSORY ! PLZ ENTER LATESNAME.........")
                 document.getElementById("txtlname").focus();

                 return false;
             }

             else if (dname == "") {
                 alert(" delor NAME ARE NECESSORY ! PLZ ENTER LATESNAME.........")
                 document.getElementById("txtlname").focus();

                 return false;
             } 

             else if (mo == "") {
                 alert("MOBILE ARE NECESSORY ! PLZ ENTER MOBILE.........")
                 document.getElementById("txtpno").focus();

                 return false;
             }

             else if (address == "") {
                 alert("address ARE NECESSORY ! PLZ ENTER CITY.........")
                 document.getElementById("txtciy").focus();

                 return false;
             }
             else if (email == "") {
                 alert("EMAIL ARE NECESSORY ! PLZ ENTER EMAIL.........")
                 document.getElementById("txtemail").focus();

                 return false;
             } else if (password == "") {
                 alert("PASSWORD ARE NECESSORY ! PLZ ENTER PASSWORD.........")
                 document.getElementById("txtpassword").focus();

                 return false;
             } else if (rpassword == "") {
                 alert("REPETE PASSWORD  ARE NECESSORY ! PLZ ENTER REPTE PASSWORD.........")
                 document.getElementById("txtre_pass").focus();

                 return false;
             } else if (file == "") {
                 alert("FILE ARE NECESSORY ! PLZ FILE ARE ENTER.........")
                 document.getElementById("txtre_pass").focus();

                 return false;


             //codiso 2
             else if (txtname.length == 0) {
                 alert("ENTER USERNAME ! IT CAN NOT BLANK")
                 document.getElementById("txtname").focus();

                 return false;
             }

             else if (txtlanme.length == 0) {
                 alert("ENTER USERNAME ! IT CAN NOT BLANK")
                 document.getElementById("txtlname").focus();

                 return false;
             }


             else if (txtname.length < 4) {
                 alert("INVILDE LENGTH.. USER NAME ARE  4 CHARACRER LONG.........")
                 document.getElementById("txtname").focus();

                 return false;
             }

             else if (txtname.length < 4) {
                 alert("INVILDE LENGTH.. USER NAME ARE  4 CHARACRER LONG.........")
                 document.getElementById("txtlname").focus();

                 return false;
             }

             /////pass
             else if (password.length < 4 || password.length >= 10) {
                 alert("INVAILD LENGTH, PASSWORD SHOULD BE AT LEAST 4 CHARACTER LONG & MAX 10 CHAR.......")
                 document.getElementById("txtpass").focus();

                 return false;
             }



         }
     </script>


 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
   
     $("#btnsubmit").click(function () {
           
            var minLength = 5;
            var maxLength = 50;
            var isValid = true;
            var errorMessage = "";


            var username = $("#txtfname").val().trim();
            if (!username) {
                alert("Please enter a First name.");
                //errorMessage = "Please enter a First name.";

                isValid = false;
            } else if (username.length < minLength || username.length > maxLength) {
                //errorMessage = "First name must be between " + minLength + " and " + maxLength + " characters long.";
                alert("First name must be between " + minLength + " and " + maxLength + " characters long.");

                isValid = false;
            } else {
                var usernameRegex = /^[a-zA-Z]+$/;
                if (!usernameRegex.test(username)) {
                    //errorMessage = "First Name can only contain letters";
                    alert("First name can only contain letters");

                    isValid = false;
                }
            }

         if (isValid) {
             //var lastnameErrorMessage = "";
             var errorMessage = "";

             var username1 = $("#txtlname").val().trim();
             if (!username1) {
                 alert("Please enter a Last name.");
                 //lastnameErrorMessage = "Please enter a Last name.";
                 errorMessage = "Please enter a Last name.";

                 isValid = false;
             } else if (username1.length < minLength || username1.length > maxLength) {
                 //errorMessage = "Last name must be between " + minLength + " and " + maxLength + " characters long.";
                 alert("Last name must be between " + minLength + " and " + maxLength + " characters long.");

                 isValid = false;
             } else {
                 var username1Regex = /^[a-zA-Z]+$/;
                 if (!username1Regex.test(username1)) {
                     //errorMessage = "Last name can only contain letters";
                     alert(" Last name can only contain letters");

                     isValid = false;
                 }
             }
             $("#error_txtlname").text(errorMessage);

         }
         if (isValid) {
             //var lastnameErrorMessage = "";
             var errorMessage = "";

             var username1 = $("#txtdname").val().trim();
             if (!username1) {
                 alert("Please enter a Dealership name.");
                 //lastnameErrorMessage = "Please enter a Last name.";
                 //errorMessage = "Please enter a Last name.";

                 isValid = false;
             } else if (username1.length < minLength || username1.length > maxLength) {
                 //errorMessage = "Last name must be between " + minLength + " and " + maxLength + " characters long.";
                 alert("Last name must be between " + minLength + " and " + maxLength + " characters long.");

                 isValid = false;
             } else {
                 var username1Regex = /^[a-zA-Z0-9]+$/;
                 if (!username1Regex.test(username1)) {
                     alert(" Dealership name can only contain capital small letters and numbers.");

                     isValid = false;
                 }
             }
             $("#error_txtdname").text(errorMessage);

         }

         if (isValid) {
             var EmailId = $("#txtemail").val().trim();
             if (!EmailId) {
                 alert("Please Enter Email Address");
                 isValid = false;
             } else {
                 var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                 if (!emailRegex.test(EmailId)) {
                     alert('Invalid Email Address. Please enter valid email e.g abc@domain.com');
                     isValid = false;
                 }
             }
         }

         if (isValid) {
             var phoneNumber = $("#txtpno").val().trim();
             var errorMessage = "";

             if (!phoneNumber) {
                 alert("Please enter a phone number.");
                 //errorMessage = "Please enter a phone number.";

                 isValid = false;
             } else {
                 var phoneRegex = /^(\+91[\-\s]?)?[7-9]\d{9}$/;
                 if (!phoneRegex.test(phoneNumber)) {
                     // errorMessage = "Please enter a valid Indian phone number 91+.";
                     alert("Please enter a valid Indian phone number 91+.");

                     isValid = false;
                 }
             }
             $("#error_txtpno").text(errorMessage);

         }


         if (isValid) {
             var selectedCity = $("#ddladd").val();
             if (selectedCity == "0") {
                 alert("Please select a city.");
                 isValid = false;
             }
         }

         if (isValid) {
             var password = $("#txtpass").val().trim();
             if (!password) {
                 alert("Please enter a password.");
                 isValid = false;
             } else if (password.length < minLength) {
                 alert("Password must be at least " + minLength + " characters long.");
                 isValid = false;
             }
         }


         if (isValid) {
             var password1 = $("#txtconpass").val().trim();
             if (!password1) {
                 alert("Please enter a Retype password.");
                 isValid = false;
             } else if (password1.length < minLength) {
                 alert("Retype password must be at least " + minLength + " characters long.");
                 isValid = false;
             }
         }

        

         if (isValid) {

             var isValid = true;
             var file = $("#fu1").val();

             if (file == "") {
                 alert("Please choose a file.");
                 isValid = false;
             } else {
                 // Get the file extension
                 var extension = file.split('.').pop().toLowerCase();

                 // Check if the file extension is not jpg or png
                 if (extension !== 'jpg' && extension !== 'png') {
                     alert("Please choose a file with a .jpg or .png extension.");
                     isValid = false;
                 }
             }
         }


            return isValid;
        });
    });

</script>



    <style type="text/css">
        .auto-style1 {
            position: relative;
            display: table;
            border-collapse: separate;
            left: 0px;
            top: 0px;
            width: 677px;
        }
    </style>



</head>
<body>


<!-- navigation -->
<nav class="navbar navbar-default navbar-fixed-top" data-aos="flip-up">
    <div class="container">
		<%--<div class="search1">
			<form action="#" method="post">
				<div class="input-group">
					<input type="text" class="form-control" name="search" id="search2" placeholder="Search" required/>
					<span class="input-group-btn">
						<button class="btn btn-default" type="submit" ><i class="fa fa-search"></i></button>
					</span>
				</div>
			</form>
		</div>--%>
        <div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="dealer_home.aspx"><h1>CAR SERVICE</h1></a>
        </div>
    <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav slide-nav">
				
				
                <li><a href="dealer_login1.aspx">Log In</a></li>
               
                
			</ul>

        </div>		
    </div>
</nav>




    <section class="inner-w3ls">
    <div class="container">
		<h3 class="text-center aos-init aos-animate" data-aos="zoom-in">Signup</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb aos-init aos-animate" data-aos="zoom-in">
                    <li><a href="dealer_home.aspx">Home</a>
                    </li>
                    <li class="active">Signup</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
	</div>
    </section>
    
  <form id="Form1" runat="server">
  
<div class="container">
<div class="row">
<div class"col-lg-12">

  <div class="input-group">
				<%--	<span class="input-group-btn" id="Span1">@</span>
--%>					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
          <asp:TextBox ID="txtfname" runat="server" placeholder="FirstName" class="form-control" aria-describedby="basic-addon1" required=""></asp:TextBox>
    </div>
<%--					    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtfname">please! Enter your name</asp:RequiredFieldValidator>--%>

                       <br /><br /><br />

 <div class="input-group">
				<%--	<span class="input-group-btn" id="Span1">@</span>
--%>					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
          <asp:TextBox ID="txtlname" runat="server" placeholder="Last name" class="form-control" aria-describedby="basic-addon1" required=""></asp:TextBox>
    </div>
<%--					    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtlname">please! Enter your last name</asp:RequiredFieldValidator>--%>

                       <br /><br /><br />


               <div class="input-group">
				<%--	<span class="input-group-btn" id="Span1">@</span>
--%>					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
          <asp:TextBox ID="txtdname" runat="server" placeholder="Dealership name" class="form-control" aria-describedby="basic-addon1" required=""></asp:TextBox>
    </div>
<%--					    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdname">please! Enter your dealership name</asp:RequiredFieldValidator>--%>

                       <br /><br /><br />


                           <div class="input-group">
					<%--<span class="input-group-btn" id="basic-addon1">@</span>--%>
					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
                               <asp:TextBox ID="txtemail" runat="server" class="form-control" required="" aria-describedby="basic-addon1" placeholder="Email id"></asp:TextBox>
			            </div>  
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                runat="server" 
                                ControlToValidate="txtemail" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter correct email address</asp:RegularExpressionValidator>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtemail">Please! enter your email address</asp:RequiredFieldValidator>--%>

                              <br /><br /><br />
                               

                      <div class="input-group">
					<%--<span class="input-group-btn" id="Span4">@</span>--%>
					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
       <asp:TextBox ID="txtpno" runat="server" placeholder="Phone no" required="" class="form-control" aria-describedby="basic-addon1"></asp:TextBox>
    </div>
<%--					    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpno">please! Enter your phone no</asp:RequiredFieldValidator>--%>
                        
                             <br /><br /><br />
                       
            <%--        
                    <div class="input-group">
          <asp:TextBox ID="txtaddress" runat="server" placeholder="address" required="" class="form-control" aria-describedby="basic-addon1"></asp:TextBox>
    </div>

                               <br /><br /><br />     --%>
    <div class="auto-style1">
    <asp:DropDownList ID="ddladd" runat="server" CssClass="form-control">
        <asp:ListItem Text="-- Select CITY --" Value="0"></asp:ListItem>
                <asp:ListItem Text="Ahmedabad" Value="Ahmedabad"></asp:ListItem>
        <asp:ListItem Text="Surat" Value="Surat"></asp:ListItem>
        <asp:ListItem Text="Vadodara" Value="Vadodara"></asp:ListItem>
        <asp:ListItem Text="Rajkot" Value="Rajkot"></asp:ListItem>
        <asp:ListItem Text="Amarli" Value="Amarli"></asp:ListItem>
      <asp:ListItem Text="Navsari" Value="Navsari"></asp:ListItem>
   <asp:ListItem Text="Veraval" Value="Veraval"></asp:ListItem>
     <asp:ListItem Text="Bhuj" Value="Bhuj"></asp:ListItem>
<asp:ListItem Text="Patan" Value="Patan"></asp:ListItem>
<asp:ListItem Text="Botad" Value="Botad"></asp:ListItem>
        <asp:ListItem Text="Jamnagar" Value="Jamnagar"></asp:ListItem>
        <%-- Add more addresses as needed --%>
    </asp:DropDownList>
</div>


                                                  <br /><br /><br />


                          <div class="input-group">
					<%--<span class="input-group-addon" id="Span2">@</span>--%>
					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
          <asp:TextBox ID="txtpass" runat="server" placeholder="Password" required="" class="form-control" aria-describedby="basic-addon1" TextMode="Password"></asp:TextBox>
    </div>
<%--					    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpass">please! Enter password</asp:RequiredFieldValidator>--%>
 
                               <br /><br /><br />
    
   <div class="input-group">
					<%--<span class="input-group-addon" id="Span3">@</span>--%>
					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
          <asp:TextBox ID="txtconpass" runat="server" required="" placeholder="Confirm password" 
                        class="form-control" aria-describedby="basic-addon1" TextMode="Password" ></asp:TextBox>
    </div>
<%--					    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtconpass">please! enter confirm password</asp:RequiredFieldValidator>--%>
 
 <br /><br /><br />

                                <div class="input-group">
				<%--	<span class="input-group-addon" id="Span6">@</span>--%>
					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
        <asp:FileUpload ID="fu1" runat="server" class="form-control" aria-describedby="basic-addon1" />
    </div>
<%--					    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="fu1">please! choose your picture</asp:RequiredFieldValidator>--%>

                                <br /><br /><br />

                     <div class="col-md-12">
                    <%-- <button class="btn btn-primary aos-init aos-animate" type="submit" data-aos="flip-up">Send Message</button>--%>
   <center> 
                                        <%--BUTTON--%>
       <asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-primary aos-init aos-animate" 
                               data-aos="flip-up" onclick="btnsubmit_Click1" style=" background-color:#333333;"  OnClientClick="return ValidateForm();" /></center>
                               <br>

      <asp:Label ID="lblStatus" runat="server" Text="" CssClass="user"></asp:Label>

                           </div>



                           <%--<div class="controls">
                        <label>Full Name:</label>
                        <input class="form-control" id="name" required="" type="text" data-validation-required-message="Please enter your name.">
                        <p class="help-block"></p>
                    </div>--%>
  </div>
  </div>
  </div>
   

</form>

<section class="last-w3layouts">
	<div class="container">
		<a href="dealer_home.aspx" class="bottom-agile"><h2 class="text-center">CAR SERVICE</h2></a>
		<p class="text-center">&copy; CREATE BY ANKUSH MOTISARIYA && MY TEAM MEMBER </p>
	</div>	
</section>
<!-- last section -->
<!-- back to top -->
<a href="#0" class="cd-top">Top</a>
<!-- /back to top -->
<!-- js files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script src="js/top.js"></script> 
<script src="js/modernizr.min.js"></script>
<script src="js/index.js"></script>
<script src="js/jarallax.js"></script>
<script type="text/javascript">
    /* init Jarallax */
    $('.jarallax').jarallax({
        speed: 0.6,
        imgWidth: 1366,
        imgHeight: 768
    })
</script>
<script src='js/aos.js'></script>
<script src="js/aos2.js"></script>
<!-- js for recent pics section -->
<script src="js/jquery.mb.thumbGallery.js"></script>
<script>

    var isIframe = function() {
        var a = !1;
        try {
            self.location.href != top.location.href && ( a = !0 )
        } catch ( b ) {
            a = !0
        }
        return a
    };
    if ( !isIframe() ) {
        var logo = $( "<a href='#' style='position:absolute;top:0;z-index:1000'><img id='logo' border='0' src='#' alt='mb.ideas.repository'></a>" );
        $( "#wrapper" ).prepend( logo ), $( "#logo" ).fadeIn()
    }

    /* Extend or modify effects */
    jQuery.thumbGrid.transitions.fadeIn = {in: {x:"0", opacity:0, scale:0.9}, out: {x:0, opacity:0}};
    jQuery.thumbGrid.transitions.fadeOut = {in: {x:"0", opacity:0}, out: {x:0, scale:0.9, opacity:0}};
    jQuery.thumbGrid.transitions.slideLeft = {in: {x:$(window).width(), opacity:0}, out: {x:-$(window).width(), opacity:0}, ease:"cubic-bezier(.43,.18,.81,1.07)"};
    jQuery.thumbGrid.transitions.slideRight = {in: {x:0, opacity:0}, out: {x:$(window).width(), opacity:0}, ease:"cubic-bezier(.43,.18,.81,1.07)"};

    /* Initialize the gallery */
    jQuery("#thumbGrid").thumbGrid();

    /* customizer */
    jQuery("#effect").on("change",function(){
        var x = $(this).val();
        jQuery("#thumbGrid").data("nav_effect", x);
    });

    jQuery("#delay").on("change",function(){
        var x = parseFloat($(this).val());
        jQuery("#thumbGrid").data("nav_delay", x);
    });

    jQuery("#timing").on("change",function(){
        var x = parseFloat($(this).val());
        jQuery("#thumbGrid").data("nav_timing", x);
    });

    if(jQuery.isMobile){
        jQuery("body").css({marginBottom: 140})
    }


</script>
<!-- /js for recent pics section -->
<!-- js for testimonials -->
<script src="js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {

        // Slideshow 1
        $("#slider1").responsiveSlides({
            maxwidth: 800,
            speed: 800
        });
    });  
</script>
<!-- /js for testimonials -->
<!-- js for banner section -->
<script type="text/javascript" src="js/jquery.ba-cond.min.js"></script>
<script type="text/javascript" src="js/jquery.slitslider.js"></script>
<script type="text/javascript">
    $(function () {

        var Page = (function () {

            var $nav = $('#nav-dots > span'),
						slitslider = $('#slider').slitslider({
						    onBeforeChange: function (slide, pos) {

						        $nav.removeClass('nav-dot-current');
						        $nav.eq(pos).addClass('nav-dot-current');

						    }
						}),

						init = function () {

						    initEvents();

						},
						initEvents = function () {

						    $nav.each(function (i) {

						        $(this).on('click', function (event) {

						            var $dot = $(this);

						            if (!slitslider.isActive()) {

						                $nav.removeClass('nav-dot-current');
						                $dot.addClass('nav-dot-current');

						            }

						            slitslider.jump(i + 1);
						            return false;

						        });

						    });

						};

            return { init: init };

        })();

        Page.init();

        /**
        * Notes: 
        * 
        * example how to add items:
        */

        /*
				
        var $items  = $('<div class="sl-slide sl-slide-color-2" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1"><div class="sl-slide-inner bg-1"><div class="sl-deco" data-icon="t"></div><h2>some text</h2><blockquote><p>bla bla</p><cite>Margi Clarke</cite></blockquote></div></div>');
				
        // call the plugin's add method
        ss.add($items);

        */

    });
</script>
<!-- /js for banner section -->


</body>
</html>


