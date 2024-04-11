<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rest_pass.aspx.cs" Inherits="dealer_rest_pass" %>

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
		<h3 class="text-center aos-init aos-animate" data-aos="zoom-in">Recover Password</h3>
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
    <div class="mid-cls">
                <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
<div class="swm-right-w3ls">
  <div class="input-group">
				<%--	<span class="input-group-btn" id="Span1">@</span>
--%>					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
          <asp:TextBox ID="txtre" runat="server" placeholder="Enter code" class="form-control" aria-describedby="basic-addon1" required=""></asp:TextBox>
    </div>
<%--					    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtfname">please! Enter your name</asp:RequiredFieldValidator>--%>

                       <br /><br /><br />

 <div class="input-group">
				<%--	<span class="input-group-btn" id="Span1">@</span>
--%>					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
          <asp:TextBox ID="txtpass" runat="server" placeholder="New Password" class="form-control" aria-describedby="basic-addon1" required=""></asp:TextBox>
    </div>
<%--					    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtlname">please! Enter your last name</asp:RequiredFieldValidator>--%>

                       <br /><br /><br />


               <div class="input-group">
				<%--	<span class="input-group-btn" id="Span1">@</span>
--%>					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
          <asp:TextBox ID="txtpass1" runat="server" placeholder="Re-Type sPassword" class="form-control" aria-describedby="basic-addon1" required=""></asp:TextBox>
    </div>
<%--					    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdname">please! Enter your dealership name</asp:RequiredFieldValidator>--%>

                       <br /><br /><br />


                    
                                        <%--BUTTON--%>
       <asp:Button ID="btnsubmit" runat="server" Text="RESET" class="btn btn-primary aos-init aos-animate" 
                               data-aos="flip-up"  style=" background-color:#333333;"  OnClientClick="return ValidateForm();" OnClick="btnsubmit_Click" /></center>
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
    </body>
    </html>