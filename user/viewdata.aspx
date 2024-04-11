<%@ Page Language="C#" MasterPageFile="~/user/user1.master" AutoEventWireup="true" CodeFile="viewdata.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server">
    <div>

 <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> Profile</h3>
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
      
      
<%--                         <asp:Image ID="img" runat="server" Height="100" Width="100" ></asp:Image>--%>
                     
           
           <br /><br />
           
            <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess">User Name</label>
                    <div class="col-lg-10">
                      <div class="row">
                            <div class="col-lg-3">
                        <%--  <input class="form-control" type="text" placeholder=".col-lg-3">--%>
                        <asp:TextBox ID="txtuname" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                        </div>
                      <%--  <div class="col-lg-4">
                          <input class="form-control" type="text" placeholder=".col-lg-4">
                        </div>--%>
                      </div>

                    </div>
             </div>


               
               <br /><br />


                  <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess">Last Name</label>
                    <div class="col-lg-10">
                      <div class="row">
                            <div class="col-lg-3">
                        <%--  <input class="form-control" type="text" placeholder=".col-lg-3">--%>
                        <asp:TextBox ID="txtlname" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                        </div>
                      <%--  <div class="col-lg-4">
                          <input class="form-control" type="text" placeholder=".col-lg-4">
                        </div>--%>
                      </div>

                    </div>
             </div>

                  
                  <br /><br />

 <div class="form-group">
 
                  <label class="control-label col-lg-2" for="inputSuccess">Email</label>
                    <div class="col-lg-10">
                      <div class="row">
                            <div class="col-lg-3">
                        <%--  <input class="form-control" type="text" placeholder=".col-lg-3">--%>
                        <asp:TextBox ID="txtemail" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                        </div>
                      <%--  <div class="col-lg-4">
                          <input class="form-control" type="text" placeholder=".col-lg-4">
                        </div>--%>
                      </div>

                    </div>
             </div>


                  
                  <br /><br />


                   <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess">City</label>
                    <div class="col-lg-10">
                      <div class="row">
                            <div class="col-lg-3">
                      
                        <asp:TextBox ID="txtadd" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                        </div>
                      </div>

                    </div>
             </div>

                  
                  <br /><br />
           
     <%--                     <div class="form-group">
     <label class="control-label col-lg-2" for="inputSuccess">City</label>
       <div class="col-lg-10">
         <div class="row">
               <div class="col-lg-3">
         
           <asp:TextBox ID="txtcity" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
           </div>
         </div>

       </div>
</div>--%>

     
<%--     <br /><br />--%>


                   <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess">Contact no</label>
                    <div class="col-lg-10">
                      <div class="row">
                            <div class="col-lg-3">
                        <%--  <input class="form-control" type="text" placeholder=".col-lg-3">--%>
                        <asp:TextBox ID="txtcno" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                        </div>
                      <%--  <div class="col-lg-4">
                          <input class="form-control" type="text" placeholder=".col-lg-4">
                        </div>--%>
                      </div>

                    </div>
             </div>

                  
                  <asp:Label ID="lblmesage" runat="server"></asp:Label>

                  
                  <br /><br />


                  

                  <div class="panel-body">
                            <div class="col-lg-10" style="left: -38px; top: 0px; width: 261px">
                              <%-- <button class="btn btn-primary" type="submit">Submit</button>--%>
                                  <asp:Button ID="btnupdate" runat="server" Text="Update" class="btn btn-primary" 
                                    Visible="true" OnClick="btnupdate_Click"></asp:Button>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btedit" runat="server" Text="Edit" class="btn btn-primary" Width="81px" OnClick="btedit_Click" 
                                  ></asp:Button>
                            </div>
              </div>

              
  </section>
    </section>



   
       </div>
    </form>
</asp:Content>


