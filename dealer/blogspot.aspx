<%@ Page Title="" Language="C#" MasterPageFile="~/dealer/dealer.master" AutoEventWireup="true" CodeFile="blogspot.aspx.cs" Inherits="dealer_blogspot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<!-- Page Content -->
<!-- header section -->
<section class="inner-w3ls">
    <div class="container">
		<h3 class="text-center" data-aos="zoom-in">Blogpost</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb" data-aos="zoom-in">
                    <li><a href="">Home</a>
                    </li>
                    <li class="active">Blogpost</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
	</div>
</section>	
<!-- /header section -->
<section class="blogpost-w3layouts">
	<div class="container">
    <asp:Label ID="lbl" runat="server" Text="Label" Visible="false"></asp:Label>
		<! -- SINGLE POST -->
		<div class="col-lg-8" data-aos="flip-left">
			<! -- Blog Post 1 -->
            <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
           
			<p class="blogpost-p1">
				<div class="hover01 column">
					<div>
						<figure>
                     <asp:Image ID="img1" runat="server" Height="300" Width="600"  class="img-responsive img-hover" ImageUrl='<%# "~/admin/news/" + Eval("photo") %>'></asp:Image>
                        <%--<img class="img-responsive" src="images/blogpost.jpg" data-aos="zoom-in">--%>
                        </figure>
					</div>
				</div>	
			</p>

			<a href="blogpost.html" class="blogpost-w3ls" data-aos="flip-up"><h3><asp:Label ID="lblnews" runat="server" Text='<%#Eval("news") %>'></asp:Label></h3></a>
			<p class="blogpost-p2" data-aos="flip-up">Posted:<asp:Label ID="lbldate" runat="server" Text='<%#Eval("date") %>'></asp:Label></p>
			<p class="blogpost-p3" data-aos="flip-up"><asp:Label ID="lbldetail" runat="server" Text='<%#Eval("detail") %>'></asp:Label></p>
			<div class="hline"></div>
		 	
             </ItemTemplate>
            </asp:DataList>





			<!-- Blog Comments -->
			<div class="hline"></div>
			<!-- Comments Form -->
			<div class="well">
                <h4 data-aos="flip-up">Leave a Comment:</h4>
                <form action="#" method="post" role="form">
               	<div class="form-group aos-init" data-aos="flip-up">
						<%--<textarea class="form-control" rows="3"></textarea>--%>
                        <asp:TextBox ID="txtcomment" runat="server" class="form-control" 
                            TextMode="MultiLine"></asp:TextBox>
                    </div>
                   <%-- <button type="submit" class="btn btn-primary" data-aos="flip-up">Submit</button>--%>
                   <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                    class="btn btn-primary" data-aos="flip-up" onclick="btnsubmit_Click1"></asp:Button>
                </form>
            </div>
			<div class="hline"></div>
			<!-- Posted Comments -->
			<!-- Comment -->





            <asp:DataList ID="DataList1" runat="server" 
        DataSourceID="SqlDataSource1" >
            <ItemTemplate>
            <div class="media">
                <a class="pull-left" href="#" data-aos="flip-up">
					<div class="hover01 column">
						<div>
							<figure><img class="media-object" src="images/blogpost-pic1.jpg" alt="w3layouts"></figure>
						</div>
					</div>	
                </a>
				<div class="media-body" data-aos="flip-up">
					<h4 class="media-heading"><asp:Label ID="lbldname" runat="server" Text='<%#Eval("dealerid") %>'></asp:Label>
						<small><asp:Label ID="lbldate" runat="server" Text='<%#Eval("date") %>'></asp:Label></small>
                    </h4>
                    <p><asp:Label ID="lblcomm" runat="server" Text='<%#Eval("comment") %>'></asp:Label></p>
                </div>
            </div>


            </ItemTemplate>
</asp:DataList>
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [tbl_dealer_comment] "
               ></asp:SqlDataSource>


	</div>
</div>
</section>
 
</asp:Content>

