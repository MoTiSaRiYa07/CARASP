<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="admin_news" %>

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
<section id="main-content" >
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i>News</h3>
            </div>
            </div>
            
           

                    <div class="form-group">
                    
                  <label class="control-label col-sm-2" for="inputSuccess">News :</label>
                    <div class="col-lg-10">
                      <div class="row">
                      <div class="col-lg-3">

                      <asp:TextBox ID="txtnews" runat="server" class="form-control" placeholder="Name"> </asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Enter News" ForeColor="Red" ControlToValidate="txtnews"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtnews" ErrorMessage=" news must contain only letters and capital letters" ForeColor="Red" ValidationExpression="^[A-Za-z\s]+$"></asp:RegularExpressionValidator>                                        

                      </div>
                        </div>
                          </div>
</div>
                    
                    
                    <br /><br />

                       
                      
                      <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess"> Desciption :*</label>
                    <div class="col-lg-10">
                      <div class="row">
                      <div class="col-lg-3">

                      <asp:TextBox ID="txtdetail" runat="server" class="form-control" placeholder="Desciption"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Enter Desciption" ForeColor="Red" ControlToValidate="txtdetail"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtdetail" ErrorMessage=" Desciption must contain only letters and capital letters" ForeColor="Red" ValidationExpression="^[A-Za-z\s]+$"></asp:RegularExpressionValidator>                                        

                      </div>
                        </div>
                          </div>

                    </div>
                      
                      <br /><br />

                        <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess"> date</label>
                    <div class="col-lg-10">
                      <div class="row"> 
                      <div class="col-lg-3">

                      <asp:TextBox ID="txtdate" runat="server" class="form-control" placeholder="Date"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="Enter date" ForeColor="Red" ControlToValidate="txtdate"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtdate" ErrorMessage="Invalid date format. Use MM/DD/YYYY format" ForeColor="Red" ValidationExpression="^(0[1-9]|1[0-2])/(0[1-9]|[12][0-9]|3[01])/\d{4}$"></asp:RegularExpressionValidator>                                         
     
                      </div>
                        </div>
                          </div>

                    </div>
                    
                    <br /><br />

                            <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess"> Photo</label>
                    <div class="col-lg-10">
                      <div class="row"> 
                      <div class="col-lg-3">

                   <asp:FileUpload ID="fu1" runat="server">
                                     </asp:FileUpload>
                      </div>
                        </div>
                          </div>

                    </div>
                    
                    <br /><br /> </br> <br />
                
                                <div class="panel-body">
                            <div class="col-lg-10">
                              <asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-primary" 
                                    onclick="btnsubmit_Click" OnClientClick="return ValidateFileUpload();">
                                    </asp:Button>
                            </div>
                                   
              </div>
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   BackColor="White" Width="90%"  
                    BorderStyle="None"  BorderWidth="4px" CellPadding="4"
                                        DataKeyNames="nid" DataSourceID="SqlDataSource1" 
                                        EmptyDataText="There are no data records to display.">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="nid" HeaderText="nid" ReadOnly="True" 
                                                SortExpression="nid" />
                                            <asp:BoundField DataField="news" HeaderText="news" SortExpression="news" />
                                            <asp:BoundField DataField="detail" HeaderText="detail" 
                                                SortExpression="detail" />
                                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                            <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        DeleteCommand="DELETE FROM [tbl_news] WHERE [nid] = @nid" 
                                        InsertCommand="INSERT INTO [tbl_news] ([news], [detail], [date], [photo]) VALUES (@news, @detail, @date, @photo)" 
                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                        SelectCommand="SELECT [nid], [news], [detail], [date], [photo] FROM [tbl_news]" 
                                        UpdateCommand="UPDATE [tbl_news] SET [news] = @news, [detail] = @detail, [date] = @date, [photo] = @photo WHERE [nid] = @nid">
                                        <DeleteParameters>
                                            <asp:Parameter Name="nid" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="news" Type="String" />
                                            <asp:Parameter Name="detail" Type="String" />
                                            <asp:Parameter Name="date" Type="String" />
                                            <asp:Parameter Name="photo" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="news" Type="String" />
                                            <asp:Parameter Name="detail" Type="String" />
                                            <asp:Parameter Name="date" Type="String" />
                                            <asp:Parameter Name="photo" Type="String" />
                                            <asp:Parameter Name="nid" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>

</asp:Content>

