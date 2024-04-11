<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="color.aspx.cs" Inherits="admin_color" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
    function submitForm() {

        var colorName = $('#<%= ddlcolor.ClientID %> option:selected').val();
        if (colorName.trim() === '') {
            alert('Please select a color.');
            return false;
        }

        //if (!/^[a-zA-Z0-9]{5,}$/.test(companyName)) {
        //    alert("Modal name should be at least 5 characters long and contain only alphanumeric characters.");
        //    return false;
        //}
        // Get the file input element
        var fileUpload = document.getElementById('<%= fu1.ClientID %>');
        // Check if a file is selected
        if (fileUpload.files.length === 0) {
            alert("Please select a file to upload Logo.");
            return false;
        }

        var fileName = fileUpload.value;
        // Check if the file has a valid extension
        if (!isValidFileExtension(fileName)) {
            alert("Please select a JPG or PNG file.");
            return false;
        }

        // If validation passes, you can submit the form
        return true;
    }

    // Function to check if the file extension is valid
    function isValidFileExtension(fileName) {
        var validExtensions = ['jpg', 'jpeg', 'png'];
        var fileExtension = fileName.split('.').pop().toLowerCase();
        return validExtensions.indexOf(fileExtension) !== -1;
    }




</script>


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




<%--                    <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess">Color name</label>
                    <div class="col-lg-10">
                     
                        <div class="col-lg-3">
                        <asp:TextBox ID="txtcolorname" placeholder="Enter Color Name" runat="server" class="form-control"></asp:TextBox>
                        </div>
                      --%>
                      

<%--                    </div>
             </div>--%>
        <div class="form-group">
    <label class="control-label col-lg-2" for="ddlcolor">Color name</label>
    <div class="col-lg-10">
        <div class="col-lg-3">
            <asp:DropDownList ID="ddlcolor" runat="server" CssClass="form-control">
                <asp:ListItem Text="Red" Value="red"></asp:ListItem>
<%--                <asp:ListItem Text="Blue" Value="blue"></asp:ListItem>--%>
<%--                <asp:ListItem Text="Green" Value="green"></asp:ListItem>--%>
<%--                <asp:ListItem Text="Yellow" Value="yellow"></asp:ListItem>--%>
<%--                <asp:ListItem Text="Orange" Value="orange"></asp:ListItem>--%>
<%--                <asp:ListItem Text="Purple" Value="purple"></asp:ListItem>--%>
<%--                <asp:ListItem Text="Pink" Value="pink"></asp:ListItem>--%>
<%--                <asp:ListItem Text="Brown" Value="brown"></asp:ListItem>--%>
                <asp:ListItem Text="Gray" Value="gray"></asp:ListItem>
                 <asp:ListItem Text="White" Value="White"></asp:ListItem>

                <asp:ListItem Text="Black" Value="black"></asp:ListItem>
            </asp:DropDownList>
        </div>
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
                                    class="btn btn-primary" BackColor="#333333" onclick="btnsubmit_Click"  OnClientClick="return submitForm();" ></asp:Button>
                            </div>
              </div>

                     
             </section>
             
             </section> 
</asp:Content>

