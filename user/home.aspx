<%@ Page Title="" Language="C#" MasterPageFile="~/user/user1.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" runat="server">
<div class="featured_section_w3l">
		<div class="container">
		      <h3 class="tittle">FEATURED CARS</h3>
	               <div class="inner_tabs">
		<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">UpComing cars</a></li>
							<li role="presentation"><a href="#tours" role="tab" id="tours-tab" data-toggle="tab" aria-controls="tours">Popular</a></li>
							<li role="presentation"><a href="#tree" role="tab" id="tree-tab" data-toggle="tab" aria-controls="tree">Just Launched</a></li>
							
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="expeditions" aria-labelledby="expeditions-tab">
							   <div class="section__content clearfix">
							   <!-- /card1 -->
                                   <asp:ListView ID="lvupcoming" runat="server" >
                                   <ItemTemplate>
                                  
									  <div class="card effect__hover">
									
									  <span class="card__text">
									       <div class="img-grid">
                                               <asp:Image ID="img" runat="server"  ImageUrl='<%# "~/admin/upcoming_car/" + Eval("photo") %>'/>
													<%--<img src="images/f1.jpg" alt="Catchy Carz">--%>
													<div class="car_description">
														 <h4><a href="show_detail.aspx">
                                                             <asp:Label ID="lblcomp" runat="server" Text='<%#Eval("comp") %>'></asp:Label>&nbsp;<asp:Label ID="lblmodel" runat="server" Text='<%#Eval("model") %>'></asp:Label>
                                                         <%--Mercedes-Benz C250 CDI--%>
                                                         </a></h4>
														 <div class="price"><span class="fa fa-rupee"></span><span class="font25">
                                                             <asp:Label ID="lblprice" runat="server" Text='<%#Eval("expected_price") %>'></asp:Label>
                                                         <%--$ 8000 - $ 12000--%></span></div>
														 <p>Estimated Price</p>
														 <div class="date">
                                                             <asp:Label ID="lbldate" runat="server" Text='<%#Eval("expected_date") %>'></asp:Label>
                                                         <%--Mar 2017--%></div>
														 <p>Expected Launch</p>
														</div>
												
													</div>
									  </span>
									
									
								  </div>
                                   </ItemTemplate>
                                   </asp:ListView>
								    <!-- //card1 -->
								
								 </div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tours" aria-labelledby="tours-tab">
								   <div class="section__content clearfix">
							   <!-- /card1 -->
                                   <asp:ListView ID="lv_popular" runat="server" >
                                   <ItemTemplate>
                                  
								  <div class="card effect__hover">
									
									  <span class="card__text">
									       <div class="img-grid">
                                               <asp:Image ID="img" runat="server"  ImageUrl='<%# "~/admin/popular/" + Eval("photo") %>'/>
													<%--<img src="images/f1.jpg" alt="Catchy Carz">--%>
													<div class="car_description">
														 <h4><a href="show_detail.aspx">
                                                             <asp:Label ID="lblcomp" runat="server" Text='<%#Eval("comp") %>'></asp:Label>&nbsp;<asp:Label ID="lblmodel" runat="server" Text='<%#Eval("model") %>'></asp:Label>
                                                         <%--Mercedes-Benz C250 CDI--%>
                                                         </a></h4>
														 <div class="price"><span class="fa fa-rupee"></span><span class="font25">
                                                             <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                                         <%--$ 8000 - $ 12000--%></span></div>
														 <p>Price</p>
														 <div class="date">
                                                             <asp:Label ID="lbldate" runat="server" Text='<%#Eval("fuel") %>'></asp:Label>
                                                         <%--Mar 2017--%></div>
														 <p>Fuel</p>
														</div>
												
													</div>
									  </span>
									
									
								  </div>
                                   </ItemTemplate>
                                   </asp:ListView>
								    <!-- //card1 -->
								
								 </div>
								
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tree" aria-labelledby="tree-tab">
								
								<div class="section__content clearfix">
							   <!-- /card1 -->
                                   <asp:ListView ID="lvjust_launched" runat="server" >
                                   <ItemTemplate>
                                  
								  <div class="card effect__hover">
									
									  <span class="card__text">
									       <div class="img-grid">
                                               <asp:Image ID="img" runat="server"  ImageUrl='<%# "~/admin/just_launched/" + Eval("photo") %>'/>
													<%--<img src="images/f1.jpg" alt="Catchy Carz">--%>
													<div class="car_description">
														 <h4><a href="show_detail.aspx">
                                                             <asp:Label ID="lblcomp" runat="server" Text='<%#Eval("comp") %>'></asp:Label>&nbsp;<asp:Label ID="lblmodel" runat="server" Text='<%#Eval("model") %>'></asp:Label>
                                                         <%--Mercedes-Benz C250 CDI--%>
                                                        </a> </h4>
														 <div class="price"><span class="fa fa-rupee"></span><span class="font25">
                                                             <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                                         <%--$ 8000 - $ 12000--%></span></div>
														 <p> Price</p>
														 <div class="date">
                                                             <asp:Label ID="lbldate" runat="server" Text='<%#Eval("launched_date") %>'></asp:Label>
                                                         <%--Mar 2017--%></div>
														 <p>Launched Date</p>
														</div>
												
													</div>
									  </span>
									
									
								  </div>
                                   </ItemTemplate>
                                   </asp:ListView>
								    <!-- //card1 -->
								
								 </div>
								
							</div>
						</div>
					</div>
				</div>
					
			</div>
		</div>
        </div>
	<!--//featured_section-->
	<!--/select-cars-agile-->
	
	<!-- /bottom-banner -->
	<div class="banner-bottom">
	   <div class="container">
          <div class="bottom-form">
			<div class="inner-text">
				
			<%-- <form action="#">
				<h3>Choose Your Best Car</h3>
					<div class="best-hot">
						<h5>Name</h5>
						<input type="text" class="name active" placeholder="Name" required="">
					</div>
					<div class="best-hot">
						<h5>Email</h5>
						<input type="text" class="email" placeholder="Email" required="">
					</div>
					<div class="section_drop2">
					<h5>City</h5>
						<select id="country6" onchange="change_country(this.value)" class="frm-field required">
														<option value="null"> Select City</option>
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
														<option value="city">Others...</option>
													</select>
												   </div>
					<input type="submit" value="Book Now">
				</form>--%>
			</div>
		</div>
	</div>
