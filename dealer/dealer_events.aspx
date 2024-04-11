<%@ Page Title="" Language="C#" MasterPageFile="~/dealer/dealer.master" AutoEventWireup="true" CodeFile="dealer_events.aspx.cs" Inherits="dealer_dealer_events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section class="inner-w3ls">
    <div class="container">
		<h3 class="text-center aos-init aos-animate" data-aos="zoom-in">Events</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb aos-init aos-animate" data-aos="zoom-in">
                    <li><a href="dealer_home.aspx">Home</a>
                    </li>
                    <li class="active">Events</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
	</div>
</section>



<div class="bs-docs-example">
					     <asp:DataList ID="DataList1" runat="server" class="table table-hover">
 <HeaderTemplate>
 <table class="table table-hover">
                    <thead>
							<tr>
							  <th>Date</th>
							  <th>Event</th>
							  <th>Address</th>
                              <th>Website</th>
							</tr>
						</thead>
                    
 
 
 </HeaderTemplate>
            <ItemTemplate>
                  <tbody>
                    <tr>
                        <td>
                            <asp:Label ID="lbledate"  runat="server" text='<%#Eval("date") %>' />
                        </td>     
                        <td><asp:Label ID="lName" runat="server" Text='<%#Eval("ename") %>'></asp:Label></td>
                        <td><asp:Label ID="lbleadd" runat="server" Text='<%#Eval("eadd") %>'></asp:Label></td>
                        <td><asp:Label ID="lbleweb" runat="server" Text='<%#Eval("website") %>'></asp:Label></td>
                    </tr>
                    </tbody>
                
            </ItemTemplate>
        </asp:DataList>
        </table>
						
					
				</div>
    
</asp:Content>

