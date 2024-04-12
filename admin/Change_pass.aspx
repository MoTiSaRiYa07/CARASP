<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Change_pass.aspx.cs" Inherits="admin_Change_pass" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bootstrap 4 Login Form Example</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        html, body {
            height: 100%;
        }
        .global-container {
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #f5f5f5;
        }
        form {
            padding-top: 10px;
            font-size: 14px;
            margin-top: 30px;
        }
        .card-title {
            font-weight: 300;
        }
        .btn {
            font-size: 14px;
            margin-top: 20px;
        }
        .login-form {
            width: 330px;
            margin: 20px;
        }
        .sign-up {
            text-align: center;
            padding: 20px 0 0;
        }
        .alert {
            margin-bottom: -30px;
            font-size: 13px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="pt-5">
        <div class="global-container">
            <div class="card login-form">
                <div class="card-body">
                    <h3 class="card-title text-center">Admin CHANGE PASSWORD</h3>
                    <div class="card-text">
                        <form runat="server">
                            <div class="form-group">
                                <label for="exampleInputEmail1">ENTER CURRENT PASSWORD</label>
                                 <asp:TextBox ID="txtcurrent"  class="form-control form-control-sm"  TextMode="Password" runat="server" />
                            </div>
                             <div class="form-group">
     <label for="exampleInputEmail1">ENTER NEW PASSWORD</label>
                                 <asp:TextBox ID="txtnew"  class="form-control form-control-sm"  TextMode="Password" runat="server" />
 </div> <div class="form-group">
     <label for="exampleInputEmail1">ENTER RE-PASSWORD</label>
                                 <asp:TextBox ID="txtret"  class="form-control form-control-sm" TextMode="Password" runat="server" />
 </div>
                            <asp:Button ID="loginBtn" runat="server" Text="ChangePassword" CssClass="btn btn-primary btn-block" OnClick="loginBtn_Click"/>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>