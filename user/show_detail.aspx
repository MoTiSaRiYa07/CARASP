<%@ Page Title="" Language="C#" MasterPageFile="~/user/user1.master" AutoEventWireup="true" CodeFile="show_detail.aspx.cs" Inherits="user_shoe_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <div class="service-breadcrumb">
				<div class="container">
					<div class="wthree_service_breadcrumb_left">
						<ul>
							<li><a href="home.aspx">Home</a> <i>|</i></li>
							<li><a href="cars.aspx">Search Cars </a> <i>|</i></li>
							<li>Used Cars</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>Used Cars</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>

            <div class="sell-car w3l">
					<div class="container">
                <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lbl1" runat="server" Visible="False"></asp:Label>
					   <div class="top-grid-used-cars">
					      <h4 class="tittle">
                    <asp:Label ID="lblcompname" runat="server" Text="Label"></asp:Label>&nbsp;<asp:Label ID="lblmodel" runat="server" Text=""></asp:Label></h4>
								<div class="car-details">
									 <div class="usd-img">
                        <asp:Image ID="imgcar" runat="server" />
                                     <%--<img alt="Used Cars" src="images/4.jpg">--%></div>
									<div class="car-infos">
										<div class="car-info car-info-1">
                            <asp:Image ID="imgcal" runat="server" ImageUrl="images/calender.png"/>
											<%--<img alt="Used Cars" src="images/calender.png">--%>
											<p>
                                <asp:Label ID="lblcal" runat="server" Text="Label"></asp:Label></p>
										</div>
										
										<div class="car-info car-info-3">
                                    <asp:Image ID="imgfuel" runat="server" ImageUrl="images/petrol.png"/>
											<%--<img alt="Used Cars" src="images/petrol.png">--%>
											<p>
                                        <asp:Label ID="lblfuel" runat="server" Text="Label"></asp:Label></p>
										</div>
										<div class="car-info car-info-4">
                                            <asp:Image ID="imgtransmission" runat="server" ImageUrl="images/gear.png"/>
											<%--<img alt="Used Cars" src="images/gear.png">--%>
											<p>
                                                <asp:Label ID="lbltransmission" runat="server" Text="Label"></asp:Label></p>
										</div>
										
										<div class="clearfix"></div>
									</div>
								</div>

								<div class="car-form">
										<p>Write your comment <span>here !</span></p>
										<div class="">
											<h3> <span>  </span></h3>
										</div>
										<h4></h4>
										<div class="login-top">
											 <form action="#" method="post">
									<asp:TextBox ID="txtname" runat="server" class="email" placeholder="username" required="" ReadOnly></asp:TextBox>

                                         <asp:TextBox ID="txtemail" runat="server" class="email" placeholder="Email" required="" ReadOnly></asp:TextBox>
							                  <asp:TextBox ID="txtcommit" runat="server" class="email" required="" placeholder="comment"></asp:TextBox>

												<%--<input name="email" class="email" required="" type="text" placeholder="Email">--%>
<%--                                                <asp:TextBox ID="txtpass" runat="server" class="password" required="" placeholder="Password"></asp:TextBox>--%>

												<%--<input name="password" class="password" required="" type="password" placeholder="Password">--%>	
												
<%--												<label for="brand3"><span></span>Get updates on email</label>--%>
											</form>
											</div>
								
										<a href="#">
                                                    <asp:LinkButton ID="lnksubmit" runat="server" 
                                            onclick="lnksubmit_Click" >Submit</asp:LinkButton>
                                                        </a>
										<h6>Your contact details are safe with us.</h6>
									</div>
								<div class="clearfix"></div>
							</div>
								<!-- /mid-->
							<div class="middle-grid w3-agile">
									<div class="car-condition">
										&nbsp;&nbsp;&nbsp;<h3 >Price List(By Variants)</h3>
                                        </br>
										 <ul class="col-md-6 col-sm-6">
                                         <h1>Variants &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Price</h1>
                                                            <asp:DataList ID="dlversion" runat="server">
                                                            <ItemTemplate>
                                                              
                                                                <a  href="version.aspx?vid=<%#Eval("versionid") %>&modelid=<%#Eval("modelid") %>">
                                                                
                                                                 <li>
                                                                    <asp:Label Font-Bold="true" Font-Size="Larger"   ID="Label1" runat="server" Text='<%#Eval("modelname")%>' ></asp:Label>
                                                                    <asp:Label Font-Bold="true" Font-Size="Larger" ID="lblversion" runat="server" Text='<%#Eval("versionname")%>' ></asp:Label>
                                                                    </br>
                                                                     <asp:Label Font-Size="Small" BorderColor="DimGray" ForeColor="black"   ID="lblfule" runat="server" Text='<%#Eval("fuel")%>'></asp:Label>|
                                                                     <asp:Label Font-Size="Small"  ID="lbltrans" ForeColor="black"  runat="server" Text='<%#Eval("transmission")%>'></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                     <asp:Label Font-Bold="true" Width="10%"  ID="lblprice"  ForeColor="black" runat="server" Text='<%#Eval("price")%>' ></asp:Label>
                                                                    <div class="clearfix"></div>
                                                                    
                                                                 </li>
                                                             </a>
                                                                
                                                               
                                                            </ItemTemplate>
                                                            </asp:DataList>
                                                                 
                                                                </ul>
											<%--<li><div class="col-md-6 col-sm-6 part"><p>Engine</p></div><div class="col-md-6 col-sm-6 condition"><p>Excellent</p></div><div class="clearfix"></div></li>
											<li><div class="col-md-6 col-sm-6 part"><p>AC</p></div><div class="col-md-6 col-sm-6 condition"><p>Excellent</p></div><div class="clearfix"></div></li>
											<li><div class="col-md-6 col-sm-6 part"><p>Brakes</p></div><div class="col-md-6 col-sm-6 condition"><p>Excellent</p></div><div class="clearfix"></div></li>
											<li><div class="col-md-6 col-sm-6 part"><p>Electricals</p></div><div class="col-md-6 col-sm-6 condition"><p>Excellent</p></div><div class="clearfix"></div></li>
											<li><div class="col-md-6 col-sm-6 part"><p>Battery</p></div><div class="col-md-6 col-sm-6 condition"><p>Excellent</p></div><div class="clearfix"></div></li>
											<li><div class="col-md-6 col-sm-6 part"><p>Overall</p></div><div class="col-md-6 col-sm-6 condition"><p>Excellent</p></div><div class="clearfix"></div></li>--%>
										
										<div class="clearfix"></div>
																			</div>
								</div>

					<!-- //mid-->
					<!-- /bottom-->
					<div class="container">
			<h3 class="tittle">Color</h3>
			<div class="agile_gallery_grids w3-agile">
				<ul class="clearfix demo">
                    
                    <asp:ListView ID="lvcolor" runat="server">
                    <ItemTemplate>
					<li>
						<div class="gallery-grid1">
                            <asp:Image ID="img" runat="server" ImageUrl='<%# "~/admin/color/" + Eval("color") %>' width="125" height="50"/>

							<%--<img src="images/a1.jpg" alt=" " class="img-responsive">--%>
							<div class="p-mask">
								
								<p>
                                    <asp:Label ID="lblname" runat="server" Text='<%#Eval("colorname") %>'></asp:Label></p>
							</div>
						</div>
					</li>
                     </ItemTemplate>
                    </asp:ListView>
					
				</ul>
			
			</div>
		</div>
				<!-- //bottom-->
				<!-- /bottom-lost-->
				
			<!-- //bottom-lost-->
				
		</div>
	</div>
    </form>
</asp:Content>