</div>
	<!-- //bottom-banner -->
	<!-- /slider1 -->
		<div class="slider1">
		<div class="arrival-grids">			 
			  <ul id="flexiselDemo1">
                  <asp:ListView ID="ListView1" runat="server">
                
                 <ItemTemplate>
              
				 <li>
					 <a href="show_detail.aspx?compid=<%#Eval("compid") %>&modelid=<%#Eval("modelid") %>">
                         <asp:Image ID="img" runat="server" ImageUrl='<%# "~/admin/model_img/" + Eval("image") %>' Height="200" Width="250"/>
                     <%--<img src="images/f1.jpg" alt=""/>--%>
					  <div class="caption">
							<h3><a href="show_detail.aspx?compid=<%#Eval("compid") %>&modelid=<%#Eval("modelid") %>">
                                <asp:Label ID="lbl" runat="server" Text='<%#Eval("compname") %>'></asp:Label> <asp:Label ID="lbl1" runat="server" Text='<%#Eval("modelname") %>'></asp:Label></a></h3>
							<span>CAR SERVIES</span>
						</div>
					 </a>
				 </li>
                
                   </ItemTemplate>
                   </asp:ListView>
                  </ul>
                 
				<%-- <li>
					 <a href="single.html"><img src="images/f2.jpg" alt=""/>
					 <div class="caption">
							<h3><a href="single.html">Audi A4 2.0 TDI</a></h3>
							<span>Catchy Carz</span>
							
						</div>
					 </a>
				 </li>
				 <li>
					 <a href="single.html"><img src="images/f3.jpg" alt=""/>
					  <div class="caption">
							<h3><a href="single.html">Ford Mustang GT 500</a></h3>
							<span>Catchy Carz</span>
							
						</div>
					 </a>
				 </li>
				 <li>
					 <a href="single.html"><img src="images/f4.jpg" alt=""/>
					    <div class="caption">
							<h3><a href="single.html">Ford Mustang GT 350</a></h3>
						<span>Catchy Carz</span>
							
						</div>
					 </a>
				 </li>
				 <li>
					 <a href="single.html"><img src="images/f7.jpg" alt=""/>
					    <div class="caption">
							<h3><a href="single.html">BMW M4</a></h3>
							<span>Catchy Carz</span>
							
						</div>
					 </a>
				 </li>
				 <li>
					 <a href="single.html"><img src="images/f5.jpeg" alt=""/>
					 <div class="caption">
							<h3><a href="single.html">Ferrari F430</a></h3>
							<span>Catchy Carz</span>
							
						</div>
					 </a>
				 </li>
				  <li>
					 <a href="single.html"><img src="images/f8.jpg" alt=""/>
					    <div class="caption">
							<h3><a href="single.html">BMW X4 M Sport</a></h3>
							<span>Catchy Carz</span>
					    </div>
					 </a>
				 </li>--%>
		  </div>
	  </div>
	<!-- //slider -->
	<!-- Services -->
	<div class="updates-agile">
		<div class="container">
		      <h3 class="tittle">LATEST CAR UPDATES</h3>
		<div class="inner_tabs">
		<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class=""><a href="#updates" id="updates-tab" role="tab" data-toggle="tab" aria-controls="updates" aria-expanded="false">Car News</a></li>
							<li role="presentation" class=""><a href="#expert" role="tab" id="expert-tab" data-toggle="tab" aria-controls="expert" aria-expanded="false"></a></li>
							<li role="presentation" class="active"><a href="#video-text" role="tab" id="video-text-tab" data-toggle="tab" aria-controls="video-text" aria-expanded="true">Videos</a></li>
							
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade" id="updates" aria-labelledby="updates-tab">
							 <div class="news-updates">
                                 <asp:ListView ID="lv_news" runat="server">
                                 <ItemTemplate>
                                 	<div class="update-info-w3l">
										<div class="col-md-5 tab-image">
											<div class="view second-effect">
												<a href="https://www.godigit.com/traffic-rules/how-to-take-test-drive-of-a-car" title="Catchy Carz">
                                                    <asp:Image ID="img" runat="server"  alt="" class="img-responsive" ImageUrl='<%# "~/admin/news/" + Eval("photo") %>'/>
												<%--	<img src="images/u1.jpeg" alt="" class="img-responsive">--%>
													<div class="mask">
														<p>CAR<span>&</span>TEST DRIVE BOOKING</p>
													</div>
												</a>	
											</div>
											
										</div>
										<div class="col-md-7 tab-info one">
										<h4><a href="https://www.godigit.com/traffic-rules/how-to-take-test-drive-of-a-car">
                                            <asp:Label ID="lblnews" runat="server" Text='<%#Eval("news") %>'></asp:Label></a></h4>
											<p>
                                                <asp:Label ID="lbldeatil" runat="server" Text='<%#Eval("detail") %>'></asp:Label></p>
											<a href="https://www.godigit.com/traffic-rules/how-to-take-test-drive-of-a-car" class="read hvr-shutter-in-horizontal">
                                                <asp:Label ID="lblread" runat="server" Text="Read More"></asp:Label></a>
										</div>
										<div class="clearfix"></div>
									</div>
									
									</ItemTemplate>
                                 </asp:ListView>
									
								 </div>
							</div>
							
							<div role="tabpanel" class="tab-pane fade active in" id="video-text" aria-labelledby="video-text-tab">
								
								<div class="news-updates">
                                	 <asp:DataList ID="dlvideo" runat="server">
                                      <ItemTemplate>
									<div class="update-info-w3l">
										<div class="col-md-5 tab-image">
						
