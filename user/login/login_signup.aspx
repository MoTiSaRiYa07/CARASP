<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_signup.aspx.cs" Inherits="user_login_signup" %>


<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">

<head>
	<title>CAR SERVIES | Login | Sign-Up </title>
	<!-- Meta tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Stunning sign up & login Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
	/>
	<script>
	    addEventListener("load", function () { setTimeout(hideURLbar, 0); }, false); function hideURLbar() { window.scrollTo(0, 1); }
	</script>
	<!-- Meta tags -->
		<!-- font-awesome icons -->
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<!-- //font-awesome icons -->
	<!--stylesheets-->
	<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
	<!--//style sheet end here-->

<link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">
    <style>

        .for1
        {
            text-align:center;
            color:red;
             width:100px;
             height: 100px;
              animation-duration: 4s;
             transform-style:flat;
        }
        .ankush 
        {
             color: #000;
    outline: none;
    font-size: 14px;
    padding: .6em .7em;
    margin: 0px 0px 23px;
    border:none;
    -webkit-appearance: none;
    display: inline-block;
    background: rgb(255, 255, 255);
    transition: all 0.5s ease-in-out;
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    -ms-transition: all 0.5s ease-in-out;
    box-sizing: border-box;
     width: 100%

        }

        .user 
        {
            color:red;
            text-align:center;
            font-size:30px;
        }
       
        .auto-style1 {
            width: 24%;
            display: flex;
            -webkit-justify-content: space-between;
            justify-content: space-between;
            -webkit-flex-direction: column;
            flex-direction: column;
            margin-left: 645px;
            margin-right: auto;
            margin-top: 0;
            margin-bottom: 0;
        }
       
    </style>

    <script language="javascript" type="text/javascript">

        function ValidateForm()
        {
            var name = document.getElementById("txtname").value;
            var lname = document.getElementById("txtlname").value;
            var mo = document.getElementById("txtpno").value;
            var city = document.getElementById("txtciy").value;
            var email = document.getElementById("txtemail").value;
            var password = document.getElementById("txtpassword").value;
            var rpassword = document.getElementById("txtre_pass").value;

            //codition 1

            if (name == "" && lname == "" && mo == "" && city == "" && email == "" && password == "" && rpassword == "") {
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
            else if (mo == "") {
                alert("MOBILE ARE NECESSORY ! PLZ ENTER MOBILE.........")
                document.getElementById("txtpno").focus();

                return false;
            }

            else if (city == "") {
                alert("CITY ARE NECESSORY ! PLZ ENTER CITY.........")
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
            }


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
                document.getElementById("txtpassword").focus();

                return false;
            }

    

        }
    </script>

     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<script type="text/javascript">
    //$(document).ready(function () {
    //    $("#btn_signup").click(function () {
    //        var EmailId = $("#txtemail").val();
    //        if ($.trim(EmailId).length == 0) {
    //            alert("Please Enter Email Address");
    //            return false;
    //        }
    //        if (validateEmailAddress(EmailId)) {
    //            return true;
    //        }
    //        else {
    //            alert('Invalid Email Address.Please enter valid email e.g abc@domain.com');
    //            return false;
    //        }
    //    });
    //});
    //function validateEmailAddress(EmailId) {
    //    var expr = /^[a-zA-Z0-9._]+[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
    //    if (expr.test(EmailId)) {
    //        return true;
    //    }
    //    else {
    //        return false;
    //    }
    //}
    //$(document).ready(function () {
    //    $("#btn_signup").click(function () {
    //        var phoneNumber = $("#txtpno").val().trim();
    //        if (!phoneNumber) {
    //            alert("Please enter a phone number.");
    //            return false;
    //        }
    //        var phoneRegex = /^(\+91[\-\s]?)?[7-9]\d{9}$/; // Regular expression for a 10-digit phone number
    //        if (!phoneRegex.test(phoneNumber)) {
    //            alert("Please enter a valid Indian phone number.");
    //            return false;
    //        }
    //        return true;
    //    });
    //});

    //$(document).ready(function () {
    //    $("#btn_signup").click(function () {
    //        var username = $("#txtname").val().trim();
    //        if (!username) {
    //            alert("Please enter a username.");
    //            return false;
    //        }
    //        // Minimum and maximum length for the username
    //        var minLength = 5;
    //        var maxLength = 50; // Adjust the maximum length as needed
    //        if (username.length < minLength || username.length > maxLength) {
    //            alert("Username must be between " + minLength + " and " + maxLength + " characters long.");
    //            return false;
    //        }
    //        // Regular expression for letters, numbers, and underscores
    //        var usernameRegex = /^[a-zA-Z]+$/;
    //        if (!usernameRegex.test(username)) {
    //            alert("Username can only contain letters");
    //            return false;
    //        }
    //        return true;
    //    });
    //});

    //$(document).ready(function () {
    //    $("#btn_signup").click(function () {
    //        var username1 = $("#txtlname").val().trim();
    //        if (!username1) {
    //            alert("Please enter a Last name.");
    //            return false;
    //        }
    //        // Minimum and maximum length for the username
    //        var minLength = 5;
    //        var maxLength = 50; // Adjust the maximum length as needed
    //        if (username1.length < minLength || username.length > maxLength) {
    //            alert("Lastname must be between " + minLength + " and " + maxLength + " characters long.");
    //            return false;
    //        }
    //        // Regular expression for letters, numbers, and underscores
    //        var username1Regex = /^[a-zA-Z]+$/;
    //        if (!username1Regex.test(username)) {
    //            alert("Lastname can only contain letters");
    //            return false;
    //        }
    //        return true;
    //    });
    //});

    //$(document).ready(function () {
    //    $("#btn_signup").click(function () {
    //        var password = $("#txtpassword").val().trim();
    //        if (!password) {
    //            alert("Please enter a password.");
    //            return false;
    //        }
    //        // Minimum length for the password
    //        var minLength = 5;
    //        if (password.length < minLength) {
    //            alert("Password must be at least " + minLength + " characters long.");
    //            return false;
    //        }

    //    });
    //});

    //$(document).ready(function () {
    //    $("#btn_signup").click(function () {
    //        var password1 = $("#txtre_pass").val().trim();
    //        if (!password1) {
    //            alert("Please enter a  Retypepassword.");
    //            return false;
    //        }
    //        // Minimum length for the password
    //        var minLength = 5;
    //        if (password1.length < minLength) {
    //            alert("Retypepassword must be at least " + minLength + " characters long.");
    //            return false;
    //        }
    //        var selectedCity = $("#ddlcity").val();
    //        if (selectedCity == "0") {
    //            alert("Please select a city.");
    //            return false;
    //        }


    //    });
    //});


    $(document).ready(function () {
        $("#btn_signup").click(function () {
           
            var minLength = 5;
            var maxLength = 50;
            var isValid = true;
            var errorMessage = "";


            var username = $("#txtname").val().trim();
            if (!username) {
                alert("Please enter a First name.");
                //errorMessage = "Please enter a First name.";

                isValid = false;
            }
            //else if (username.length < minLength || username.length > maxLength) {
            //    //errorMessage = "First name must be between " + minLength + " and " + maxLength + " characters long.";
            //    alert("First name must be between " + minLength + " and " + maxLength + " characters long.");

            //    isValid = false;
            //}
            else {
                var usernameRegex = /^[a-zA-Z]+$/;
                if (!usernameRegex.test(username)) {
                    //errorMessage = "First Name can only contain letters";
                    alert("First name can only contain letters");

                    isValid = false;
                }
            }
            $("#error_txtname").text(errorMessage);


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
                var selectedCity = $("#ddlcity").val();
                if (selectedCity == "0") {
                    alert("Please select a city.");
                    isValid = false;
                }
            }

            if (isValid) {
                var EmailId = $("#txtemail").val().trim();
                if (!EmailId) {
                    alert("Please Enter Email Address");
                    isValid = false;
                } else {
                    var emailRegex = /^[^\s@]+@(ac\.in|[^@\s]+\.[^@\s]+)$/;
                    if (!emailRegex.test(EmailId)) {
                        alert('Invalid Email Address. Please enter valid email e.g abc@domain.com');
                        isValid = false;
                    }
                }
            }

          
            //if (isValid) {
            //    var EmailId1 = $("#txtotp").val().trim();
            //    if (!EmailId1) {
            //        alert("Please Enter Email Otp");
            //        isValid = false;
            //    } else {
            //        //var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            //        if (!emailRegex.test(EmailId)) {
            //            //alert('Invalid Email Address. Please enter valid email e.g abc@domain.com');
            //            //isValid = false;
            //        }
            //    }
            //}





            if (isValid) {
                var password = $("#txtpassword").val().trim();
                if (!password) {
                    alert("Please enter a password.");
                    isValid = false;
                } else if (password.length < minLength) {
                    alert("Password must be at least " + minLength + " characters long.");
                    isValid = false;
                }
            }

            if (isValid) {
                var password1 = $("#txtre_pass").val().trim();
                if (!password1) {
                    alert("Please enter a Retype password.");
                    isValid = false;
                } else if (password1.length < minLength) {
                    alert("Retype password must be at least " + minLength + " characters long.");
                    isValid = false;
                }
            }

            return isValid;
        });
    });



