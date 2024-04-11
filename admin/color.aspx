<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="color.aspx.cs" Inherits="admin_color" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section id="main-content" style="margin-left: 180px;">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> Color</h3>
        <%--<ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="icon_document_alt"></i>Forms</li>
              <li><i class="fa fa-file-text-o"></i>Form elements</li>
            </ol>--%>
          </div>
        </div>
        
        <!-- Basic Forms & Horizontal Forms-->

         
        <!-- Inline form-->
        

        
        <!-- page end-->
      

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
                  <label class="control-label col-lg-2" for="inputSuccess">Color name</label>
                    <div class="col-lg-10">
                      
                       <%-- <div class="col-lg-2">
                          <input class="form-control" type="text" placeholder=".col-lg-2">
                        </div>--%>
                        <div class="col-lg-3">
                        <%--  <input class="form-control" type="text" placeholder=".col-lg-3">--%>
                        <asp:TextBox ID="txtcolorname" placeholder="Enter Color Name" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcolorname" Text="Enter color name"  ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                      <%--  <div class="col-lg-4">
                          <input class="form-control" type="text" placeholder=".col-lg-4">
                        </div>--%>
                      

                    </div>
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



             <br /><br />
         


                  <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Uplod Color Image</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                 <asp:FileUpload ID="fu1" runat="server" ForeColor="red"></asp:FileUpload>
                                </div>
                                         
                              </div>
                  </div>

                  <br /><br />


             



                  <div class="panel-body">
                            <div class="col-lg-10">
                              <%-- <button class="btn btn-primary" type="submit">Submit</button>--%>
                                  <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                                    class="btn btn-primary" BackColor="#333333" onclick="btnsubmit_Click" ></asp:Button>
                            </div>
              </div>

                     
             </section>
             
             </section> 
</asp:Content>

