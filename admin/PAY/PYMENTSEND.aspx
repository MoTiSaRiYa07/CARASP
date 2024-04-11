<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PYMENTSEND.aspx.cs" Inherits="admin_ankush" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="StyleSheet.css">
   
    <title>PYMENT SEND FROM</title>
</head>
<body>
    <div class="main">
        <div class="mail-area">
            <h1>PAYMENT SEND</h1>
            <form id="form1" runat="server">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input" placeholder="Email Id" required></asp:TextBox>
                <asp:TextBox ID="txtSubject" runat="server" CssClass="input" placeholder="Subject" required></asp:TextBox>
                <!-- <asp:TextBox ID="txtPayment" runat="server" CssClass="input" placeholder="Payment" required></asp:TextBox> -->
                <asp:TextBox ID="txtMessage" runat="server" CssClass="input" TextMode="MultiLine" placeholder="Message" required></asp:TextBox>
                <asp:FileUpload ID="fileAttachment" runat="server" CssClass="up" />

                <asp:Button ID="btnSend" runat="server" CssClass="input btn" Text="Send" OnClick="btnSend_Click"/>
                <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
            </form>
        </div>
    </div>
</body>
</html>