</script>

    
 


    
</head>

<body>
<form runat="server">
	<h1  class="header-w3ls">
			&nbsp;CAR SERVICE </h1>
        
			<div class="auto-style1">
<div class="swm-left-w3ls">
				
			<div class="main">
			<div class="icon-head-wthree">
			        <%--<h2><span class="fa fa-diamond t-w3" aria-hidden="true"></span></h2>--%>
					<h4 >Sign Up  



  
                                </h4>
					</div>
                </div>
    <div class="form-left-to-w3l">
    <asp:TextBox ID="txtname" placeholder="FirstName" runat="server"></asp:TextBox>
    <br />
    <span id="error_txtname" style="color: red;></span>
</div>
<div class="clear"></div>


<%--									<div class="form-left-to-w3l">	
                                        <asp:TextBox ID="txtlname" placeholder="Last Name" runat="server"></asp:TextBox>

                            <div class="clear"></div>
						</div>  --%>

        <div class="form-left-to-w3l">
    <asp:TextBox ID="txtlname" placeholder="Last Name" runat="server"></asp:TextBox>
    <br />
    <span id="error_txtlname" style="color: red;></span>
</div>
<div class="clear"></div>


                          <div class="form-left-to-w3l ">
                    <asp:TextBox ID="txtpno" placeholder="Phone no" runat="server"></asp:TextBox>
