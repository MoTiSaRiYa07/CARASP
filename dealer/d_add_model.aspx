<%@ Page Title="" Language="C#" MasterPageFile="~/dealer/dealer.master" AutoEventWireup="true" CodeFile="d_add_model.aspx.cs" Inherits="dealer_d_add_model" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type="text/javascript">
    function submitForm() {
        var city = document.getElementById('<%= ddlcomp.ClientID %>').value;
        var modelCheckboxes = document.querySelectorAll('[id*="cklmodel"] input[type="checkbox"]');
        var modelChecked = false;

        // Check if at least one checkbox in the checkbox list is checked
        for (var i = 0; i < modelCheckboxes.length; i++) {
            if (modelCheckboxes[i].checked) {
                modelChecked = true;
                break;
            }
        }

        if (city === '') {
            alert('Please select a company from the dropdown.');
            return false;
        } else if (!modelChecked) {
            alert('Please select at least one model.');
            return false;
        }

        return true;
    </script>


<section class="inner-w3ls">
    <div class="container">
		<h3 class="text-center aos-init aos-animate" data-aos="zoom-in">Add Model</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb aos-init aos-animate" data-aos="zoom-in">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Model</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
	</div>
    </section>



    <div class="container">
<div class="row">
<div class"col-lg-12">


    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                           
    <ContentTemplate>   
    
    <div class="input-group">
					<%--<span class="input-group-addon" id="basic-addon1">@</span>--%>
					<%--<input class="form-control" aria-describedby="basic-addon1" type="text" placeholder="Username">--%>
                               <asp:DropDownList ID="ddlcomp" runat="server" class="form-control" 
                                   aria-describedby="basic-addon1" DataSourceID="SqlDataSource1" 
                        DataTextField="compname" DataValueField="compid" AutoPostBack="True">
                               </asp:DropDownList>
			            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [tbl_comp] WHERE ([status] = @status)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                            </SelectParameters>
                    </asp:SqlDataSource>
			            </div>  
   
   <br></br>
   
   
    <div class="type-info">
    <h1> Models</h1></div>
         
<br></br>


        <div class="input-group">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [tbl_model] WHERE (([compid] = @compid) AND ([status] = @status))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlcomp" Name="compid" 
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
        <asp:CheckBoxList ID="cklmodel" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="modelname" 
            DataValueField="modelid">
        </asp:CheckBoxList>
        
   </ContentTemplate>
    </asp:UpdatePanel>                      

                     </br>
                     </br>
                     <div class="col-md-12">
                    <%-- <button class="btn btn-primary aos-init aos-animate" type="submit" data-aos="flip-up">Send Message</button>--%>
    <asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-primary aos-init aos-animate" 
                               data-aos="flip-up" onclick="btnsubmit_Click" OnClientClick="return submitForm();"/>
                               <br>
                           </div>  
                           
</div>
</div>
</div>



</asp:Content>

