<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Success.aspx.cs" Inherits="user_pyment_Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h1>Success</h1>
    <div class="row">
        <div class="col-md-offset-1 col-md-8">
            <asp:Label runat="server" Text="Your payment against the registration is successful. Please note the OrderId for future reference" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-offset-1 col-md-2">
            <label runat="server">Order Id</label>
        </div>
        <div class="col-md-3">
            <asp:Label runat="server" ID="lblOrderId" Font-Bold="true" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-offset-1 col-md-2">
            <label runat="server">Payment Id</label>
        </div>
        <div class="col-md-3">
            <asp:Label runat="server" ID="lblPaymentId" Font-Bold="true" />
        </div>
    </div>
        </div>
    </form>
</body>
</html>
