 <%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="car_detail.aspx.cs" Inherits="admin_car_detail" %>







<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content" style="margin-left: 180px;">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> Car details</h3>
            </div>
            </div>


            <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
  
                <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Company name</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlcompname" runat="server" class="form-control m-bot15" 
                                           DataSourceID="SqlDataSource1" DataTextField="compname" 
                                           DataValueField="compid" AutoPostBack="True">
                                           
                                       </asp:DropDownList>
                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                           SelectCommand="SELECT * FROM [tbl_comp] WHERE ([status] = @status)">
                                           <SelectParameters>
                                               <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                                           </SelectParameters>
                                       </asp:SqlDataSource>
                                </div>
                       </div>
                 </div>

                 <br/><br/>

                  <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Model name</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlmodel" runat="server" class="form-control m-bot15" 
                                           DataSourceID="SqlDataSource2" DataTextField="modelname" 
                                           DataValueField="modelid" AutoPostBack="True"  >
                                           
                                       </asp:DropDownList>
                                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                           SelectCommand="SELECT * FROM [tbl_model] WHERE (([compid] = @compid) AND ([status] = @status))">
                                             <SelectParameters>
                                                 <asp:ControlParameter ControlID="ddlcompname" Name="compid" 
                                                     PropertyName="SelectedValue" Type="Int32" />
                                                 <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                                             </SelectParameters>
                                       </asp:SqlDataSource>
                                         </div>
                       </div>
                 </div>
                 <br><br/>
                 <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Version name</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlversion" runat="server" 
                                           class="form-control m-bot15" DataSourceID="SqlDataSource3" 
                                           DataTextField="versionname" DataValueField="versionid" 
                                           AutoPostBack="True"  >
                                           
                                       </asp:DropDownList>
                                       
                                         <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                           SelectCommand="SELECT * FROM [tbl_version] WHERE (([modelid] = @modelid) AND ([status] = @status))">
                                             <SelectParameters>
                                                 <asp:ControlParameter ControlID="ddlmodel" Name="modelid" 
                                                     PropertyName="SelectedValue" Type="Int32" />
                                                 <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                                             </SelectParameters>
                                       </asp:SqlDataSource>
                                       
                                         </div>
                       </div>
                 </div>
                 <br><br/>
                
                 <asp:MultiView ID="MultiView1" runat="server">
                 <asp:View ID="View1" runat="server">


                    <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Price</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                      <asp:TextBox ID="txtprice" runat="server" class="form-control" placeholder="Price"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Enter price"  ForeColor="Red" ControlToValidate="txtprice"></asp:RequiredFieldValidator>
                      </div>
                        </div>
                          </div>
  <br><br/>




  <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Body type</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlbodytype" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="HatchBack" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="SUV/MUV" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Sedan" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="coupe" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="Crossovers" Value="4"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />



               
                   <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Year</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                      <asp:TextBox ID="txtyear" runat="server" class="form-control" placeholder="Year"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Enter Year"  ForeColor="Red" ControlToValidate="txtyear"></asp:RequiredFieldValidator>
                      </div>
                        </div>
                          </div>
  <br><br/>


  <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Fuel Type</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                     <%-- <asp:TextBox ID="txtfuel" runat="server" class="form-control"></asp:TextBox>--%>
                     <asp:RadioButtonList ID="rbfuel" runat="server">
                     <asp:ListItem Text="Petrol" Value="0"></asp:ListItem>
                     <asp:ListItem Text="Diesel" Value="1"></asp:ListItem>
                     <asp:ListItem Text="Petrol/diesel" Value="2"></asp:ListItem>
                     </asp:RadioButtonList>
                      </div>
                        </div>
                          </div>

                   <br><br/><br/><br/><br/>


                     <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Transmission</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                      <asp:TextBox ID="txttransmissio" runat="server" class="form-control" placeholder="Transmission(1):Automatic(2):Manual"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Enter Transmission Please value enter (1):Automatic (2):Manual"  ForeColor="Red" ControlToValidate="txttransmissio"></asp:RequiredFieldValidator>
                      </div>
                        </div>
                          </div>
  <br><br/>



             


                  <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">No of Gears</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">

                      <asp:TextBox ID="txtgear" runat="server" class="form-control" placeholder="No Of Gears"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="Enter no. of gear"  ForeColor="Red" ControlToValidate="txtgear"></asp:RequiredFieldValidator>
                     
                      </div>
                        </div>
                          </div>
                      <br><br/>
                         
        
                

        
                                <div class="panel-body">
                            <div class="col-lg-10">
                              <%-- <button class="btn btn-primary" type="submit">Submit</button>--%>
                              
                                  <asp:Button ID="btnnext" runat="server" Text="Next" 
                                    class="btn btn-primary" onclick="btnnext_Click"  BackColor="#333333"  ></asp:Button>
                            </div>
              </div>






                        </asp:View>
                        <asp:View ID="View2" runat="server">
                      
                                  <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Height</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">

                      <asp:TextBox ID="txtheight" runat="server" class="form-control" placeholder="Height"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="Enter Height"  ForeColor="Red" ControlToValidate="txtheight"></asp:RequiredFieldValidator>
                     
                      </div>
                        </div>
                          </div>

                    <br><br/>

                     <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Length</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">

                      <asp:TextBox ID="txtlength" runat="server" class="form-control" placeholder="Length"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="Enter length"  ForeColor="Red" ControlToValidate="txtlength"></asp:RequiredFieldValidator>
                      
                      </div>
                        </div>
                          </div>

                    
                    <br><br/>
                    <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">width</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">                    
                                  <asp:TextBox ID="txtwidth" runat="server" class="form-control" placeholder="Width"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Text="Enter width"  ForeColor="Red" ControlToValidate="txtwidth"></asp:RequiredFieldValidator>
                      
                      </div>
                        </div>
                          </div>

                    <br><br/>


                   
                    <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Wheelbase</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">                    
                                  <asp:TextBox ID="txtwheelbase" runat="server" class="form-control" placeholder="Wheelbase"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Text="Enter Wheelbase"  ForeColor="Red" ControlToValidate="txtwheelbase"></asp:RequiredFieldValidator>
                     
                      </div>
                        </div>
                          </div>

                    <br><br/>


                    
                    <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Door</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">                    
                                  <asp:TextBox ID="txtdoor" runat="server" class="form-control" placeholder="Door"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Text="Enter door"  ForeColor="Red" ControlToValidate="txtdoor"></asp:RequiredFieldValidator>
                     
                      </div>
                        </div>
                          </div>

                    <br><br/>

                    
                    <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Seating Capacity</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">                    
                                  <asp:TextBox ID="txtseatingcapacity" runat="server" class="form-control" placeholder="Seating Capacity"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Text="Enter seating capacity"  ForeColor="Red" ControlToValidate="txtseatingcapacity"></asp:RequiredFieldValidator>
                     
                      </div>
                        </div>
                          </div>

                   


                    <br><br/>
                    <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Fuel Tank Capacity</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">                    
                                  <asp:TextBox ID="txtfuelcapacity" runat="server" class="form-control" placeholder="fuel Tank Capacity"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Text="Enter fuel capacity"  ForeColor="Red" ControlToValidate="txtfuelcapacity"></asp:RequiredFieldValidator>
                     
                      </div>
                        </div>
                          </div>

                    <br><br />

                       
                                <div class="panel-body">
                            <div class="col-lg-10">
                              <%-- <button class="btn btn-primary" type="submit">Submit</button>--%>
                               <asp:Button ID="btnprev" runat="server" Text="Previous" 
                                    class="btn btn-primary" onclick="btnprev_Click"  BackColor="#333333"  />   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <asp:Button ID="btnnext1" runat="server" Text="Next" 
                                    class="btn btn-primary" onclick="btnnext1_Click" BackColor="#333333" ></asp:Button>
                            </div>
              </div>
                        </asp:View>




                             <asp:View ID="View3" runat="server">
                          
                           <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Air Conditioner</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlac" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />


                          <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Climate Contol</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlclimate_control" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />


                          <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">CD Player</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlcd_player" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />


                          <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Power Steering</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlpower_steering" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                         <br /><br />

                          <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Power Windows</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlpower_windows" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />
                       
                   
                    <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Central Locking</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlcentral_locking" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />


                         <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Steering Adjustment</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlsteering_adjustment" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />

                         <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Electrically Adjustment Driver Seat</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddldriver_seat" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />


                         <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Steering Mounted Control</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlsteering_mounted" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />


                         <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Rear AC Vent</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlrear_ac_vent" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />


                         <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Remote Controlled Boot</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlremote_control_boot" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />


                         <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Rear Wiper</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlrear_wiper" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />



                         <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Leather Seats</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddllether_seat" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />


                         <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Electrically Adjustable Mirrors</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlmirror" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />


                         <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Anti-Lock Braking System</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlanti_lock" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />



                         <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Airbag</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlairbag" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />


                         <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Parking Sensors</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlparking_sensor" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>


                         <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Tracing Control</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddltracing_control" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <br /><br />
                        <br /><br />
                             <asp:Button ID="btnprev1" runat="server" Text="Previous" 
                                    class="btn btn-primary" onclick="btnprev1_Click"  BackColor="#333333"  />   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                                    class="btn btn-primary" onclick="btnsubmit_Click"  BackColor="#333333" ></asp:Button>
                             </asp:View>
                 </asp:MultiView>


                       
            
            
            </section>
           </section>


</asp:Content>

