<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="show_car_detail.aspx.cs" Inherits="admin_show_car_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="main-content" style="margin-left: 180px;">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> Show car detail</h3>
            </div>
            </div>

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
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

                 <br><br/><br/>

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
                 </ContentTemplate>
                 </asp:UpdatePanel>




                     

                     <br /><br /><br />
<asp:GridView ID="gvfactor" runat="server" BackColor="White"  
                    BorderStyle="None"  BorderWidth="4px" CellPadding="4" ForeColor="#333333" 
        DataKeyNames="id" DataSourceID="SqlDataSource4" >
    <Columns>
        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" 
            ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="modelid" HeaderText="ModelID" 
            SortExpression="modelid" />
        <asp:BoundField DataField="versionid" HeaderText="VersionID" 
            SortExpression="versionid" />
        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
        <asp:BoundField DataField="body_type" HeaderText="Body Type" 
            SortExpression="body_type" />
        <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
        <asp:BoundField DataField="fuel" HeaderText="Fuel" SortExpression="fuel" />
        <asp:BoundField DataField="transmission" HeaderText="Transmission" 
            SortExpression="transmission" />
        <asp:BoundField DataField="no_of_gears" HeaderText="Gears" 
            SortExpression="no_of_gears" />
  
    </Columns>
     <FooterStyle BackColor="White" Font-Names="Arial" ForeColor="#333333" />
               <HeaderStyle BackColor="#343d3d" Font-Bold="True"  Font-Names="Arial" ForeColor="White" />
               <PagerStyle BackColor="#343d3d" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="White" ForeColor="#333333" Font-Names="Arial" Font-Bold="true" BorderColor="#343d3d" />
               <SelectedRowStyle BackColor="#339966" Font-Bold="True" Font-Names="Arial" ForeColor="White"    BorderColor="#343d3d" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#487575" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#275353" />

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_car_factors] WHERE ([versionid] = @versionid)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlversion" Name="versionid" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br/><br/>

    <asp:GridView ID="gvspecification" runat="server" AutoGenerateColumns="False" BackColor="White"  
                    BorderStyle="None"  BorderWidth="4px" CellPadding="4" ForeColor="#333333"  
        DataKeyNames="specification_id" DataSourceID="SqlDataSource5">
        <Columns>
            <asp:BoundField DataField="specification_id" HeaderText="SpecificationID" 
                InsertVisible="False" ReadOnly="True" SortExpression="specification_id" />
            <asp:BoundField DataField="modelid" HeaderText="ModelID" 
                SortExpression="modelid" />
            <asp:BoundField DataField="versionid" HeaderText="VersionID" 
                SortExpression="versionid" />
            <asp:BoundField DataField="height" HeaderText="Height" 
                SortExpression="height" />
            <asp:BoundField DataField="length" HeaderText="Length" 
                SortExpression="length" />
            <asp:BoundField DataField="width" HeaderText="Width" SortExpression="width" />
            <asp:BoundField DataField="wheelbase" HeaderText="Wheelbase" 
                SortExpression="wheelbase" />
            <asp:BoundField DataField="door" HeaderText="Door" SortExpression="door" />
            <asp:BoundField DataField="seating_capacity" HeaderText="Seating Capacity" 
                SortExpression="seating_capacity" />
            <asp:BoundField DataField="fuel_capacity" HeaderText="Fuel Capacity" 
                SortExpression="fuel_capacity" />
           
        </Columns>
         <FooterStyle BackColor="White" Font-Names="Arial" ForeColor="#333333" />
               <HeaderStyle BackColor="#343d3d" Font-Bold="True"  Font-Names="Arial" ForeColor="White" />
               <PagerStyle BackColor="#343d3d" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="White" ForeColor="#333333" Font-Names="Arial" Font-Bold="true" BorderColor="#343d3d" />
               <SelectedRowStyle BackColor="#339966" Font-Bold="True" Font-Names="Arial" ForeColor="White"    BorderColor="#343d3d" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#487575" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
              
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_car_specification] WHERE ([versionid] = @versionid)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlversion" Name="versionid" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
              

              <br/><br/>
              <asp:GridView ID="gvfeatures" runat="server" BackColor="White"  
                    BorderStyle="None"  BorderWidth="4px" CellPadding="4" ForeColor="#333333"
        AutoGenerateColumns="False" DataKeyNames="featureid" 
        DataSourceID="SqlDataSource6">
                  <Columns>
                      <asp:BoundField DataField="featureid" HeaderText="FeatureID" 
                          InsertVisible="False" ReadOnly="True" SortExpression="featureid" />
                      <asp:BoundField DataField="modelid" HeaderText="ModelID" 
                          SortExpression="modelid" />
                      <asp:BoundField DataField="versionid" HeaderText="VersionID" 
                          SortExpression="versionid" />
                      <asp:BoundField DataField="ac" HeaderText="AC" SortExpression="ac" />
                      <asp:BoundField DataField="climate_control" HeaderText="Climate Control" 
                          SortExpression="climate_control" />
                      <asp:BoundField DataField="cd_player" HeaderText="CD Player" 
                          SortExpression="cd_player" />
                      <asp:BoundField DataField="power_steering" HeaderText="Power Steering" 
                          SortExpression="power_steering" />
                      <asp:BoundField DataField="power_window" HeaderText="Power Window" 
                          SortExpression="power_window" />
                      <asp:BoundField DataField="central_locking" HeaderText="Central Locking" 
                          SortExpression="central_locking" />
                      <asp:BoundField DataField="steering_adjustment" 
                          HeaderText="Steering Adjustment" SortExpression="steering_adjustment" />
                      <asp:BoundField DataField="electrically_adjustable_driver_seat" 
                          HeaderText="Electrically Adjustable_driver_seat" 
                          SortExpression="electrically_adjustable_driver_seat" />
                      <asp:BoundField DataField="steering_mounted_controls" 
                          HeaderText="Steering Mounted Controls" 
                          SortExpression="steering_mounted_controls" />
                      <asp:BoundField DataField="rear_ac_vent" HeaderText="Rear AC Vent" 
                          SortExpression="rear_ac_vent" />
                      <asp:BoundField DataField="remote_controlled_boot" 
                          HeaderText="Remote Controlled Boot" SortExpression="remote_controlled_boot" />
                      <asp:BoundField DataField="rear_wiper" HeaderText="Rear Wiper" 
                          SortExpression="rear_wiper" />
                      <asp:BoundField DataField="leather_seats" HeaderText="Leather Seats" 
                          SortExpression="leather_seats" />
                      <asp:BoundField DataField="electrically_adjustable_mirrors" 
                          HeaderText="Electrically Adjustable Mirrors" 
                          SortExpression="electrically_adjustable_mirrors" />
                      <asp:BoundField DataField="anti_lock_braking_system" 
                          HeaderText="Anti-lock Sraking System" 
                          SortExpression="anti_lock_braking_system" />
                      <asp:BoundField DataField="airbag" HeaderText="Airbag" 
                          SortExpression="airbag" />
                      <asp:BoundField DataField="parking_sensors" HeaderText="Parking Sensors" 
                          SortExpression="parking_sensors" />
                      <asp:BoundField DataField="traction_control" HeaderText="Traction Control" 
                          SortExpression="traction_control" />
                      <asp:CommandField ShowEditButton="True" />
                      <asp:CommandField ShowDeleteButton="True" />
                  </Columns>
                  <FooterStyle BackColor="White" Font-Names="Arial" ForeColor="#333333" />
               <HeaderStyle BackColor="#343d3d" Font-Bold="True"  Font-Names="Arial" ForeColor="White" />
               <PagerStyle BackColor="#343d3d" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="White" ForeColor="#333333" Font-Names="Arial" Font-Bold="true" BorderColor="#343d3d" />
               <SelectedRowStyle BackColor="#339966" Font-Bold="True" Font-Names="Arial" ForeColor="White"    BorderColor="#343d3d" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#487575" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_feature] WHERE ([versionid] = @versionid)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlversion" Name="versionid" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </section>
    </section>
    
</asp:Content>

