<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="user_detail.aspx.cs" Inherits="admin_user_detail"  EnableEventValidation="false"%>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> User Detil</h3>
        <%--<ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="icon_document_alt"></i>Forms</li>
              <li><i class="fa fa-file-text-o"></i>Form elements</li>
            </ol>--%>
          </div>
        </div>
  
   
   
   
   
   <asp:GridView ID="GridView1" runat="server" Width="90%" CellPadding="4"  AutoGenerateColumns="False" DataKeyNames="userid" EmptyDataText="There are no data records to display." DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
       <AlternatingRowStyle BackColor="White" />
       <Columns>
       <asp:CommandField ShowDeleteButton="True" />
<asp:BoundField DataField="userid" HeaderText="User ID" ReadOnly="True" 
               SortExpression="userid"  ></asp:BoundField>
<asp:BoundField DataField="name" HeaderText="UserName" SortExpression="name"></asp:BoundField>
 <asp:BoundField DataField="lname" HeaderText="LASTENAME" SortExpression="lname"></asp:BoundField>
<asp:BoundField DataField="email" HeaderText="Email ID" SortExpression="email"></asp:BoundField>
<asp:BoundField DataField="phoneno" HeaderText="Phone No" SortExpression="phoneno"></asp:BoundField>
<asp:BoundField DataField="city" HeaderText="CITY" SortExpression="city"></asp:BoundField>

</Columns>

       <EditRowStyle BackColor="#7C6F57" />

<FooterStyle BackColor="#1C5E55" Font-Names="Arial" ForeColor="White" Font-Bold="True" />
               <HeaderStyle BackColor="#1C5E55" Font-Bold="True" Font-Names="Arial" ForeColor="White" />
               <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#E3EAEB" Font-Names="Arial" BorderColor="#343d3d" />
               <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" Font-Names="Arial" ForeColor="#333333"    BorderColor="#343d3d" />
               <SortedAscendingCellStyle BackColor="#F8FAFA" />
               <SortedAscendingHeaderStyle BackColor="#246B61" />
               <SortedDescendingCellStyle BackColor="#D4DFE1" />
               <SortedDescendingHeaderStyle BackColor="#15524A" />

</asp:GridView>
 <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" DeleteCommand="DELETE FROM [tbl_user] WHERE [userid] = @userid" InsertCommand="INSERT INTO [tbl_user] ([name], [email], [phoneno], [password] [lname] [city]) VALUES (@username, @emailid, @phoneno, @password, @lname, @city)" SelectCommand="SELECT [userid], [name], [email], [phoneno], [password],[lname],[city] FROM [tbl_user]" UpdateCommand="UPDATE [tbl_user] SET [name] = @name, [email] = @email, [phoneno] = @phoneno, [password] = @password ,[lname] = @lname ,[city] = @city WHERE [userid] = @userid" ID="SqlDataSource1"><DeleteParameters>
<asp:Parameter Name="userid" Type="Int32"></asp:Parameter>
</DeleteParameters>
<InsertParameters>
<asp:Parameter Name="name" Type="String"></asp:Parameter>
<asp:Parameter Name="email" Type="String"></asp:Parameter>
<asp:Parameter Name="phoneno" Type="String"></asp:Parameter>
<asp:Parameter Name="password" Type="String"></asp:Parameter>
 <asp:Parameter Name="lname" Type="String"></asp:Parameter>
 <asp:Parameter Name="city" Type="String"></asp:Parameter>

</InsertParameters>
<UpdateParameters>
<asp:Parameter Name="name" Type="String"></asp:Parameter>
<asp:Parameter Name="email" Type="String"></asp:Parameter>
<asp:Parameter Name="phoneno" Type="String"></asp:Parameter>
<asp:Parameter Name="password" Type="String"></asp:Parameter>
   <asp:Parameter Name="lname" Type="String"></asp:Parameter>
       <asp:Parameter Name="city" Type="String"></asp:Parameter>

<asp:Parameter Name="userid" Type="Int32"></asp:Parameter>
</UpdateParameters>
</asp:SqlDataSource>
 
          <asp:Button ID="generatePdfBtn" runat="server" Text="GENRATE PDF FOR EXCEL" 
           style="color: red; font-size: 20px; width: 300px; height: 50px; text-align: center; display: block; margin: 0 auto;"   OnClick="Button1_Click" />
   
          <asp:Button ID="Button3" runat="server" Text="GENRATE PDF" 
          style="color: red; font-size: 20px; width: 300px; height: 50px; text-align: center; display: block; margin: 30; auto;"   OnClick="Button3_Click" />
 
    </section>
     </section>

</asp:Content>

      