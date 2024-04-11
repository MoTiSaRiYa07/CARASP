<%@ Page Title="" Language="C#" MasterPageFile="~/dealer/dealer.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="testdrive_bookings.aspx.cs" Inherits="dealer_testdrive_bookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="inner-w3ls">
    <div class="container">
		<h3 class="text-center aos-init aos-animate">Testdrive Bookings</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb aos-init aos-animate" data-aos="zoom-in">
                    <li><a href="dealer_home.aspx">Home</a>
                    </li>
                    <li  class="active">Bookings</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
	</div>
</section>


    <div class="container">
<div class="row">
<div class="col-lg-12">
  <div class="col-md-6">
						<h1 style="color: #000; font-family:Arial;   margin-bottom: 1em; font-weight: 300; font-size:30px">Bookings</h1>
                        
						
		
      <asp:Datalist ID="datalist1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" 
                            FooterStyle-BorderWidth="3px" OnSelectedIndexChanged="datalist1_SelectedIndexChanged" 
                           >
      				
   
    <ItemTemplate >
   
    <table  style= " border-collapse:collapse; border-right-style:solid; border-bottom-width:medium; border-bottom-color:"#333333"; "   >
                        
                          <thead align="center" style= "font-size:20px; color:#565656;" >
                        		<tr >
									  <td align="center"  style=" width:8em;  height:1em; max-height:1em;  padding-top:1em; padding-bottom:1em; padding-right:9em;  "   >
                                       <asp:Label ID="lbluname"  runat="server" Text='<%#Eval("  user_name") %>'>
                                       </asp:Label>&nbsp<asp:Label ID="lbllname" runat="server" Text='<%#Eval("last_name") %>'></asp:Label></td>
								</tr>
							</thead>
                            <tbody> 
                            
						
								<tr>
									<td align="center" style=" width:8em; height:1em; max-height:1em;  padding-top:.5em; font-size:20px; padding-right:9em; color:#565656; padding-bottom:.5em;" > <asp:Label ID="lblpno" runat="server" Text='<%#Eval("phoneno") %>'></asp:Label></td>
									
								</tr>
                                <tr>
				      <td align="center" style=" width:8em; height:1em; max-height:1em;  padding-top:.5em; font-size:20px; padding-right:9em; color:#565656; padding-bottom:.5em;" > <asp:Label ID="Label1" runat="server" Text='<%#Eval("email") %>'></asp:Label></td>
				
</tr>
								<tr>
									<td align="center" style="width:8em;  height:1em; max-height:1em; padding-top:.5em;  height:1em; max-height:1em; font-size:20px; padding-right:9em; color:#565656; padding-bottom:.5em;"> <asp:Label ID="lblcomp" runat="server" Text='<%#Eval("compname") %>'></asp:Label></code>&nbsp;<asp:Label ID="lblmodel" runat="server" Text='<%#Eval("modelname") %>'></asp:Label></td>
								</tr>
								<tr>
									<td  align="center" style="width:8em; height:1em; max-height:1em; padding-top:.5em; font-size:20px;padding-right:9em; color:#565656; padding-bottom:.5em;"> <asp:Label ID="lbldate" runat="server" Text='<%#Eval("date") %>'></asp:Label></td>
									
								</tr>
                              
                                <tr>
                                    <td align="center" style="width:8em; height:1em; max-height:1em; padding-top:.5em; padding-bottom:.5em; padding-right:9em;">
                                      								   
                                                                       
                                                                       
                                        <a href='confirm1.aspx?uname=<%#Eval("user_name")%>&email=<%#Eval("email")%>'  >

                                            <asp:Label ID="lblconfirm" runat="server" Text="Confirm" style=" background-color:#333333;" class="btn btn-primary aos-init aos-animate"></asp:Label> </a> </td>
                                                                                 
                                  </tr>  
                            
                            </tbody>
                            
</table>
          </ItemTemplate>
  </asp:Datalist>
        
      
      
</div>
</div>
</div>
</div>

</asp:Content>

