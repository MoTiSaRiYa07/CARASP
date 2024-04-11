

<%@ Page Title="" Language="C#" MasterPageFile="~/user/user1.master" AutoEventWireup="true" CodeFile="find_car.aspx.cs" Inherits="user_find_car" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" runat="server">
<!--//banner-section-->
				<!--/breadcrumb-->
		    <div class="service-breadcrumb">
				<div class="container">
					<div class="wthree_service_breadcrumb_left w3">
						<ul>
							<li><a href="home.aspx">Home</a> <i>|</i></li>
							<li>Find New Cars</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>Find New Cars</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		<!--//breadcrumb-->
			<!-- /find new cars -->
		<!-- Services -->
	<div class="updates-agile">
	     <div class="container">
		      <h3 class="tittle">FIND NEW CARS</h3>
		<div class="inner_tabs">
		<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class=""><a href="#updates1" id="updates-tab1" role="tab" data-toggle="tab" aria-controls="updates" aria-expanded="false">Brand</a></li>
							<li role="presentation" class=""><a href="#expert1" role="tab" id="expert-tab1" data-toggle="tab" aria-controls="expert" aria-expanded="true"></a></li>
							<li role="presentation" class="active"><a href="#video-text1" role="tab" id="video-text-tab1" data-toggle="tab" aria-controls="video-text" aria-expanded="false">Body Type</a></li>
							
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade" id="updates1" aria-labelledby="updates-tab1">
							<div class="news-updates car">
                                                            	
                                <asp:DataList ID="dl1" runat="server"  RepeatDirection="Horizontal" 
                                    RepeatColumns="6" >
            <ItemTemplate>
               <div class="tab-pane fade active in" id="updates1" role="tabpanel" aria-labelledby="updates-tab1">
							<div class="news-updates car">
											
										<ul class="cars-list">
		 <li>
                        <a class="img-car" href="cars.aspx?compid=<%#Eval("compid") %>">

                            <asp:Image ID="imgPhoto" class="img-responsive" Height="150" Width="150" runat="server" ImageUrl='<%# "~/admin/company_logo/" + Eval("complogo") %>' />
                       
                           
                   <h5>    <asp:Label ID="lName" runat="server" Text='<%# Eval("compname") %>'></asp:Label></h5>
  
                       
                        </a>
                       </li>
                       </ul>
                       </div>
                       </div>
            </ItemTemplate>
        </asp:DataList>
		
								 </div>
							</div>






							<%--<div role="tabpanel" class="tab-pane fade" id="expert1" aria-labelledby="expert-tab1">
								<div class="news-updates">
											<ul class="text-center">
                        <li>
                             <a href="cars.html">
                                <span class="budget-title-box">
                                    Upto
                                </span>
                                <span class="budget-amount-box">
                                    
                                    <span class="amount-text">$ 4</span>
                                    <span class="budget-amount-text-box">000</span>
                                </span>
                            </a>
                        </li>
                        <li>
                             <a href="cars.html">
                                <span class="budget-title-box">
                                    Between
                                </span>
                                <span class="budget-amount-box">
                                   
                                    <span class="amount-text">$ 4-12</span>
                                    <span class="budget-amount-text-box">000</span>
                                </span>
                            </a>
                        </li>
                        <li>
                             <a href="cars.html">
                                <span class="budget-title-box">
                                    Between
                                </span>
                                <span class="budget-amount-box">
                                   
                                    <span class="amount-text">$ 12-25</span>
                                    <span class="budget-amount-text-box font16">000</span>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="cars.html">
                                <span class="budget-title-box">
                                    Between
                                </span>
                                <span class="budget-amount-box">
                                   
                                    <span class="amount-text">$ 25-40</span>
                                    <span class="budget-amount-text-box font16">000</span>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="cars.html">
                                <span class="budget-title-box">
                                    Above
                                </span>
                                <span class="budget-amount-box">
                                    <span class="amount-text">$ 40</span>
                                    <span class="budget-amount-text-box font16">000</span>
                                </span>
                            </a>
                        </li>
                    </ul>
										
								 </div>
							</div>--%>
							<div role="tabpanel" class="tab-pane fade active in" id="video-text1" aria-labelledby="video-text-tab1">
								
								<div class="news-updates car">
											
										<ul class="cars-list">
										 <li>
											<a class="img-car" href="cars.aspx?btype=HatchBack">
                                            <asp:Image ID="imghatchback" runat="server" ImageUrl="images/b1.png" class="img-responsive"/>
							                 <h5>
                                                 <asp:Label ID="lblhatchback" runat="server" Text="HatchBack"></asp:Label>
                                                 </h5>
											</a>
										
										</li>
										
										 <li>
											<a class="img-car" href="cars.aspx?btype=sedan">
											   <asp:Image ID="imgsedan" runat="server" ImageUrl="images/b2.png" class="img-responsive"/>
							                 <h5>
                                                 <asp:Label ID="lblsedan" runat="server" Text="Sedan"></asp:Label>
                                                 </h5>
											</a>
										</li>
										<li>
											<a class="img-car" href="cars.aspx?btype=coupe">
											  <asp:Image ID="imgcoupe" runat="server" ImageUrl="images/b3.png" class="img-responsive"/>
							                 <h5>
                                                 <asp:Label ID="lblcoupe" runat="server" Text="Coupe"></asp:Label>
                                                 </h5>
											</a>
										</li>

									 <li>
										   <a class="img-car" href="cars.aspx?btype=suv/muv">
											 <asp:Image ID="imgsuv" runat="server" ImageUrl="images/b4.png" class="img-responsive"/>
							                 <h5>
                                                 <asp:Label ID="lblsuv" runat="server" Text="SUV/MUV"></asp:Label>
                                                 </h5>
											</a>
										</li>
										<li>
											<a class="img-car" href="cars.aspx?btype=Crossovers">
											  <asp:Image ID="imgcrossovers" runat="server" ImageUrl="images/b5.png" class="img-responsive"/>
							                 <h5>
                                                 <asp:Label ID="lblcrossovers" runat="server" Text="Crossovers"></asp:Label>
                                                 </h5>
											</a>
										</li>
											</ul>
										
								 </div>
								
							</div>
						
						
						</div>
					</div>
				</div>
            </div>
		</div>
		<div class="clearfix"></div>
		<!-- //Services -->
	        <!-- //find new cars -->

            </form>
</asp:Content>

