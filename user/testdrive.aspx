    <%@ Page Title="" Language="C#" MasterPageFile="~/user/user1.master" AutoEventWireup="true" CodeFile="testdrive.aspx.cs" Inherits="user_testdrive" ValidateRequest="true" %>


   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <script type="text/javascript">
           function submitForm() {
               var city = document.getElementById('<%= ddlcity.ClientID %>').value;
        var date = document.getElementById('<%= txtdate.ClientID %>').value;
               var pay = document.getElementById('<%= txtpay.ClientID %>').value;
<%--               var dealerSelected = document.getElementById('<%= GridView1.ClientID %>') !== null && document.getElementById('<%= GridView1.ClientID %>').getElementsByTagName('tr').length > 1;--%>
              <%-- var gridView = document.getElementById('<%= GridView1.ClientID %>');
               var selectedRowIndex = gridView.selectedIndex;--%>

               if (city === '') {
                   alert('Please select a city from the dropdown.');
                   return false;
               } else if (date === '') {
                   alert('Please select a date for the test drive.');
                   return false;
               }
               else if (pay === '') {
                   alert('Please select a payment for the test drive.');
                   return false;
               }
              

               return true;
           }

           function handlePaymentSuccess(response) {
               var paymentOrderIdField = document.getElementById('<%= PaymentOrderId.ClientID %>');
            paymentOrderIdField.value = response.razorpay_order_id;

            var paymentIdField = document.getElementById('<%= PaymentId.ClientID %>');
            paymentIdField.value = response.razorpay_payment_id;

            document.forms[0].submit();
        }
       </script>
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

           <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
               <script>
                   function OpenPaymentWindow(key, amountInSubunits, currency, name, descritpion, imageLogo, orderId, profileName, profileEmail, profileMobile, notes) {
                       notes = $.parseJSON(notes);
                       var options = {
                           "key": key, // Enter the Key ID generated from the Dashboard
                           "amount": amountInSubunits, // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
                           "currency": currency,
                           "name": name,
                           "description": descritpion,
                           "image": imageLogo,
                           "order_id": orderId, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
                           "handler": function (response) {
                               //window.location.href = "./pyment/Success.aspx?orderId=" + response.razorpay_order_id + "&paymentId=" + response.razorpay_payment_id;
                               //alert(response.razorpay_payment_id);
                               //alert(response.razorpay_order_id);
                               //alert(response.razorpay_signature)
                               handlePaymentSuccess(response);

                           },
                           "prefill": {
                               "name": profileName,
                               "email": profileEmail,
                               "contact": profileMobile
                           },
                           "notes": notes,
                           "theme": {
                               "color": "#F37254"
                           }
                       };
                       var rzp1 = new Razorpay(options);
                       rzp1.open();
                       rzp1.on('payment.failed', function (response) {
                           console.log(response.error);
                           alert("Oops, something went wrong and payment failed. Please try again later");
                       });
                   }

               </script>



 <form runat="server">
    <div class="service-breadcrumb">
				<div class="container">
					<div class="wthree_service_breadcrumb_left">
						<ul>
							<li><a href="home1.aspx">Home</a> <i>|</i></li>
							<li>Test Drive</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>Test Drive</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>

   <div class="sell-car w3l">
   	<div class="container">
           <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
           <asp:Label ID="Label2" runat="server" Text="" Visible="false"></asp:Label>
			    <!--/sell-price-grids -->
					<div class="sell">

			<h3>Book test Drive</h3>
            


			<div class="year">
				
				<div>
					
                    <asp:TextBox ID="txtname" runat="server" required="" 
     style= "outline: none;color: #999;
    padding: 10px 10px 10px 30px;
    margin: 0;
    width: 100%;
    border: none;
    border-bottom: 2px solid #686464;
    -webkit-appearance: none;
    font-family: 'Open Sans', sans-serif;" placeholder="Your Name" ReadOnly></asp:TextBox>
					
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
<%--                        ==================================--%>
				 <div class="year">
				
				<div>   
					
   <asp:TextBox ID="txtlname" runat="server" required=""  placeholder="Last Name"
    style= "outline: none;color: #999;
    padding: 10px 10px 10px 30px;
    margin: 0;
    width: 100%;
    border: none;
    border-bottom: 2px solid #686464;
    -webkit-appearance: none;
    font-family: 'Open Sans', sans-serif;"
   ReadOnly ></asp:TextBox>
					
					
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
  
