<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="car_image.aspx.cs" Inherits="admin_car_image" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section id="main-content" style="margin-left: 180px;">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> Car images</h3>
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

               <br /> <br /> 

                  <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Model name</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlmodel" runat="server" class="form-control m-bot15" 
                                           DataSourceID="SqlDataSource2" DataTextField="modelname" 
                                           DataValueField="modelid" AutoPostBack="True" 
                                           onselectedindexchanged="ddlmodel_SelectedIndexChanged">
                                           
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
                 <br /> <br /> 

                 

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
                                   <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Photo</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">

                                <asp:FileUpload ID="fu1" runat="server"></asp:FileUpload>

                                </div>
                                </div>
                            </div>
                            
                            <br /><br /> 
                            <br /><br /> 

                              <div class="panel-body">
                            <div class="col-lg-10">
                              <%-- <button class="btn btn-primary" type="submit">Submit</button>--%>
                                  <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                                    class="btn btn-primary" onclick="btnsubmit_Click" BackColor="#333333" ></asp:Button>
                            </div>
              </div> 

                     <br /><br /> 
                    <asp:GridView ID="GridView1" runat="server"  >
                <AlternatingRowStyle BackColor="White" />
<EditRowStyle BackColor="#efefef" />
<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
<RowStyle BackColor="#EFF3FB" />
<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
<SortedAscendingCellStyle BackColor="#F5F7FB" />
<SortedAscendingHeaderStyle BackColor="#6D95E1" />
<SortedDescendingCellStyle BackColor="#E9EBEF" />
<SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>

                    
                    
                      
                      <asp:DataList ID="DataList1" runat="server" RepeatColumns="3"  >
                      <ItemTemplate>
                      <table>
                      <tr>
                        <th><asp:Image ID="Image1" runat="server" Height="250" Width="250" imageurl='<%# "gallery/" + Eval("image")%>'></asp:Image>
                               
                        </th>
                      </tr>
                      </table>
                      </ItemTemplate>
                      </asp:DataList>

                            <asp:Image ID="imgPhoto" class="img-responsive" Height="250" Width="250" runat="server" />
                   

                    







   </section>
   </section>




</asp:Content>

