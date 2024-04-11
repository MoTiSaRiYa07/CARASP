<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="create_event.aspx.cs" Inherits="admin_create_event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
 <section id="main-content" >
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> Create Event</h3>
            </div>
            </div>
            
           

                    <div class="form-group">
                    
                  <label class="control-label col-sm-2" for="inputSuccess">Date:*</label>
                    <div class="col-lg-10">
                      <div class="row">
                      <div class="col-lg-3">

                      <asp:TextBox ID="txtedate" runat="server" class="form-control" placeholder="YYYY-MM-DD"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Enter date" ForeColor="Red" ControlToValidate="txtedate"></asp:RequiredFieldValidator>
                                         
                      </div>
                        </div>
                          </div>
</div>
                    
                    
                    <br /><br />

                        <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess"> Event Name*</label>
                    <div class="col-lg-10">
                      <div class="row">
                      <div class="col-lg-3">

                      <asp:TextBox ID="txtename" runat="server" class="form-control" placeholder="Event Name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Enter Event name" ForeColor="Red" ControlToValidate="txtename"></asp:RequiredFieldValidator>
                                         
                      </div>
                        </div>
                          </div>

                    </div>
                    
                      <br /><br />
                      <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess"> Event ADD:*</label>
                    <div class="col-lg-10">
                      <div class="row">
                      <div class="col-lg-3">

                      <asp:TextBox ID="txteadd" runat="server" class="form-control" placeholder="City\State"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Enter event Address" ForeColor="Red" ControlToValidate="txteadd"></asp:RequiredFieldValidator>
                                         
                      </div>
                        </div>
                          </div>

                    </div>
                      

                      <br /><br />
                        <div class="form-group">
                  <label class="control-label col-lg-2" for="inputSuccess"> Website</label>
                    <div class="col-lg-10">
                      <div class="row"> 
                      <div class="col-lg-3">
                        <asp:TextBox ID="txtewebsite" runat="server" class="form-control" placeholder="ex:-www.xyz.com"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="Enter Website" ForeColor="Red" ControlToValidate="txtewebsite"></asp:RequiredFieldValidator>
                                         
                      </div>
                        </div>
                          </div>

                    </div>
                    
                        <br /><br />
                                <div class="panel-body">
                            <div class="col-lg-10">
                              <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#333333" class="btn btn-primary" 
                                    onclick="btnsubmit_Click">
                                    </asp:Button>
                            </div>
              </div>

         <asp:ScriptManager ID="ScriptManager1" runat="server" ></asp:ScriptManager>   
 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" Width="90%"  
                    BorderStyle="None"  BorderWidth="4px" CellPadding="4" DataKeyNames="eid" EmptyDataText="There are no data records to display." DataSourceID="SqlDataSource1"><Columns>
<asp:BoundField DataField="eid" HeaderText="Event ID" ReadOnly="True" SortExpression="eid"></asp:BoundField>
<asp:BoundField DataField="date" HeaderText="Event Date" SortExpression="date"></asp:BoundField>
<asp:BoundField DataField="ename" HeaderText="Event Name" SortExpression="ename"></asp:BoundField>
<asp:BoundField DataField="eadd" HeaderText="Event Address" SortExpression="eadd"></asp:BoundField>
<asp:BoundField DataField="website" HeaderText="Website" SortExpression="website"></asp:BoundField>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
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
                        DeleteCommand="DELETE FROM [tbl_event] WHERE [eid] = @eid" 
                        InsertCommand="INSERT INTO [tbl_event] ([date], [ename], [eadd], [website]) VALUES (@date, @ename, @eadd, @website)" 
                        SelectCommand="SELECT [eid], [date], [ename], [eadd], [website] FROM [tbl_event]" 
                        UpdateCommand="UPDATE [tbl_event] SET [date] = @date, [ename] = @ename, [eadd] = @eadd, [website] = @website WHERE [eid] = @eid" 
                        ID="SqlDataSource1"><DeleteParameters>
<asp:Parameter Name="eid" Type="Int32"></asp:Parameter>
</DeleteParameters>
<InsertParameters>
<asp:Parameter DbType="Date" Name="date"></asp:Parameter>
<asp:Parameter Name="ename" Type="String"></asp:Parameter>
<asp:Parameter Name="eadd" Type="String"></asp:Parameter>
<asp:Parameter Name="website" Type="String"></asp:Parameter>
</InsertParameters>
<UpdateParameters>
<asp:Parameter DbType="Date" Name="date"></asp:Parameter>
<asp:Parameter Name="ename" Type="String"></asp:Parameter>
<asp:Parameter Name="eadd" Type="String"></asp:Parameter>
<asp:Parameter Name="website" Type="String"></asp:Parameter>
<asp:Parameter Name="eid" Type="Int32"></asp:Parameter>
</UpdateParameters>
</asp:SqlDataSource>

</ContentTemplate>
</asp:UpdatePanel>

            </section>
           </section> 
    
</asp:Content>