<%--                        ==========================================--%>
                        	 <div class="year">
	
	<div>   
		
<asp:TextBox ID="txtemail" runat="server" required=""  placeholder="Email"
 style= "outline: none;color: #999;
 padding: 10px 10px 10px 30px;
 margin: 0;
 width: 100%;
 border: none;
 border-bottom: 2px solid #686464;
 -webkit-appearance: none;
 font-family: 'Open Sans', sans-serif;"
 ReadOnly></asp:TextBox>
		
		
		<div class="clearfix"></div>
	</div>
	<div class="clearfix"></div>
</div>

      <div class="city">
				
				<div>
						
                            <asp:TextBox ID="txtphoneno" runat="server" placeholder="Phone no"
                             style= "outline: none;color: #999;
    padding: 10px 10px 10px 30px;
    margin: 0;
    width: 100%;
    border: none;
    border-bottom: 2px solid #686464;
    -webkit-appearance: none;
    font-family: 'Open Sans', sans-serif;"
                          ReadOnly ></asp:TextBox>
									</div>
				<div class="clearfix"></div>
			</div>

     
			 <div class="city">
				
				<div>
						
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
        <asp:DropDownList ID="ddlcomp" runat="server"   AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="compname" DataValueField="compid" 
                        style="padding: 10px 46px;
    width: 100%;
    font-weight: normal;
    
    border: none;
    color: #848484;
    outline: none;
    font-size: 14px;
    border-bottom: 2px solid #686464;
    margin-bottom: 30px;
    background: url(images/car.png) no-repeat 1% center #ffffff;" 
                            onselectedindexchanged="ddlcomp_SelectedIndexChanged">
                                           
                                       </asp:DropDownList>
                                      
                        	<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [tbl_comp] WHERE ([status] = @status)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                                </SelectParameters>
                    </asp:SqlDataSource>
                                      
                        	</div>
				<div class="clearfix"></div>
			</div>

          

                        <div class="city">
				
				<div>
						
                          <asp:DropDownList ID="ddlmodel" runat="server" 
                             DataSourceID="SqlDataSource2" 
                              DataTextField="modelname" DataValueField="modelid" 
                              style="padding: 10px 46px;
    width: 100%;
    font-weight: normal;
    
    border: none;
    color: #848484;
    outline: none;
    font-size: 14px;
    border-bottom: 2px solid #686464;
    margin-bottom: 30px;
    background: url(images/car.png) no-repeat 1% center #ffffff;"
                              >
                                           
                                       </asp:DropDownList>
                                      
					      <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                              SelectCommand="SELECT * FROM [tbl_model] WHERE (([compid] = @compid) AND ([status] = @status))">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="ddlcomp" Name="compid" 
                                      PropertyName="SelectedValue" Type="Int32" />
                                  <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                                      
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
            </ContentTemplate>
                    </asp:UpdatePanel>
		
			<div class="city">
				
				<div>
						
                            <asp:DropDownList ID="ddlcity" runat="server" 
                                onselectedindexchanged="ddlcity_SelectedIndexChanged"
                                style="padding: 10px 46px;
    width: 100%;
    font-weight: normal;
    
    border: none;
    color: #848484;
    outline: none;
    font-size: 14px;
    border-bottom: 2px solid #686464;
    margin-bottom: 30px;
    background: url(images/location.png) no-repeat 1% center #ffffff;" AutoPostBack="True"
                                >
                                 
                            </asp:DropDownList>
					       
				</div>
				<div class="clearfix"></div>
			</div>

         
            <div class="city">
				
				<div>
						
                                <asp:Calendar ID="Calendar1" runat="server" onselectionchanged="Calendar1_SelectionChanged" BackColor="White"  OnDayRender="Calendar1_DayRender1"
                                    BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                                    ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                        VerticalAlign="Bottom" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                                        Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                    <TodayDayStyle BackColor="#CCCCCC" />
                                </asp:Calendar>
                                <asp:TextBox ID="txtdate" runat="server" placeholder="date"
                                style= "outline: none;color: #999;
    padding: 10px 10px 10px 30px;
    margin: 0;
    width: 100%;
    border: none;
    border-bottom: 2px solid #686464;
    -webkit-appearance: none;
    font-family: 'Open Sans', sans-serif;" 
                                ></asp:TextBox>
                     
				</div>

                

