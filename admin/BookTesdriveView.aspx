<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookTesdriveView.aspx.cs" Inherits="admin_Default555"  EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 189px;
            color:black;
           resize:inline;

        }
        .auto-style3 {
            width: 364px;
        }
        .auto-style4 {
            width: 100%;
            height: 255px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 587px;
            text-align: left;
        }

        .body {

            background-color:brown;
        
        }


        .auto-style7 {
            width: 189px;
            color: black;
            resize: inline;
            height: 46px;
        }
        .auto-style8 {
            width: 364px;
            height: 46px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style5">
            <asp:Label ID="Label1" runat="server" Text="VIEW DATA TEST DRIVE BOOK" CssClass="auto-style1" Font-Bold="True" Font-Size="30pt" BackColor="White" Font-Names="Algerian" ForeColor="#CC0000"></asp:Label>
        </div>
        <table border="2" class="auto-style1" style="margin: auto; padding: 8px; border: 7px solid #000000; font-family: 'Bahnschrift SemiLight Condensed'; font-size: large; font-weight: 300; font-style: inherit; font-variant: small-caps; text-transform: capitalize; color: #FF0000; line-height: normal; background-color: #FFFFFF; vertical-align: middle; text-align: center; text-indent: inherit; white-space: pre-wrap; word-spacing: normal; position: static; visibility: visible; table-layout: fixed; border-collapse: collapse; border-spacing: 30px; empty-cells: show; caption-side: top; list-style-type: square; list-style-position: inside;">
            <tr>
                <td class="auto-style2" style="font-family: 'Arial Black'; font-size: 26px; font-weight: bold; font-style: italic;">VIEW DATA SHOW TESTDRIVE ID</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Inset" Font-Size="25pt" ForeColor="#FF3300"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Text="VIEW DATA SHOW" OnClick="Button1_Click" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="20pt" ForeColor="#FF3300" />
                    <br />
                    <asp:Label ID="Label22" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

<%--      =================VIEW TABLE============--%><%--  --%>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <table border="1" class="auto-style4"  style="margin: auto; padding: 3px; border: 7px solid #000000; font-family: 'Bahnschrift SemiLight Condensed'; font-size: large; font-weight: 300; font-style: inherit; font-variant: small-caps; text-transform: capitalize; color: #FF0000; line-height: normal; background-color: #FFFFFF; vertical-align: middle; text-align: center; text-indent: inherit; white-space: normal; word-spacing: normal; position: static; visibility: visible; table-layout: fixed; border-collapse: collapse; border-spacing: 30px; empty-cells: show; caption-side: top; list-style-type: square; list-style-position: inside;>
            <tr>
                <td class="auto-style5" colspan="2"><strong>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="30pt" Text="TEST DRIVE ID SHOW DATA" Font-Names="Algerian" ForeColor="#990000"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="YOUR ENTER ID ===" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="Black" Font-Italic="False"></asp:Label>
                    <asp:Label ID="Labelid" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="#FF3300"></asp:Label>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="YOUR FIRST NAME===" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Labelfn" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="#FF3300"></asp:Label>
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="YOUR LAST NAME===" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Labelln" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="#FF3300"></asp:Label>
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="YOUR PHONE NUMBER===" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Labelcon" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="#FF3300"></asp:Label>
                    <br />
                     
 <asp:Label ID="Label3" runat="server" Text="YOUR EMAIL ID===" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="Black"></asp:Label>
 <asp:Label ID="lblemail" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="#FF3300"></asp:Label>
 <br />
                    <asp:Label ID="Label12" runat="server" Text="YOUR  COMPNY ID===" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Labelci" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="#FF3300"></asp:Label>
                    <br />
                    <asp:Label ID="Label14" runat="server" Text="YOUR MODEL ID===" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Labelmi" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="#FF3300"></asp:Label>
                    <br />
                    <asp:Label ID="Label16" runat="server" Text="YOUR CITY===" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Labelcity" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="#FF3300"></asp:Label>
                    <br />
                    <asp:Label ID="Label18" runat="server" Text="YOUR BOOKING DATE===" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Labeldate" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="#FF3300"></asp:Label>
                    <br />
                    <asp:Label ID="Label20" runat="server" Text="YOUR DELER ID===" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="Black"></asp:Label>
                    <asp:Label ID="Labeldid" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="#FF3300"></asp:Label>
                    <br />
                    <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="Black" Text="YOUR STATUS==="></asp:Label>
                    <asp:Label ID="lblstu" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="20pt" ForeColor="#FF3300"></asp:Label>
                </td>
                <td class="auto-style5" contenteditable="false">
                    
                    <%--<asp:Image ID="Image1" runat="server" ImageUrl="~/admin/company_logo/LOGO3.jpg" />--%>
                    <asp:Label ID="Label23" runat="server" Text="TESTDRIVE SUESSFULL BOOK" Font-Bold="True" Font-Italic="False" Font-Names="Algerian" ForeColor="Black"></asp:Label>
                    &nbsp;<br />
                    <asp:Image ID="Image2" runat="server" Height="221px" ImageUrl="~/admin/company_logo/LOGO.jpg" Width="184pt" />
                    
                </td>
            </tr>
        </table>
                           
                   </asp:Panel>
                             <asp:Button ID="Button3" runat="server" BackColor="#FF3300" Text="DOWNLOADER PDF FOR EXAL" OnClick="Button3_Click" Font-Names="Algerian" Font-Size="15pt" ViewStateMode="Enabled" />

           <asp:Button ID="Button5" runat="server" BackColor="#FF9966" BorderStyle="Solid" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="#FF0066" OnClick="Button5_Click" Text="Downloader PDF " />

                   <asp:Button ID="Button2" runat="server" BackColor="#FF9966" BorderStyle="Solid" Font-Bold="True" Font-Names="Algerian" Font-Size="15pt" ForeColor="#FF0066"  Text=" SEND MAIIL" OnClick="Button2_Click" />



    <p>
        </p>
    </form>
    </body>
</html>
