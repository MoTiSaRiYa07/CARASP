<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regis.aspx.cs" Inherits="user_login_Regis" %>

<!DOCTYPE html>
<!-- Website - www.codingnepalweb.com -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Validation in HTML | CodingNepal</title>
    <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link For Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600;700&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Open Sans', sans-serif;
}

body {
/*  display: flex;*/
  align-items: center;
  justify-content: center;
  padding: 0 25px;
  min-height: 20vh;
  background: #1BB295;
}

form {
  padding:15px;
  background: #fff;
  max-width: 500px;
  width: 100%;
  border-radius: 17px;
/*  box-shadow: 0 15px 15px rgba(0, 0, 0, 0.05);
*/}

form h2 {
  font-size: 25px;
  text-align: center;
  margin: 0px 0 30px;
}

form .form-group {
  margin-bottom: 15px;
  position: relative;
}

form label {
  display: block;
  font-size: 15px;
  margin-bottom: 7px;
}

form input,
form select {
  height: 44px;
  padding: 10px;
  width: 100%;
  font-size: 15px;
  outline: none;
  background: #fff;
  border-radius: 3px;
  border: 1px solid #bfbfbf;
}

form input:focus,
form select:focus {
  border-color: #9a9a9a;
}

form input.error,
form select.error {
  border-color: #f91919;
  background: #f9f0f1;
}

form small {
  font-size: 14px;
  margin-top: 5px;
  display: block;
  color: #f91919;
}

form .password i {
  position: absolute;
  right: 0px;
  height: 45px;
  top: 28px;
  font-size: 13px;
  line-height: 45px;
  width: 45px;
  cursor: pointer;
  color: #939393;
  text-align: center;
}

.submit-btn {
  margin-top: 30px;
}

.submit-btn input {
  color: white;
  border: none;
  height: auto;
  font-size: 16px;
  padding: 13px 0;
  border-radius: 5px;
  cursor: pointer;
  font-weight: 500;
  text-align: center;
  background: #1BB295;
  transition: 0.2s ease;
}

.submit-btn input:hover {
  background: #179b81;
}
    </style>

   
</head>
<body>
    <form id="form1" runat="server">
        <h2>Form Validation</h2>
        <div class="form-group name">
  <%--    <asp:Label runat="server" Text="Full Name"></asp:Label>--%>
            <label>Enter Frist Name</label>
            <asp:TextBox runat="server" ID="txtname" placeholder="Enter your full name"></asp:TextBox>
        </div>

        <div class="form-group Lastname">
<%--    <asp:Label runat="server" AssociatedControlID="Lastname" Text="Last name"></asp:Label>--%>
                        <label>Enter Last Name</label>

    <asp:TextBox runat="server" ID="txtlname" placeholder="Enter your fast name"></asp:TextBox>
</div>

        
        <div class="form-group con">
<%--            <asp:Label runat="server" AssociatedControlID="con" Text="Contantnumber"></asp:Label>--%>
            <label>ContantNumber</label>
            <asp:TextBox runat="server" ID="TextBox1" placeholder="Enter your email address"></asp:TextBox>
        </div>


        
        <div class="form-group gender">
            <asp:Label runat="server" AssociatedControlID="gender" Text="Gender"></asp:Label>
            <asp:DropDownList runat="server" ID="gender">
                <asp:ListItem Text="Select your gender" Value="" Disabled="true" Selected="true"></asp:ListItem>
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group email">
            <asp:Label runat="server" AssociatedControlID="email" Text="Email Address"></asp:Label>
            <asp:TextBox runat="server" ID="email" placeholder="Enter your email address"></asp:TextBox>
        </div>
        <div class="form-group password">
            <asp:Label runat="server" AssociatedControlID="password" Text="Password"></asp:Label>
            <asp:TextBox runat="server" ID="password" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
            <i id="pass-toggle-btn" class="fa-solid fa-eye"></i>
        </div>

         <div class="form-group password">
     <asp:Label runat="server" AssociatedControlID="password" Text="Password"></asp:Label>
     <asp:TextBox runat="server" ID="TextBox2" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
     <i id="pass-toggle-btn" class="fa-solid fa-eye"></i>
 </div>
        
        <div class="form-group submit-btn">
            <asp:Button runat="server" ID="btnSubmit" Text="Submit"  />
        </div>
    </form>

    <script src="script.js"></script>
</body>
</html>