<%--                ==============================================--%>
				<div class="clearfix"></div>
			</div>
           	
            	 <div class="year">
	
	<div>   
		
<%--<asp:TextBox ID="TextBox1" runat="server" required=""  placeholder="date"--%>

<%--<asp:Timer ID="timer1" runat="server"  required="" placeholder="time"
style= "outline: none;color: #999;
 padding: 10px 10px 10px 30px;
 margin: 0;
 width: 100%;
 border: none;
 border-bottom: 2px solid #686464;
 -webkit-appearance: none;
 font-family: 'Open Sans', sans-serif;"
  ReadOnly></asp:Timer>
		--%>

       

<%--                ==============================================--%>
				<div class="clearfix"></div>
			</div>
           	
            	 <div class="year">
	
	<div>   
		
<asp:TextBox ID="txtpay" runat="server" required=""  placeholder="Payment"
 style= "outline: none;color: #999;
 padding: 10px 10px 10px 30px;
 margin: 0;
 width: 100%;
 border: none;
 border-bottom: 2px solid #686464;
 -webkit-appearance: none;
 font-family: 'Open Sans', sans-serif;"
  ReadOnly></asp:TextBox>
		
		
		<div class="clearfix"></div>
	</div>
	<div class="clearfix"></div>
</div>
  
                    <asp:Button ID="btnregi" runat="server" Text="PAYNOW" OnClick="btnregi_Click" BackColor="#FFCC99" BorderColor="Fuchsia" Font-Bold="True" Font-Size="Medium" ForeColor="Red" />             



			<div class="value-button">
				                <asp:Button ID="btnbook" runat="server" Text="Book" onclick="btnbook_Click" OnClientClick="return submitForm();"/>
						
				
			</div>

                    
                    <asp:HiddenField ID="PaymentOrderId" runat="server" />
                    <asp:HiddenField ID="PaymentId" runat="server" />


			<div class="clearfix"></div>
			</div>

		</div>

			
			</div>
             <h3>Click on select to chhose Dealer</h3>
             </br>
             
                  <asp:GridView ID="GridView1" runat="server" BackColor="White" Width="90%"  
                    BorderStyle="None"  BorderWidth="0px" CellPadding="4" DataKeyNames="dealerid" 
                    GridLines="Horizontal" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" >
               <Columns>
                   <asp:CommandField ShowSelectButton="True" ControlStyle-Font-Names="Arial"  ControlStyle-Font-Bold="true" ControlStyle-BorderColor="#343d3d" />
                   
               </Columns>
               <FooterStyle BackColor="White" Font-Names="Arial" ForeColor="#333333" />
               <HeaderStyle BackColor="#343d3d" Font-Bold="True" Font-Names="Arial" ForeColor="White" />
               <PagerStyle BackColor="#343d3d" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="White" ForeColor="#333333" Font-Names="Arial" />
               <SelectedRowStyle BackColor="#339966" Font-Bold="True" Font-Names="Arial" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#487575" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#275353" />
           </asp:GridView>
          </br>
          </br>

   

                          </form>
</asp:Content>



