<%@ Page Language="C#"  MasterPageFile="~/dealer/dealer.master" AutoEventWireup="true" CodeFile="ViewData.aspx.cs" Inherits="dealer_ViewData" %>
 
 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content" style="margin: 29px; padding: 40px; text-align: justify; line-height: 25px; vertical-align: 45px; text-indent: 5px; white-space: normal; word-spacing: normal; background-attachment: fixed; position: static; z-index: inherit; width: auto;">
        <section>
            <div class="row about-w3layouts">
                <div class="col-lg-6">
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i>Profile</h3>
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


            <asp:Image ID="img" runat="server" Height="100" Width="100"></asp:Image>


            <br />
            <br />

            <div class="form-group">
                <label class="control-label col-lg-2" for="inputSuccess">Dealer Name</label>
                <div class="col-lg-10">
                    <div class="row">
                        <div class="col-lg-3">
                            <%--  <input class="form-control" type="text" placeholder=".col-lg-3">--%>
                            <asp:TextBox ID="txtdname" runat="server" class="form-control" ReadOnly="True" Width="329px"></asp:TextBox>
                        </div>
                        <%--  <div class="col-lg-4">
                          <input class="form-control" type="text" placeholder=".col-lg-4">
                        </div>--%>
                    </div>

                </div>
            </div>



            <br />
            <br />


            <div class="form-group">
                <label class="control-label col-lg-2" for="inputSuccess">Last Name</label>
                <div class="col-lg-10">
                    <div class="row">
                        <div class="col-lg-3">
                            <%--  <input class="form-control" type="text" placeholder=".col-lg-3">--%>
                            <asp:TextBox ID="txtlname" runat="server" class="form-control" ReadOnly="True" Width="329px"></asp:TextBox>
                        </div>
                        <%--  <div class="col-lg-4">
                          <input class="form-control" type="text" placeholder=".col-lg-4">
                        </div>--%>
                    </div>

                </div>
            </div>


            <br />
            <br />


            <div class="form-group">
                <label class="control-label col-lg-2" for="inputSuccess">Dealership Name</label>
                <div class="col-lg-10">
                    <div class="row">
                        <div class="col-lg-3">
                            <%--  <input class="form-control" type="text" placeholder=".col-lg-3">--%>
                            <asp:TextBox ID="txtdename" runat="server" class="form-control" ReadOnly="True" Width="328px"></asp:TextBox>
                        </div>
                        <%--  <div class="col-lg-4">
                          <input class="form-control" type="text" placeholder=".col-lg-4">
                        </div>--%>
                    </div>

                </div>
            </div>


            <br />
            <br />

            <div class="form-group">

                <label class="control-label col-lg-2" for="inputSuccess">Email</label>
                <div class="col-lg-10">
                    <div class="row">
                        <div class="col-lg-3">
                            <%--  <input class="form-control" type="text" placeholder=".col-lg-3">--%>
                            <asp:TextBox ID="txtemail" runat="server" class="form-control" ReadOnly="True" Width="325px"></asp:TextBox>
                        </div>
                        <%--  <div class="col-lg-4">
                          <input class="form-control" type="text" placeholder=".col-lg-4">
                        </div>--%>
                    </div>

                </div>
            </div>
            


            <br />
            <br />


            <div class="form-group">
                <label class="control-label col-lg-2" for="inputSuccess">Address</label>
                <div class="col-lg-10">
                    <div class="row">
                        <div class="col-lg-3">

                            <asp:TextBox ID="txtadd" runat="server" class="form-control" ReadOnly="True" Width="329px"></asp:TextBox>
                        </div>
                    </div>

                </div>
            </div>


            <br />
            <br />


            <div class="form-group">
                <label class="control-label col-lg-2" for="inputSuccess">Contact no</label>
                <div class="col-lg-10">
                    <div class="row">
                        <div class="col-lg-3">
                            <%--  <input class="form-control" type="text" placeholder=".col-lg-3">--%>
                            <asp:TextBox ID="txtcno" runat="server" class="form-control" ReadOnly="True" Width="329px"></asp:TextBox>
                        </div>
                        <%--  <div class="col-lg-4">
                          <input class="form-control" type="text" placeholder=".col-lg-4">
                        </div>--%>
                    </div>

                </div>
            </div>


            <br />
            <br />




            <div class="panel-body">
                <div class="col-lg-10">
                    <%-- <button class="btn btn-primary" type="submit">Submit</button>--%>
                    <asp:Button ID="btnupdate" runat="server" Text="Update" class="btn btn-primary"
                        Visible="true" OnClick="btnupdate_Click"></asp:Button>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btedit" runat="server" Text="Edit" class="btn btn-primary" OnClick="btedit_Click"></asp:Button>
                </div>
                <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
            </div>


        </section>
    </section>

</asp:Content>

