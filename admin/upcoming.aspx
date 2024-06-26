﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="upcoming.aspx.cs" Inherits="admin_upcoming" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
    function ValidateFileUpload() {
        var fu = document.getElementById('<%=fu1.ClientID %>');
        var fileName = fu.value;
        var ext = fileName.substring(fileName.lastIndexOf('.') + 1).toLowerCase();
        if (ext == "jpg" || ext == "png") {
            return true;
        } else {
            alert("Please select a JPG or PNG file.");
            return false;
        }
    }
    </script>
    <section id="main-content" style="margin-left: 180px;">
      <section class="wrapper"> 
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> UPCOMING CARS</h3>
            </div>
            </div>

              <div class="form-group">
       <label class="control-label col-lg-2" for="inputSuccess">Company name</label>
             <div class="col-lg-10">
                <div class="col-lg-3">
                                  <asp:TextBox ID="txtcomp" runat="server" class="form-control"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Enter compny name" ForeColor="Red" ControlToValidate="txtmodel"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmodel" ErrorMessage="compny name must contain only letters and capital letters" ForeColor="Red" ValidationExpression="^[A-Za-z\s]+$"></asp:RegularExpressionValidator>                                        

                             </div>
                    </div>
              </div>

 <br/><br/>
                  <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Model name</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                     <asp:TextBox ID="txtmodel" runat="server" class="form-control"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Enter model name" ForeColor="Red" ControlToValidate="txtmodel"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmodel" ErrorMessage="Model name must contain only letters and capital letters" ForeColor="Red" ValidationExpression="^[A-Za-z\s]+$"></asp:RegularExpressionValidator>                                        

                                </div>
                       </div>
                 </div>
                 <br /> <br /> 

               

                   <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Expected price</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                     <asp:TextBox ID="txtprice" runat="server" class="form-control"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Enter price" ForeColor="Red" ControlToValidate="txtprice"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtprice" ErrorMessage="Price must be between 5000 and 100000" ForeColor="Red" Type="Integer" MinimumValue="5000" MaximumValue="100000"></asp:RangeValidator>                                        

                                </div>
                       </div>
                 </div>
                 <br /> <br /> 

                   <div class="form-group">
                       <label class="control-label col-lg-2" for="inputSuccess">Expected launches Date</label>
                             <div class="col-lg-10">
                                <div class="col-lg-3">
                                     <asp:TextBox ID="txtdate" runat="server" class="form-control"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="Enter date" ForeColor="Red" ControlToValidate="txtdate"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtdate" ErrorMessage="Invalid date format. Use MM/DD/YYYY format" ForeColor="Red" ValidationExpression="^(0[1-9]|1[0-2])/(0[1-9]|[12][0-9]|3[01])/\d{4}$"></asp:RegularExpressionValidator>                                         
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
                           
                 <br /> <br />  <br />
                 <div class="form-group">
                    <label for="exampleInputFile" class="control-label col-lg-2">Upload Photo</label>
                      <div class="col-lg-10">
                          <div class="col-lg-3">
                            
                                     <asp:FileUpload ID="fu1" runat="server" ForeColor="Red"  >
                                     </asp:FileUpload>
                                 
                          </div>
                      </div>
                   <%-- <input id="exampleInputFile" type="file">--%>
                   <%-- <p class="help-block">Example block-level help text here.</p>--%>
                    </div>
                                   
                             <br /> <br /> <br /> <br />

                              <div class="panel-body">
                            <div class="col-lg-10">
                              <%-- <button class="btn btn-primary" type="submit">Submit</button>--%>
                                  <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                                    class="btn btn-primary" onclick="btnsubmit_Click" BackColor="#333333"  OnClientClick="return ValidateFileUpload();"></asp:Button>
                            </div>
              </div> 
          <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" EmptyDataText="There are no data records to display." DataSourceID="SqlDataSource1"  BackColor="White" Width="90%"  
                    BorderStyle="None"  BorderWidth="4px" CellPadding="4">
                    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
<asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id"></asp:BoundField>
<asp:BoundField DataField="comp" HeaderText="Company name" SortExpression="comp"></asp:BoundField>
<asp:BoundField DataField="model" HeaderText="Model name" SortExpression="model"></asp:BoundField>
<asp:BoundField DataField="expected_price" HeaderText="Price" SortExpression="price"></asp:BoundField>
<asp:BoundField DataField="expected_date" HeaderText="Date" SortExpression="date"></asp:BoundField>
<asp:BoundField DataField="photo" HeaderText="Photo" SortExpression="photo"></asp:BoundField>
<asp:BoundField DataField="status" HeaderText="Status" SortExpression="status"></asp:BoundField>
</Columns>
<FooterStyle BackColor="White" Font-Names="Arial" ForeColor="#333333" />
               <HeaderStyle BackColor="#343d3d" Font-Bold="True" Font-Names="Arial" ForeColor="White" />
               <PagerStyle BackColor="#343d3d" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="White" ForeColor="#333333" Font-Names="Arial" Font-Bold="true" BorderColor="#343d3d" />
               <SelectedRowStyle BackColor="#339966" Font-Bold="True" Font-Names="Arial" ForeColor="White"    BorderColor="#343d3d" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#487575" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#275353" />

</asp:GridView>
 <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
     DeleteCommand="DELETE FROM [tbl_upcoming] WHERE [id] = @id" 
     InsertCommand="INSERT INTO [tbl_upcoming] ([comp], [model], [expected_price], [expected_date], [photo], [status]) VALUES (@comp, @model, @expected_price, @expected_date, @photo, @status)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
     SelectCommand="SELECT [id], [comp], [model], [expected_price], [expected_date], [photo], [status] FROM [tbl_upcoming]" UpdateCommand="UPDATE [tbl_upcoming] SET [comp] = @comp, [model] = @model, [expected_price] = @expected_price, [expected_date] = @expected_date, [photo] = @photo , [status] = @status WHERE [id] = @id" ID="SqlDataSource1"><DeleteParameters>
<asp:Parameter Name="id" Type="Int32"></asp:Parameter>
</DeleteParameters>
<InsertParameters>
<asp:Parameter Name="comp" Type="String"></asp:Parameter>
<asp:Parameter Name="model" Type="String"></asp:Parameter>
<asp:Parameter Name="expected_price" Type="Int32"></asp:Parameter>
<asp:Parameter Name="expected_date" Type="String"></asp:Parameter>
<asp:Parameter Name="photo" Type="String"></asp:Parameter>
<asp:Parameter Name="status" Type="Int32"></asp:Parameter>
</InsertParameters>
<UpdateParameters>
<asp:Parameter Name="comp" Type="String"></asp:Parameter>
<asp:Parameter Name="model" Type="String"></asp:Parameter>
<asp:Parameter Name="expected_price" Type="Int32"></asp:Parameter>
<asp:Parameter Name="expected_date" Type="String"></asp:Parameter>
<asp:Parameter Name="photo" Type="String"></asp:Parameter>
<asp:Parameter Name="status" Type="Int32"></asp:Parameter>
<asp:Parameter Name="id" Type="Int32"></asp:Parameter>
</UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

