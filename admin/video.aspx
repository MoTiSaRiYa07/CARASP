<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="video.aspx.cs" Inherits="admin_video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i>Video Uploading</h3>
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
                  <label class="control-label col-lg-2" for="inputSuccess">News</label>
                    <div class="col-lg-10">
                      
                            <div class="col-lg-3">
                           
                        <%--  <input class="form-control" type="text" placeholder=".col-lg-3">--%>
                        <asp:TextBox ID="txtnews" placeholder="Enter News" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        
                      <%--  <div class="col-lg-4">
                          <input class="form-control" type="text" placeholder=".col-lg-4">
                        </div>--%>
                      

                    </div>
             </div>
             <br></br>


                <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Status</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:DropDownList ID="ddlstatus" runat="server" class="form-control m-bot15">
                                           <asp:ListItem Text="Yes" Value="0"></asp:ListItem>
                                           <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                       </asp:DropDownList>
                                </div>
                                          <%--<select class="form-control m-bot15">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                                          </select>

                      <select class="form-control" multiple="">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                                          </select>--%>
                              </div>
                  </div>




                    <div class="form-group">
                    <label for="exampleInputFile" class="control-label col-lg-2">Uplode Video</label>
                      <div class="col-lg-10">
                          <div class="col-lg-3">
                            
                                     <asp:FileUpload ID="fu1" runat="server" ForeColor="Red"  >
                                     </asp:FileUpload>
                                 
                          </div>
                      </div>
                   <%-- <input id="exampleInputFile" type="file">--%>
                   <%-- <p class="help-block">Example block-level help text here.</p>--%>
                    </div>

                    </br>

                  <br>  </br>
                  <div class="panel-body">
                            <div class="col-lg-10">
                              <%-- <button class="btn btn-primary" type="submit">Submit</button>--%>
                                  <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#333333"  class="btn btn-primary" 
                                    onclick="btnsubmit_Click"></asp:Button>

                            </div>
              </div>

                 

<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


            
   </section>
</asp:Content>

