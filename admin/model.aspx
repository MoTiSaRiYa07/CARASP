<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="model.aspx.cs" Inherits="admin_model" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
    function submitForm() {

       
       // Validate form fields
        var companyName = $('#<%= txtmname.ClientID %>').val();
        if (companyName.trim() === '') {
            alert('Please enter Modal name.');
            return false;

        }

        if (!/^[a-zA-Z0-9]{5,}$/.test(companyName)) {
            alert("Modal name should be at least 5 characters long and contain only alphanumeric characters.");
            return false;
        }
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




 <section id="main-content" >
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i>Add Model</h3>
            </div>
            </div>
           
    <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess">Company name</label>
                    <div class="col-lg-10">
                      
                            <div class="col-lg-3">
                      <asp:DropDownList ID="ddlcompname" runat="server" class="form-control m-bot15" 
                                           DataSourceID="SqlDataSource1" DataTextField="compname" DataValueField="compid">
                                           
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
             <br></br>

                <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Model</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                       <asp:TextBox ID="txtmname" placeholder="Enter Model" runat="server" class="form-control"></asp:TextBox>
<%--                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Enter model name"  ForeColor="Red" ControlToValidate="txtmname"></asp:RequiredFieldValidator>--%>
                                </div>
                                         
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
                            </div>
                        </div>

                 <br> </br>

                    <div class="form-group">
                    <label for="exampleInputFile" class="control-label col-lg-2">Uplode Logo</label>
                      <div class="col-lg-10">
                          <div class="col-lg-3">
                            
                                     <asp:FileUpload ID="fu1" runat="server" ForeColor="Red"></asp:FileUpload>
                                 
                          </div>
                      </div>
                  
                    </div>

                   

                   <br></br>
                    

                  
                  <div class="panel-body">
                            <div class="col-lg-10">
                             
                                  <asp:Button ID="btnsubmit" BackColor="#333333"  runat="server" Text="Submit" 
                                    class="btn btn-primary" onclick="btnsubmit_Click"  OnClientClick="return submitForm();" ></asp:Button>

                            </div>
              </div>


<asp:GridView ID="GridView1" BackColor="White"  
                    BorderStyle="None"  BorderWidth="4px" CellPadding="4" ForeColor="#333333" runat="server" AutoGenerateColumns="False" DataKeyNames="modelid" EmptyDataText="There are no data records to display." DataSourceID="SqlDataSource2"><Columns>
    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
<asp:BoundField DataField="modelid" HeaderText="Model ID" ReadOnly="True" SortExpression="modelid"></asp:BoundField>
<asp:BoundField DataField="compid" HeaderText="Company ID" SortExpression="compid"></asp:BoundField>
<asp:BoundField DataField="modelname" HeaderText="Model Name" SortExpression="modelname"></asp:BoundField>
<asp:BoundField DataField="image" HeaderText="Image" SortExpression="image"></asp:BoundField>
<asp:BoundField DataField="status" HeaderText="Status" SortExpression="status"></asp:BoundField>
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
 <asp:SqlDataSource runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [tbl_model] WHERE [modelid] = @modelid" 
        InsertCommand="INSERT INTO [tbl_model] ([compid], [modelname],[image], [status]) VALUES (@compid, @modelname, @status)" 
        SelectCommand="SELECT [modelid], [compid], [modelname],[image], [status] FROM [tbl_model]" 
        UpdateCommand="UPDATE [tbl_model] SET [compid] = @compid, [modelname] = @modelname, [image] = @image,[status] = @status WHERE [modelid] = @modelid" 
        ID="SqlDataSource2"><DeleteParameters>
<asp:Parameter Name="modelid" Type="Int32"></asp:Parameter>
</DeleteParameters>
<InsertParameters>
<asp:Parameter Name="compid" Type="Int32"></asp:Parameter>
<asp:Parameter Name="modelname" Type="String"></asp:Parameter>
<asp:Parameter Name="image" Type="String"></asp:Parameter>
<asp:Parameter Name="status" Type="Int32"></asp:Parameter>
</InsertParameters>
<UpdateParameters>
<asp:Parameter Name="compid" Type="Int32"></asp:Parameter>
<asp:Parameter Name="modelname" Type="String"></asp:Parameter>
<asp:Parameter Name="image" Type="String"></asp:Parameter>
<asp:Parameter Name="status" Type="Int32"></asp:Parameter>
<asp:Parameter Name="modelid" Type="Int32"></asp:Parameter>
</UpdateParameters>
</asp:SqlDataSource>
 
            
            </section>
      
           </section>
    
               <asp:Button ID="Button1" runat="server" Text=" REPORT PDF CLICK"
style="color: red; font-size: 20px; width: 250px; height: 50px; text-align: center; display: block; margin: 0 auto;" OnClick="Button1_Click"/>

</asp:Content>

