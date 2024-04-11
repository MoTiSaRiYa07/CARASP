<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="dealer_msg.aspx.cs" Inherits="admin_user_msg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<section id="main-content" >
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i>Dealer Messages</h3>
            </div>
            </div>
 
    <asp:GridView ID="GridView1" runat="server" BackColor="White" Width="90%"  
                    BorderStyle="None"  BorderWidth="4px" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="msgid"
        DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="msgid" HeaderText="Msg ID" ReadOnly="True" SortExpression="msgid" />
            <asp:BoundField DataField="fullname" HeaderText="Dealer Name" SortExpression="fullname" />
            <asp:BoundField DataField="pno" HeaderText="Phone No" SortExpression="pno" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="msg" HeaderText="Messege" SortExpression="msg" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        DeleteCommand="DELETE FROM [tbl_msg] WHERE [msgid] = @msgid" 
        InsertCommand="INSERT INTO [tbl_msg] ([fullname], [pno], [email], [msg]) VALUES (@fullname, @pno, @email, @msg)" SelectCommand="SELECT [msgid], [fullname], [pno], [email], [msg] FROM [tbl_msg]"
        
        UpdateCommand="UPDATE [tbl_msg] SET [fullname] = @fullname, [pno] = @pno, [email] = @email, [msg] = @msg WHERE [msgid] = @msgid">
        <DeleteParameters>
            <asp:Parameter Name="msgid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="fullname" Type="String" />
            <asp:Parameter Name="pno" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="msg" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="fullname" Type="String" />
            <asp:Parameter Name="pno" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="msg" Type="String" />
            <asp:Parameter Name="msgid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    </section>
    </section>



</asp:Content>