<%--                                     <video width="500" height="240" controls class="video-stream html5-main-video">
                                        <source src= '../admin/video/<%# Eval("video")%>' type="videoMp4">
                                                  Your browser does not support the video
                                         </video>--%>

										<video width="500" height="240"  controls="controls">
											<source src="../admin/video/ankush.mp4" type="video/mp4"
										</video>

										
                          	</div>
										<%--<div class="col-md-7 tab-info">
										<h4><a href="https://auto.economictimes.indiatimes.com/tag/car+service">
                                            <asp:Label ID="lbl1" runat="server" Text='<%#Eval("News") %>'></asp:Label> </a></h4>
											--%>  							<p>
<%--                                                                              <asp:Label ID="lbl2" runat="server" Text="Label"></asp:Label></p>--%>
											<a href="https://auto.economictimes.indiatimes.com/tag/car+service" class="read hvr-shutter-in-horizontal">
                                                <asp:Label ID="Label1" runat="server" Text="Read More"></asp:Label></a>
										</div>
										<div class="clearfix"></div>
									</div>
									
									   </ItemTemplate>
                            </asp:DataList>
									
								 </div>
								
							</div>
						
						
						</div>
					</div>
				</div>
            </div>
		</div>
		<div class="clearfix"></div>
        </form>
</asp:Content>

