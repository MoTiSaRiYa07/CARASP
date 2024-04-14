<%@ Page Language="C#" MasterPageFile="~/user/user1.master" AutoEventWireup="true" CodeFile="Showtest.aspx.cs" Inherits="user_Showtest" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> Bookings</h3>
          </div>
        </div>
        
       


          <div class="service-breadcrumb">
			<div class="container">
				<div class="wthree_service_breadcrumb_left">
					<ul>
						<li><a href="home1.aspx">Home</a> <i>|</i></li>
						<li>Test Drive Booking Show Drive</li>
					</ul>
				</div>
				<div class="wthree_service_breadcrumb_right">
					<h3> Show Test Drive</h3>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
          <br /> <br />

<form runat="server">


<asp:GridView ID="GridView1" runat="server" Width="90%" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="testdrive_id" EmptyDataText="There are no data records to display." DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
<asp:BoundField DataField="testdrive_id" HeaderText="Test-Drive ID" ReadOnly="True" 
            SortExpression="testdrive_id"></asp:BoundField>
<asp:BoundField DataField="user_name" HeaderText="First Name" 
            SortExpression="user_name"></asp:BoundField>
<asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name"></asp:BoundField>
<asp:BoundField DataField="email" HeaderText="Email" SortExpression="email"></asp:BoundField>
<asp:BoundField DataField="phoneno" HeaderText="Phone No" SortExpression="phoneno"></asp:BoundField>
<asp:BoundField DataField="compid" HeaderText="Company ID" SortExpression="compid"></asp:BoundField>
<asp:BoundField DataField="modelid" HeaderText="Model ID" SortExpression="modelid"></asp:BoundField>
<asp:BoundField DataField="city" HeaderText="City" SortExpression="city"></asp:BoundField>
<asp:BoundField DataField="date" HeaderText="Date" SortExpression="date"></asp:BoundField>
<asp:BoundField DataField="dealerid" HeaderText="DealerID" SortExpression="dealerid"></asp:BoundField>
<%--<asp:BoundField DataField="payment_order_id" HeaderText="PaymentOrderID" SortExpression="payment_order_id"></asp:BoundField>--%>
<asp:BoundField DataField="payment_id" HeaderText="PaymentID" SortExpression="payment_id"></asp:BoundField>

    <asp:BoundField DataField="status" HeaderText="STATUS" SortExpression="status"></asp:BoundField>

</Columns>  
               <FooterStyle BackColor="#990000" Font-Names="Arial" ForeColor="White" Font-Bold="True" />
               <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Names="Arial" ForeColor="White" />
               <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
               <RowStyle BackColor="#FFFBD6" ForeColor="#333333" Font-Names="Arial" BorderColor="#343d3d" />
               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" Font-Names="Arial" ForeColor="Navy"    BorderColor="#343d3d" />
               <SortedAscendingCellStyle BackColor="#FDF5AC" />
               <SortedAscendingHeaderStyle BackColor="#4D0000" />
               <SortedDescendingCellStyle BackColor="#FCF6C0" />
               <SortedDescendingHeaderStyle BackColor="#820000" />

</asp:GridView>
    </form>
 <asp:SqlDataSource runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [tbl_testdrive3] WHERE [testdrive_id] = @testdrive_id" 
        InsertCommand="INSERT INTO [tbl_testdrive3] ([user_name], [last_name], [email],[phoneno], [compid], [modelid], [city], [date], [dealerid],  [payment_id], [status]) VALUES (@user_name, @last_name, @email, @phoneno, @compid, @modelid, @city, @date, @time, @dealerid, payment_id, @status)" 
        SelectCommand="SELECT [testdrive_id], [user_name], [last_name], [email], [phoneno], [compid], [modelid], [city], [date], [dealerid], [payment_order_id], [payment_id], [status] FROM [tbl_testdrive3]" 
        UpdateCommand="UPDATE [tbl_testdrive3] SET [user_name] = @user_name, [last_name] = @last_name, [email] = @email, [phoneno] = @phoneno, [compid] = @compid, [modelid] = @modelid, [city] = @city, [date] = @date, [dealerid] = @dealerid , [status] = @status WHERE [testdrive_id] = @testdrive_id" 
        ID="SqlDataSource1"><DeleteParameters>
<asp:Parameter Name="testdrive_id" Type="Int32"></asp:Parameter>
</DeleteParameters>
<InsertParameters>
<asp:Parameter Name="user_name" Type="String"></asp:Parameter>
<asp:Parameter Name="last_name" Type="String"></asp:Parameter>
    <asp:Parameter Name="email" Type="String"></asp:Parameter>

<asp:Parameter Name="phoneno" Type="String"></asp:Parameter>
<asp:Parameter Name="compid" Type="Int32"></asp:Parameter>
<asp:Parameter Name="modelid" Type="Int32"></asp:Parameter>
<asp:Parameter Name="city" Type="String"></asp:Parameter>
<asp:Parameter Name="date" Type="String"></asp:Parameter>
<asp:Parameter Name="dealerid" Type="Int32"></asp:Parameter>
<asp:Parameter Name="payment_order_id" Type="String"></asp:Parameter>
<asp:Parameter Name="payment_id" Type="String"></asp:Parameter>

    <asp:Parameter Name="status" Type="String"></asp:Parameter>

</InsertParameters>
<UpdateParameters>
<%--<asp:Parameter Name="user_name" Type="String"></asp:Parameter>
<asp:Parameter Name="last_name" Type="String"></asp:Parameter>
    <asp:Parameter Name="email" Type="String"></asp:Parameter>

<asp:Parameter Name="phoneno" Type="String"></asp:Parameter>
<asp:Parameter Name="compid" Type="Int32"></asp:Parameter>
<asp:Parameter Name="modelid" Type="Int32"></asp:Parameter>
<asp:Parameter Name="city" Type="String"></asp:Parameter>
<asp:Parameter Name="date" Type="String"></asp:Parameter>
<asp:Parameter Name="dealerid" Type="Int32"></asp:Parameter>
<asp:Parameter Name="testdrive_id" Type="Int32"></asp:Parameter>--%>
        <asp:Parameter Name="status" Type="String"></asp:Parameter>

</UpdateParameters>

     <SelectParameters>
        <asp:SessionParameter Name="userEmail" SessionField="email" Type="String" />

    </SelectParameters>

</asp:SqlDataSource>
 
          <AlternatingRowStyle BackColor="White" />
<EditRowStyle BackColor="#efefef" />
<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
<RowStyle BackColor="#EFF3FB" />
<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
<SortedAscendingCellStyle BackColor="#F5F7FB" />
<SortedAscendingHeaderStyle BackColor="#6D95E1" />
<SortedDescendingCellStyle BackColor="#E9EBEF" />
<SortedDescendingHeaderStyle BackColor="#4870BE" />
     <br /><br /><br />

  <%--<asp:Button ID="Button1" runat="server" Text="Genrate pdf"
       style="color: red; font-size: 20px; width: 300px; height: 50px; text-align: center; display: block; margin: 0 auto;" OnClick="Button1_Click1" />
   --%>       

   </section>
   </section>

     

</asp:Content>


