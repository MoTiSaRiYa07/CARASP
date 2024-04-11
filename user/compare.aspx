<%@ Page Title="" Language="C#" MasterPageFile="~/user/user1.master" AutoEventWireup="true" CodeFile="compare.aspx.cs" Inherits="user_compare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server">
<div class="sell-car w3l">
			<div class="container">
			<h3 class="tittle">COMPARE CARS</h3>
			    <!--/sell-price-grids -->
	              	<div class="compare">

			<h4>Choose at least two cars of your choice to see how they compare on price, features, and performance.</h4>

			<div class="compare-cars">
				<div class="compare-text compare-cars-text">
					<p>Car 1</p>
				</div>
				<div class="compare-form-data compare-cars-form-data">
		
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
                                       
                                       
                                       
                                 
					

                       <asp:DropDownList ID="ddlmodel" runat="server" class="form-control m-bot15" 
                                           DataSourceID="SqlDataSource2" DataTextField="modelname" DataValueField="modelid" AutoPostBack="True" >
                                           
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
										
                                        
                                         <asp:DropDownList ID="ddlversion" runat="server" 
                                           class="form-control m-bot15" DataSourceID="SqlDataSource3" 
                                           DataTextField="versionname" DataValueField="versionid"  >
                                           
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
                                      
                                      
					
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="compare-cars w3l">
				<div class="compare-text compare-cars-text">
					<p>Car 2</p>
				</div>
				<div class="compare-form-data compare-cars-form-data">
					
						    <asp:DropDownList ID="ddlcomp" runat="server" class="form-control m-bot15" 
                                           DataSourceID="SqlDataSource4" DataTextField="compname" 
                                           DataValueField="compid" AutoPostBack="True">
                                           
                                       </asp:DropDownList>
                                       <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                           SelectCommand="SELECT * FROM [tbl_comp] WHERE ([status] = @status)">
                                           <SelectParameters>
                                               <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                                           </SelectParameters>
                                       </asp:SqlDataSource>
					

                       <asp:DropDownList ID="ddlmodel1" runat="server" class="form-control m-bot15" 
                                           DataSourceID="SqlDataSource5" DataTextField="modelname" DataValueField="modelid" AutoPostBack="True" >
                                           
                                       </asp:DropDownList>
                                         <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                           SelectCommand="SELECT * FROM [tbl_model] WHERE (([compid] = @compid) AND ([status] = @status))">
                                             <SelectParameters>
                                                 <asp:ControlParameter ControlID="ddlcomp" Name="compid" 
                                                     PropertyName="SelectedValue" Type="Int32" />
                                                 <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                                             </SelectParameters>
                                       </asp:SqlDataSource>
					

                      <asp:DropDownList ID="ddlversion1" runat="server" 
                                           class="form-control m-bot15" DataSourceID="SqlDataSource6" 
                                           DataTextField="versionname" DataValueField="versionid"  >
                                           
                                       </asp:DropDownList>
                                       
                                         <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                           SelectCommand="SELECT * FROM [tbl_version] WHERE (([modelid] = @modelid) AND ([status] = @status))">
                                             <SelectParameters>
                                                 <asp:ControlParameter ControlID="ddlmodel1" Name="modelid" 
                                                     PropertyName="SelectedValue" Type="Int32" />
                                                 <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                                             </SelectParameters>
                                       </asp:SqlDataSource>
                                      
					
					
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>

			

            <div class="value-button">
				
				   <asp:Button ID="btncompare" runat="server" Text="Compare" 
                       onclick="btncompare_Click1" />
      			
			</div>
		
   


			<div class="clearfix"></div>

			<div class="new w3-agile">
				<h3>Hot New Car Comparisons</h3>
				<div class="new-car new-car-1">
					<div class="new-car-image">
						<img src="images/new-car-1.jpg">
					</div>
					<div class="new-car-info">
						<h4>Audi A8 W12 Quattro</h4>
						<p>$85000</p>
						<span></span>
						<br>
						<br>
						<a href="news.html">39 Reviews</a>
					</div>
				</div>
				<div class="new-car new-car-2">
					<div class="new-car-image">
						<img src="images/new-car-2.jpg">
					</div>
					<div class="new-car-info">
						<h4>BMW 750Li</h4>
						<p>$89000</p>
						<span></span>
						<br>
						<br>
						<a href="news.html">67 Reviews</a>
					</div>
				</div>
				<div class="new-car new-car-3">
					<div class="new-car-image">
						<img src="images/new-car-3.jpg">
					</div>
					<div class="new-car-info">
						<h4>Mercedes-Benz S500</h4>
						<p>$87000</p>
						<span></span>
						<br>
						<br>
						<a href="news.html">45 Reviews</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

			</div>

		</div>
		</div>
        </form>
</asp:Content>

