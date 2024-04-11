<%@ Page Title="" Language="C#" MasterPageFile="~/user/user1.master" AutoEventWireup="true" CodeFile="version.aspx.cs" Inherits="user_version" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" runat="server">
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
         
         
         
         
         
            
          

       
					<div class="container">
<div class="loan-agile">

    <asp:Label ID="lbl" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl1" runat="server" Text="" Visible="false"></asp:Label>






		         <h3 class="tittle">
        <asp:Label ID="lblcomp" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblmodel" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblversoin" runat="server" ></asp:Label></h3>


		<div class="inner_tabs loan">
		<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul class="nav nav-tabs loan" id="myTab" role="tablist">
							<li role="presentation"><a id="updates-tab" role="tab" aria-expanded="false" aria-controls="updates" href="#updates" data-toggle="tab">Factors</a></li>
							<li role="presentation"><a id="expert-tab" role="tab" aria-expanded="false" aria-controls="expert" href="#expert" data-toggle="tab">Features</a></li>
							<li class="active" role="presentation"><a id="video-text-tab" role="tab" aria-expanded="true" aria-controls="video-text" href="#video-text" data-toggle="tab">Specifications</a></li>
							
						</ul>
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade1" id="updates" role="tabpanel" aria-labelledby="updates-tab">
							 <div class="news-updates">
                           <asp:ListView ID="lvfactors" runat="server">
                               <ItemTemplate>
                                 <ul class="loan-info-text">
									<li>
                                       <div class="col-md-6 col-sm-6 part"><p>Price</p></div>
                                         <div class="col-md-6 col-sm-6 condition">
                                            <p>
                                                 <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                            </p>
                                         </div>
                                       <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Body Type</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                 <p>
                                                     <asp:Label ID="lblbody_type" runat="server" Text='<%#Eval("body_type") %>'></asp:Label>
                                                 </p>
                                            </div>
                                        <div class="clearfix"></div>
                                    </li>
									<li>
                                        <div class="col-md-6 col-sm-6 part"><p>Year</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                 <p>
                                                     <asp:Label ID="lblyear" runat="server" Text='<%#Eval("year") %>'></asp:Label>
                                                 </p>
                                            </div>
                                        <div class="clearfix"></div>
                                    </li>
									<li>
                                        <div class="col-md-6 col-sm-6 part"><p>fuel</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                 <p>
                                                     <asp:Label ID="lblfuel" runat="server" Text='<%#Eval("fuel") %>'></asp:Label>
                                                 </p>
                                            </div>
                                        <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Transmission</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                 <p>
                                                     <asp:Label ID="lbltransmission" runat="server" Text='<%#Eval("transmission") %>'></asp:Label>
                                                 </p>
                                            </div>
                                        <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="col-md-6 col-sm-6 part"><p>No of Gears</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                 <p>
                                                     <asp:Label ID="lblgear" runat="server" Text='<%#Eval("no_of_gears") %>'></asp:Label>
                                                 </p>
                                            </div>
                                        <div class="clearfix"></div>
                                    </li>
								</ul>
		                     </ItemTemplate>
                       </asp:ListView>
	
								 </div>
							</div>
							<div class="tab-pane fade1" id="expert" role="tabpanel" aria-labelledby="expert-tab">
								<div class="news-updates">
                                 <asp:ListView ID="lv_feature" runat="server">
                                    <ItemTemplate>
                                   
									<ul class="loan-info-text">

                                   <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Air conditioner</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lblac" runat="server" Text='<%#Eval("ac") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
									  <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Climate control</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbl_climate" runat="server" Text='<%#Eval("climate_control") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>CD Player</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lblcd" runat="server" Text='<%#Eval("cd_player") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Power Steering</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbl_power_steering" runat="server" Text='<%#Eval("power_steering") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Power Window</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbl_power_window" runat="server" Text='<%#Eval("power_window") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Central Locking</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbl_locking" runat="server" Text='<%#Eval("central_locking") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Steering Adjustment</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbl_steering_adjustment" runat="server" Text='<%#Eval("steering_adjustment") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>

                                    </li>
                                    
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Electrically Adjustable Drive Seat</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lblel_drive_seat" runat="server" Text='<%#Eval("electrically_adjustable_driver_seat") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Steering Mounted Controls</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbl_steering_mounted" runat="server" Text='<%#Eval("steering_mounted_controls") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Rear AC Vent</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbl_ac_vent" runat="server" Text='<%#Eval("rear_ac_vent") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Remote Controlled Boot</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbl_remote_boot" runat="server" Text='<%#Eval("remote_controlled_boot") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Rear Wiper</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lblwiper" runat="server" Text='<%#Eval("rear_wiper") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Leather Seats</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbl_leathe_seats" runat="server" Text='<%#Eval("leather_seats") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>

                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Electrically Adjustable Mirrors</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbl_mirrors" runat="server" Text='<%#Eval("electrically_adjustable_mirrors") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Anti-Lock Braking System</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbl_antilock" runat="server" Text='<%#Eval("anti_lock_braking_system") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Airbag</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lblairbag" runat="server" Text='<%#Eval("airbag") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Parking Sensors</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbl_parking_sensor" runat="server" Text='<%#Eval("parking_sensors") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Traction Control</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbl_traction" runat="server" Text='<%#Eval("traction_control") %>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                     
							    	</ul>
									</ItemTemplate>
                                    </asp:ListView>
										
								 </div>
								
							</div>
							<div class="tab-pane fade1 active in" id="video-text" role="tabpanel" aria-labelledby="video-text-tab">
								
								<div class="news-updates">
                                                 <asp:ListView ID="lv_specification" runat="server">
                                                 <ItemTemplate>
                                                <ul class="loan-info-text">
									<li>
                                        <div class="col-md-6 col-sm-6 part"><p>Height</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lblheight" runat="server" Text='<%#Eval("height")%>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
									
									<li>
                                        <div class="col-md-6 col-sm-6 part"><p>Length</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbllength" runat="server" Text='<%#Eval("length")%>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Width</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lblwidth" runat="server" Text='<%#Eval("width")%>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Wheelbase</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lblwheelbase" runat="server" Text='<%#Eval("wheelbase")%>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Door</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lbldoor" runat="server" Text='<%#Eval("door")%>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Seating Capacity</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lblseating" runat="server" Text='<%#Eval("seating_capacity")%>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
                                    <li>
                                        <div class="col-md-6 col-sm-6 part"><p>Fuel Capacity</p></div>
                                            <div class="col-md-6 col-sm-6 condition">
                                                <p>
                                                 <asp:Label ID="lblfuel_capacity" runat="server" Text='<%#Eval("fuel_capacity")%>'></asp:Label>
                                                </p>
                                            </div>
                                            <div class="clearfix"></div>
                                    </li>
								</ul>
										 </ItemTemplate>
                                                 </asp:ListView>
											
								 </div>
								
							</div>
						</div>
					</div>
				</div>
            </div>
            </div>
            

            <br />
            <br />



         
 		
	





  
		<div class="container">
			<h3 class="tittle">Images</h3>
			<div class="agile_gallery_grids w3-agile">
				<ul class="clearfix demo">
                    
                    <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
					<li>
						<div class="gallery-grid1">
                            <asp:Image ID="img" runat="server" ImageUrl='<%# "~/admin/gallery/" + Eval("image") %>' width="256" height="206"/>
							<%--<img src="images/a1.jpg" alt=" " class="img-responsive">--%>
							<%--<div class="p-mask">
								<h4>Inter<span>cooler</span></h4>
								<p>Neque porro quisquam est, qui dolorem ipsum.</p>
							</div>--%>
						</div>
					</li>
                     </ItemTemplate>
                    </asp:ListView>
					
				</ul>
			
			</div>
		</div>
	
</form>
</asp:Content>

