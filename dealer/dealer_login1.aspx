<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dealer_login1.aspx.cs" Inherits="dealer_dealer_login1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>CAR SERVICE | Dealer LogIn</title>
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
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $("#btnsubmit").click(function () {
            var EmailId = $("#txtdname").val();
            if ($.trim(EmailId).length == 0) {
                alert("PLEASE ENTER DEALERNAME AND LOGIN ");
                return false;
            }
           
        });
    });
    
    $(document).ready(function () {
        $("#btnsubmit").click(function () {
            var password = $("#txtpass").val().trim();
            if (!password) {
                alert("Please enter a password.");
                return false;
            }
        });
    });

</script>
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
				
				
                <li><a href="registration.aspx">sign up</a></li>
                <li><a href="forgot.aspx">ForgotPassword</a></li>

                
			</ul>

        </div>		
    </div>
</nav>




    <section class="inner-w3ls">
    <div class="container">
		<h3 class="text-center aos-init aos-animate" data-aos="zoom-in">Log in</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb aos-init aos-animate" data-aos="zoom-in">
                    <li><a href="dealer_home.aspx">Home</a>
                    </li>
                    <li class="active">log in</li>
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
					<%--<span class="input-group-addon" id="basic-addon1">@</span>--%>
					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
                               <asp:TextBox ID="txtdname" runat="server" class="form-control" aria-describedby="basic-addon1" placeholder="Enter DealerName"></asp:TextBox>
			            </div>  
   
                                         </br>
                                         </br>

   
                         <div class="input-group">
					<%--<span class="input-group-addon" id="Span1">@</span>--%>
					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
                               <asp:TextBox ID="txtpass" runat="server" class="form-control" aria-describedby="basic-addon1" placeholder="Password" TextMode="Password"></asp:TextBox>
				
                    </div>

                     </br>
                     </br>

                     <div class="col-md-12">
                    <%-- <button class="btn btn-primary aos-init aos-animate" type="submit" data-aos="flip-up">Send Message</button>--%>
    <asp:Button ID="btnsubmit" runat="server" Text="Log in" class="btn btn-primary aos-init aos-animate" 
                               data-aos="flip-up" onclick="btnsubmit_Click" style=" background-color:#333333;"/>
                               <br>
                           </div> 
                           
                           
</div>
</div>
</div>



</form>

<section class="last-w3layouts">
	<div class="container">
		<a href="dealer_home.aspx" class="bottom-agile"><h2 class="text-center">CAR SERVICE</h2></a>
		<p class="text-center">&copy; CAR SERVICE. All Rights Reserved </p>
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
