<%@ Page Title="" Language="C#" MasterPageFile="~/user/user1.master" AutoEventWireup="true" CodeFile="cars.aspx.cs" Inherits="user_cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
<div class="service-breadcrumb">
				<div class="container">
					<div class="wthree_service_breadcrumb_left">
						<ul>
							<li><a href="">Home</a> <i>|</i></li>
							<li>Search Cars</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>Search Cars</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
<div class="search-car w3l">
    
  <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
   <asp:Label ID="lbl1" runat="server" Visible="False"></asp:Label>
   <asp:Label ID="lblmodel" runat="server" Visible="true"></asp:Label>
  
			<div class="container">
			    <!--/search-car-inner -->
					<div class="search-car-inner w3l">
                      
					<!--/search-car-left-nav -->
						<div class="col-md-3 search-car-left-sidebar">
						  
								<%--	<div class="w_nav1">
										<h4>Select City</h4>
											<select class="frm-field required" id="country12" onchange="change_country(this.value)">
														<option value="city">Amsterdam</option>
														<option value="city">Bahrain</option>
														<option value="city">Cannes</option>
														<option value="city">Dublin</option>
														<option value="city">Edinburgh</option>
														<option value="city">Florence</option>
														<option value="city">Georgia</option>
														<option value="city">Hungary</option>
														<option value="city">Hong Kong</option>
														<option value="city">Johannesburg</option>
														<option value="city">Kiev</option>
														<option value="city">London</option>
										</select>
									</div>--%>
										<div class="w_nav1 two">
										<h4>Select Budget</h4>
                                            <asp:DropDownList ID="ddlbudget" runat="server" style="
    padding: 10px 51px;
    width: 100%;
    font-weight: normal;
    background: none;
    border: 1px solid #bdbaba;
    color: #848484;
    outline: none;
    font-size: 14px;
    margin-bottom: 0px;
    float: left;
    margin-right: 2%;
    background: url(images/location.png) no-repeat 4% center #ffffff;"
                                                AutoPostBack="True" onselectedindexchanged="ddlbudget_SelectedIndexChanged" >
                                            <asp:ListItem Text="50000" Value="0"></asp:ListItem>
                                             <asp:ListItem Text="100000" Value="1"></asp:ListItem>
                                              <asp:ListItem Text="2000000" Value="2"></asp:ListItem>
                                               <asp:ListItem Text="5000000" Value="3"></asp:ListItem>
                                                <asp:ListItem Text="10000000" Value="4"></asp:ListItem>
                                            </asp:DropDownList>
											<%--<select class="frm-field required" id="country19" onchange="change_country(this.value)">
											<option value="null"> Budget</option>
											<option value="null">0</option>     
											<option value="AX">50,000</option>
											<option value="AX">10,00,000</option>
											<option value="AX">13,00,000</option>
											<option value="AX">20,00,000</option>
											<option value="AX">30,00,000</option>
											<option value="AX">40,00,000</option>
											<option value="AX">50,00,000</option>--%>
									</div>
									
									<h3>filter by</h3>
									<section class="sky-form">
												<h4>Car Details</h4>
													<div class="scrollbar" id="style-2">
														
												      <div class="form-inner">
                                                      <asp:CheckBoxList ID="chkcardetail" runat="server"  DataSourceID="SqlDataSource1" 
                                                              DataTextField="compname" DataValueField="compid" 
                                                             AutoPostBack="True" 
                                                              onselectedindexchanged="chkcardetail_SelectedIndexChanged" style="outline: none;border: none;margin-bottom: 4px;padding-left: 27px;font-size: 13px;line-height: 27px;color: #555555;cursor: pointer;text-transform: capitalize;font-weight: normal;margin-top: 0;">
                                                              
                                                      </asp:CheckBoxList> 
															<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                              SelectCommand="SELECT * FROM [tbl_comp]"></asp:SqlDataSource>
															<%--<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Audi</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>AMG</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>BMW</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Caddilac</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Caparo</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Dacia</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Daewoo</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Datsun</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Eagle</label>	
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Ford</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Force</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>GTA Motors</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Geely</label>	
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Healey</label>--%>	
														</div>
												    </div>

									 </section>
									<%--<section class="sky-form">
												<h4>brand</h4>
													
													<div class="scrollbar" id="style-2">
														
												        <div class="form-inner">
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Audi</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>AMG</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>BMW</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Caddilac</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Caparo</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Dacia</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Daewoo</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Datsun</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Eagle</label>	
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Ford</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Force</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>GTA Motors</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Geely</label>	
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Healey</label>	
														</div>
													</div>
										
													
									</section>--%>
									
								<%--	<section class="sky-form">
										<h4>Seller type</h4>
										 <div class="form-inner">
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Individual</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Dealer</label>
																
														</div>
									</section>--%>
									<%--<section class="sky-form">
										<h4>Transmission</h4>
										 <div class="form-inner">
                                         <asp:CheckBoxList ID="chktransmission" runat="server" Font-Names="Lucida Console" 
                                                 AutoPostBack="True" 
                                                 onselectedindexchanged="chktransmission_SelectedIndexChanged"  style="outline: none;border: none;margin-bottom: 4px;padding-left: 27px;font-size: 13px;line-height: 27px;color: #555555;cursor: pointer;text-transform: capitalize;font-weight: normal;margin-top: 0;">
                                         <asp:ListItem Text="Manual" Value="0"></asp:ListItem>
                                         <asp:ListItem Text="Automatic" Value="1"></asp:ListItem>
                                         </asp:CheckBoxList>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Manual</label>
															<label class="checkbox"><input name="checkbox" type="checkbox"><i></i>Automatic</label>
																
														</div>
									</section>--%>
									<section class="sky-form">
											<h4>Fuel Type</h4>
											  <%-- <div class="scrollbar" id="style-2">
												--%>		
												<div class="form-inner">

                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="outline: none;border: none;margin-bottom: 4px;padding-left: 27px;font-size: 13px;line-height: 27px;color: #555555;cursor: pointer;font-weight: normal;margin-top: 0;">
                                                <asp:ListItem Text="Petrol" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="Diesel" Value="1"></asp:ListItem>
                                               
                                                </asp:RadioButtonList>

													<%-- <label class="radio"><input name="radio" type="radio"><i></i>Petrol</label>
													<label class="radio"><input name="radio" type="radio"><i></i>Diesel</label>
													<label class="radio"><input name="radio" type="radio"><i></i>CNG</label>
													<label class="radio"><input name="radio" type="radio"><i></i>LPG</label>
													<label class="radio"><input name="radio" type="radio"><i></i>Eletric</label>
												<label class="radio"><input name="radio" type="radio"><i></i>Petrol</label>--%>
												</div>
											<%--</div>--%>		
							   </section>
							
								<!---->	
						</div>
						<!--//search-car-left-nav -->
						<!--/search-car-right-text -->
				<div class="col-md-9 search-car-right-text w3">
							<%--<div class="well well-sm">
								<strong>Display</strong>
								<div class="btn-group">
									<a class="btn btn-default btn-sm" id="list" href="#"><span class="glyphicon glyphicon-th-list">
									</span>List</a> <a class="btn btn-default btn-sm two" id="grid" href="#"><span class="glyphicon glyphicon-th"></span>Grid</a>
								</div>
							</div>--%>
							<div class="row list-group" id="products">
                        
                                <asp:ListView ID="ListView1" runat="server">
                                <ItemTemplate>
                                <div class="item  col-xs-4 col-lg-4">
									<div class="thumbnail">
                                              <a href="show_detail.aspx?compid=<%#Eval("compid") %>&modelid=<%#Eval("modelid") %>" data-toggle="modal" data-target="#myModal6">
                                             <asp:Image ID="img" runat="server" alt="R & M" ImageUrl='<%# "~/admin/model_img/" + Eval("image") %>'  style=" display: block;max-width: 397.5px; max-height :297.7px; height: 100%; width: auto;" />
                                                                </a>
                                                                  <div class="table-text">
                                                                 <h4><a title="Maruti Suzuki 800 AC" class="click-search" href="show_detail.aspx?compid=<%#Eval("compid") %>&modelid=<%#Eval("modelid") %>"><span class="spancarname">
                                                                     <asp:Label ID="lblcomp" runat="server" Text='<%#Eval("compname") %>'></asp:Label>&nbsp; <asp:Label ID="lblmodel" runat="server" Text='<%#Eval("modelname") %>'></asp:Label></span></a></h4>
                                                               
                                                             <p>
                                                                <span class="rupee-lac slprice"> <asp:Label ID="lblprice" runat="server" Text='<%#Eval("Expr1") %>'></asp:Label> </span>
                                                                </p>
                                                                 <div class="clearfix"></div>
                                                                <a href="show_detail.aspx?compid=<%#Eval("compid") %>&modelid=<%#Eval("modelid") %>"">
                                                                        <p class="listing-item-kms"><span class="slkms">
                                                                            <asp:Label ID="lblbody_type" runat="server" Text='<%#Eval("body_type") %>'></asp:Label></span></p>
                                                                        
                                                                    </a>
                                                                
         
                                                              
                                                                <a>
                                                               
                                                            </a></div><a>
										 
									</a></div><a>
								</a></div>
                                </ItemTemplate>

                                </asp:ListView>
                                
								</div>
								
    </div>
    </div>
    </div>
    </form>
</asp:Content>

