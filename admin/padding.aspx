<%@ Page Title=""  Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="padding.aspx.cs" Inherits="admin_padding" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> Dealer Status Pending</h3>
        <%--<ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="icon_document_alt"></i>Forms</li>
              <li><i class="fa fa-file-text-o"></i>Form elements</li>
            </ol>--%>
          </div>
        </div>
  
   
   
   
   
   <asp:GridView ID="GridView1" runat="server" Width="100%" CellPadding="4"  AutoGenerateColumns="False" DataKeyNames="dealerid" EmptyDataText="There are no data records to display." DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowUpdated="GridView1_RowUpdated" OnRowDataBound="GridView1_RowDataBound">
       <AlternatingRowStyle BackColor="White" />
       <Columns>
       <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
<asp:BoundField DataField="dealerid" HeaderText="User ID" ReadOnly="True" 
               SortExpression="dealerid"  ></asp:BoundField>
<asp:BoundField DataField="fname" HeaderText="UserName" SortExpression="fname"></asp:BoundField>
 <asp:BoundField DataField="lname" HeaderText="LASTENAME" SortExpression="lname"></asp:BoundField>
 <asp:BoundField DataField="dealername" HeaderText="Dealname" SortExpression="email"></asp:BoundField>
<asp:BoundField DataField="email" HeaderText="Email ID" SortExpression="email"></asp:BoundField>
<asp:BoundField DataField="phoeno" HeaderText="Phone No" SortExpression="phoneno"></asp:BoundField>
<asp:BoundField DataField="address" HeaderText="CITY" SortExpression="city"></asp:BoundField>
<%-- <asp:ImageField DataImageUrlField="image" HeaderText="Image" ControlStyle-Width="100px" ControlStyle-Height="100px" />--%>
            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
        <asp:Image ID="image" runat="server" Width="50px" Height="50px" />
            </ItemTemplate>
        </asp:TemplateField>

 <asp:BoundField DataField="status" HeaderText="STATUS" SortExpression="status"></asp:BoundField>

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
 <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
     DeleteCommand="DELETE FROM [tbl_dealer] WHERE [dealerid] = @dealerid" 
     InsertCommand="INSERT INTO [tbl_dealer] ([fname], [dealername], [email], [phoeno], [password] [lname] [address] [image] [status]) VALUES (@fname, @dealername, @emailid, @phoeno, @password, @lname, @address, @image, @status)" 
     SelectCommand="SELECT [dealerid], [fname], [dealername], [email], [phoeno], [password] , [lname], [address], [image], [status] FROM [tbl_dealer]"
     UpdateCommand="UPDATE [tbl_dealer] SET [status] = @status WHERE [dealerid] = @dealerid" ID="SqlDataSource1"><DeleteParameters>
<asp:Parameter Name="dealerid" Type="Int32"></asp:Parameter>
</DeleteParameters>
<InsertParameters>
<asp:Parameter Name="fname" Type="String"></asp:Parameter>
    <asp:Parameter Name="dealername" Type="String"></asp:Parameter>

<asp:Parameter Name="email" Type="String"></asp:Parameter>
<asp:Parameter Name="phoeno" Type="String"></asp:Parameter>
<asp:Parameter Name="password" Type="String"></asp:Parameter>
 <asp:Parameter Name="lname" Type="String"></asp:Parameter>
 <asp:Parameter Name="city" Type="String"></asp:Parameter>
<%--     <asp:Parameter Name="image" Type="String"></asp:Parameter>--%>
    
        <asp:Parameter Name="status" Type="String"></asp:Parameter>

</InsertParameters>
<UpdateParameters>
<%--<asp:Parameter Name="fname" Type="String"></asp:Parameter>
        <asp:Parameter Name="dealername" Type="String"></asp:Parameter>

<asp:Parameter Name="email" Type="String"></asp:Parameter>
<asp:Parameter Name="phoeno" Type="String"></asp:Parameter>
<asp:Parameter Name="password" Type="String"></asp:Parameter>
   <asp:Parameter Name="lname" Type="String"></asp:Parameter>
       <asp:Parameter Name="city" Type="String"></asp:Parameter>--%>
        <asp:Parameter Name="status" Type="String"></asp:Parameter>

<asp:Parameter Name="dealerid" Type="Int32"></asp:Parameter>
</UpdateParameters>
</asp:SqlDataSource>
 
<%--          <asp:Button ID="generatePdfBtn" runat="server" Text="GENRATE PDF FOR EXCEL" 
           style="color: red; font-size: 20px; width: 300px; height: 50px; text-align: center; display: block; margin: 0 auto;"   OnClick="Button1_Click" />
   
          <asp:Button ID="Button3" runat="server" Text="GENRATE PDF" 
          style="color: red; font-size: 20px; width: 300px; height: 50px; text-align: center; display: block; margin: 30; auto;"   OnClick="Button3_Click" />--%>
    </section>
                  <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>

     </section>

</asp:Content>

      