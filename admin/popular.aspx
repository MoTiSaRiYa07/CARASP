<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="popular.aspx.cs" Inherits="admin_popular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="main-content" style="margin-left: 180px;">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> POPULAR CARS</h3>
            </div>
            </div>

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
                       <label class="control-label col-lg-2" for="inputSuccess"> price</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                     <asp:TextBox ID="txtprice" runat="server" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Enter price" ForeColor="Red" ControlToValidate="txtprice"></asp:RequiredFieldValidator>
                                         
                                         </div>
                       </div>
                 </div>
                 <br /> <br /> 

                   <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess"> Fuel </label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                     <asp:TextBox ID="txtfuel" runat="server" class="form-control"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Enter fuel" ForeColor="Red" ControlToValidate="txtfuel"></asp:RequiredFieldValidator>
                                         
                                         </div>
                       </div>
                 </div>
                 <br /> <br /> 
                 <div class="form-group">
                    <label for="exampleInputFile" class="control-label col-lg-2">Uplode Photo</label>
                      <div class="col-lg-10">
                          <div class="col-lg-3">
                            
                                     <asp:FileUpload ID="fu1" runat="server" ForeColor="Red"  >
                                     </asp:FileUpload>
                                 
                          </div>
                      </div>
                   <%-- <input id="exampleInputFile" type="file">--%>
                   <%-- <p class="help-block">Example block-level help text here.</p>--%>
                    </div>
                    <br /><br />
                   <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Status</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlstatus" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                           
                 <br /> <br /> 
                                   
                             
           
                              <div class="panel-body">
                                
                            <div class="col-lg-10">
                              <%-- <button class="btn btn-primary" type="submit">Submit</button>--%>
                                  <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                                    class="btn btn-primary" onclick="btnsubmit_Click" BackColor="#333333" ></asp:Button>
                            </div>
              </div> 

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                      DataKeyNames="id" DataSourceID="SqlDataSource3" BackColor="White"  
                    BorderStyle="None"  BorderWidth="4px" CellPadding="4" ForeColor="#333333"
                                      EmptyDataText="There are no data records to display.">
                                      <Columns>
                                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                          <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                                              SortExpression="id" />
                                          <asp:BoundField DataField="comp" HeaderText="comp" SortExpression="comp" />
                                          <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                                          <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                          <asp:BoundField DataField="fuel" HeaderText="fuel" SortExpression="fuel" />
                                          <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                                          <asp:BoundField DataField="status" HeaderText="status" 
                                              SortExpression="status" />
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
                                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                      DeleteCommand="DELETE FROM [tbl_popular] WHERE [id] = @id" 
                                      InsertCommand="INSERT INTO [tbl_popular] ([comp], [model], [price], [fuel], [photo], [status]) VALUES (@comp, @model, @price, @fuel, @photo, @status)" 
                                      ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                      SelectCommand="SELECT [id], [comp], [model], [price], [fuel], [photo], [status] FROM [tbl_popular]" 
                                      UpdateCommand="UPDATE [tbl_popular] SET [comp] = @comp, [model] = @model, [price] = @price, [fuel] = @fuel, [photo] = @photo, [status] = @status WHERE [id] = @id">
                                      <DeleteParameters>
                                          <asp:Parameter Name="id" Type="Int32" />
                                      </DeleteParameters>
                                      <InsertParameters>
                                          <asp:Parameter Name="comp" Type="String" />
                                          <asp:Parameter Name="model" Type="String" />
                                          <asp:Parameter Name="price" Type="Int32" />
                                          <asp:Parameter Name="fuel" Type="String" />
                                          <asp:Parameter Name="photo" Type="String" />
                                          <asp:Parameter Name="status" Type="Int32" />
                                      </InsertParameters>
                                      <UpdateParameters>
                                          <asp:Parameter Name="comp" Type="String" />
                                          <asp:Parameter Name="model" Type="String" />
                                          <asp:Parameter Name="price" Type="Int32" />
                                          <asp:Parameter Name="fuel" Type="String" />
                                          <asp:Parameter Name="photo" Type="String" />
                                          <asp:Parameter Name="status" Type="Int32" />
                                          <asp:Parameter Name="id" Type="Int32" />
                                      </UpdateParameters>
                                  </asp:SqlDataSource>


              </section>
              </section>
</asp:Content>

