<%@ Page Title="" Language="C#" MasterPageFile="~/user/user1.master" AutoEventWireup="true" CodeFile="compare_list.aspx.cs" Inherits="user_compare_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="service-breadcrumb">
				<div class="container">
					<div class="wthree_service_breadcrumb_left">
						<ul>
							<li><a href="home1.aspx">Home</a> <i>|</i></li>
							<li><a href="cars.aspx">Compare </a> <i>|</i></li>
							<li></li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>Compare</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>




                  <div class="sell-car w3l">
					<div class="container">
      

            	<div class="loan-agile">

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
                               
                       
                               <table class="table table-striped">
                               <thead>
                                 <tr class="loan-info-text">
                                    <th class="col-md-6 col-sm-6 condition" >
                                      <div>#</div>
                                    </th>
                                    <th class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbl1" runat="server" Text="car1"></asp:Label>
                                    </th>
                                       <th class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbl2" runat="server" Text="car2"></asp:Label>
                                                <div class="clearfix"></div>
                                    </th>
                                 
                                 </tr>
                              </thead>
                              <tbody>
                                <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div ></div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                        <asp:Image ID="carimg1" runat="server" Height="200" Width="200" />
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                           <asp:Image ID="carimg2" runat="server" Width="200" Height="200" />            
                                    </td>
                                 </tr>
                                
                               
                                       <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Company</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblcomp1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblcomp2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>



                                 <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Model</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblmodel1" runat="server"></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblmodel2" runat="server" ></asp:Label>       
                                    </td>
                                 </tr>

                                   
                                 
                                         <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Version</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblversion1" runat="server"></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblversion2" runat="server"></asp:Label>
                                    </td>
                                 </tr>


                                    <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Price</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblprice1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblprice2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>
                                 



                                 <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Body Type</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblbody_type1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblbody_type2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>
                                 
                                       
                                 <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Year</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblyear1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblyear2" runat="server"></asp:Label>
                                    </td>
                                 </tr>


                                     <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >fuel</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblfuel1" runat="server"></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblfuel2" runat="server" ></asp:Label>
                                    </td>
                                 
                                 </tr>
                             

                                 <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Transmission</div>
                                    </td>
                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbltrans1" runat="server"></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbltrans2" runat="server"></asp:Label>
                                    </td>
                                 </tr>
                            
                            
                                 <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Gears</div>
                                    </td>
                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblgear1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblgear2" runat="server"></asp:Label>
                                    </td>
                                 </tr>
                            

                            </tbody>
                             </table>
                               
						
                       
								 </div>
							</div>
                            
                         	<div class="tab-pane fade1" id="expert" role="tabpanel" aria-labelledby="expert-tab">
								<div class="news-updates">
                                
                                   
								
                               <table class="table table-striped">
                               <thead>
                                 <tr class="loan-info-text">
                                    <th class="col-md-6 col-sm-6 condition" >
                                      <div>#</div>
                                    </th>
                                    <th class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbl3" runat="server" Text="car1"></asp:Label>
                                    </th>
                                       <th class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbl4" runat="server" Text="car2"></asp:Label>
                                                <div class="clearfix"></div>
                                    </th>
                                 
                                 </tr>
                              </thead>

                              <tbody>
                                 
                                
                                <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Air Conditioner</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblac1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblac2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>
                                 

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Climate Control</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblclimate_control1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblclimate_control2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >CD Player</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblcd_player1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblcd_player2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Power Steering</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblpower_steering1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblpower_steering2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Power Window</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblpower_window1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblpower_window2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Central Locking</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblcentral_locking1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblcentral_locking2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Steering Adjustment</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblsteering_adjustment1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblsteering_adjustment2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Electrically Adjustable Driver Seat </div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbldriver_seat1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbldriver_seat2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Steering Mounted Controls</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblsteering_mounted1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblsteering_mounted2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Rear AC vent</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblrear_ac1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblrear_ac2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Remote Controlled Boot</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblremote_controlboot1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblremote_controlboot2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Rear Wiper</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblrear_wiper1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblrear_wiper2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Leather Seats</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblleather_seat1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblleather_seat2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Electrically  Adjustable Mirrors</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblmirror1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblmirror2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Anti-Lock Braking System(ABS)</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblantilock1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblantilock2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Airbag</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblairbag1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblairbag2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Parking Sensors</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblparking_sensor1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblparking_sensor2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>

                                   <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Traction Control</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbltraction_control1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbltraction_control2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>


                                  </tbody>
                             </table>
								
								 </div>
								
							</div>






							<div class="tab-pane fade1 active in" id="video-text" role="tabpanel" aria-labelledby="video-text-tab">
								
								<div class="news-updates">
                                             <table class="table table-striped">
                               <thead>
                                 <tr class="loan-info-text">
                                    <th class="col-md-6 col-sm-6 condition" >
                                      <div>#</div>
                                    </th>
                                    <th class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbl5" runat="server" Text="car1"></asp:Label>
                                    </th>
                                       <th class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbl6" runat="server" Text="car2"></asp:Label>
                                                <div class="clearfix"></div>
                                    </th>
                                 
                                 </tr>
                              </thead>
                              <tbody>
                                
                               
                                       <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Company</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblcomp5" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblcomp6" runat="server" ></asp:Label>
                                    </td>
                                 </tr>



                                 <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Model</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblmodel5" runat="server"></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblmodel6" runat="server" ></asp:Label>       
                                    </td>
                                 </tr>

                                   
                                 
                                         <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Version</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblversion5" runat="server"></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblversion6" runat="server"></asp:Label>
                                    </td>
                                 </tr>


                                    <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Height</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblheight1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblheight2" runat="server" ></asp:Label>
                                    </td>
                                 </tr>
                                 
                                       
                                 <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Length</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbllength1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbllength2" runat="server"></asp:Label>
                                    </td>
                                 </tr>


                                     <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >width</div>
                                    </td>

                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblwidth1" runat="server"></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblwidth2" runat="server" ></asp:Label>
                                    </td>
                                 
                                 </tr>
                             

                                 <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div>Wheelbase</div>
                                    </td>
                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblwheelbase1" runat="server"></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblwheelbase2" runat="server"></asp:Label>
                                    </td>
                                 </tr>
                            
                            
                                 <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Door</div>
                                    </td>
                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbldoor1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lbldoor2" runat="server"></asp:Label>
                                    </td>
                                 </tr>
                            
                              <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Seating capacity</div>
                                    </td>
                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblSeating_capacity1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblSeating_capacity2" runat="server"></asp:Label>
                                    </td>
                                 </tr>

                               <tr class="loan-info-text">
                                    <td class="col-md-6 col-sm-6 condition" >
                                      <div >Fuel capacity</div>
                                    </td>
                                    <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblfuel_capacity1" runat="server" ></asp:Label>
                                    </td>
                                       <td class="col-md-6 col-sm-6 condition">
                                                 <asp:Label ID="lblfuel_capacity2" runat="server"></asp:Label>
                                    </td>
                                 </tr>

                            </tbody>
                             </table>
                             
								 </div>
								
							</div>
						</div>
					</div>
				</div>
                </div>
    </div>
    
    </div>
</asp:Content>