<%--                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpno" ></asp:RequiredFieldValidator>--%>
    <br />
    <span id="error_txtpno" style="color: red;></span>
</div>
                    <div class="clear"></div>
		



                <%--<div class="form-left-to-w3l ">
                    <asp:TextBox ID="txtciy" placeholder="City" runat="server"></asp:TextBox>
                    <div class="clear"></div>
				</div>--%>
    <div class="form-left-to-w3l">
    <asp:DropDownList ID="ddlcity" runat="server" CssClass="ankush" placeholder="Select City">
<asp:ListItem Text="PLEASE SELECT CITY TO DROPDOWN" Value="0"></asp:ListItem>
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

    </asp:DropDownList>
    <div class="clear"></div>
</div>

			
   
            
            	<div class="form-left-to-w3l">
				
					
                    <asp:TextBox ID="txtemail" placeholder="Email"  runat="server"></asp:TextBox>

                    <div class="clear"></div>
                </div>
   <%--    	
    <div class="form-left-to-w3l">

				
    <asp:TextBox ID="txtotp"  placeholder="EnterOtp"  runat="server"></asp:TextBox>

    <div class="clear"></div>
</div>--%>
				<div class="form-left-to-w3l ">

					 <div >
                    <asp:TextBox ID="txtpassword" placeholder="Password" runat="server" TextMode="Password" CssClass="ankush"></asp:TextBox> 
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>--%>

<%--                        TextMode="Password" style=" width: 100%;--%>
   <%-- color: #000;
    outline: none;
    font-size: 14px;
    padding: .6em .7em;
    margin: 0px 0px 23px;
    border:none;
    -webkit-appearance: none;
    display: inline-block;
    background: rgb(255, 255, 255);
    transition: all 0.5s ease-in-out;
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    -ms-transition: all 0.5s ease-in-out;
    box-sizing: border-box;"></asp:TextBox>--%>

					<div class="clear"></div>
				</div>
                <div class="form-left-to-w3l ">

					
                    <asp:TextBox ID="txtre_pass" placeholder="Retype password" runat="server" 
                        TextMode="Password" Text="Enter repte password" style=" width: 100% ;
    color: #000;
    outline: none;
    font-size: 14px;
    padding: .6em .7em;
    margin: 0px 0px 23px;
    border:none;
    -webkit-appearance: none;
    display: inline-block;
    background: rgb(255, 255, 255);
    transition: all 0.5s ease-in-out;
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    -ms-transition: all 0.5s ease-in-out;
    box-sizing: border-box;"></asp:TextBox>

					<div class="clear"></div>
				</div>
            
<div >
				
    <asp:Button ID="btn_signup"  style=" width: 100%;
    background:#f10b59;
    outline: none;
    color: #fff;
    font-size: 13px;
    border: 1px solid #fff;
    padding: 9px 6px;
    letter-spacing: 1px;
    text-transform: uppercase;
    cursor: pointer;
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;" runat="server"  Class="btnn" Text="Sign Up" 
        onclick="btn_signup_Click" OnClientClick="return ValidateForm();" /><br>
				<div class="clear"></div>
			</div>
			</div>

           <a href="Login2.aspx" class="for1" >LOGIN NOW </a>
            

    </div>

                    <asp:Label ID="lblStatus" runat="server" Text="" CssClass="user"></asp:Label>

    </div>

   
			<div class="copy">
		<p>&copy;CAR SERVICE MANGMENT SYSTEM</p>
	</div>
    

    </form>
  <%--  <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {
            var txtemail = document.getElementById('txtemail');
            var btnotp = document.getElementById('<%= btnotp.ClientID %>'); // Get button ID in JavaScript
        txtemail.addEventListener('keyup', function () {
            btnotp.disabled = txtemail.value.trim() === ''; // Disable button if textbox is empty
        });
    });
</script>--%>


</body>
</html>