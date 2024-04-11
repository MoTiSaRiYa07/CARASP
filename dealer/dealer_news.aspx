<%@ Page Title="" Language="C#" MasterPageFile="~/dealer/dealer.master" AutoEventWireup="true" CodeFile="dealer_news.aspx.cs" Inherits="dealer_dealer_news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Content -->
<!-- header section -->
<section class="inner-w3ls">
    <div class="container">
		<h3 class="text-center" data-aos="zoom-in">Our News</h3>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb" data-aos="zoom-in">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">News</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
	</div>
</section>	
<!-- header section -->
<section class="news-w3layouts">   
    <div class="container">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" >
    <ItemTemplate>

        <!-- Blog Post Row -->
        <div class="news-w3ls">
            <div class="col-md-1 text-center" data-aos="zoom-in">
                <p class="news-agileits1"><i class="fa fa-motorcycle"></i></p>
                <p class="news-agileits2"><a href="blogspot.aspx?nid=<%#Eval("nid") %>"><asp:Label ID="lbldate" runat="server" Text='<%#Eval("date") %>'></asp:Label></a></p>
            </div>
            <div class="col-md-5" data-aos="flip-left">
              <%--<a href="blogpost.html">
                    <div class="hover01 column">
						<div>
							<figure><img class="img-responsive img-hover" alt="w3layouts" src="images/news1.jpg"></figure>
						</div>
					</div>	
                </a>
 --%>           
     <a href="blogspot.aspx">
                    <div class="hover01 column">
						<div>
                        <figure>
                         <a href="blogspot.aspx?nid=<%#Eval("nid") %>">
							<asp:Image ID="img1" runat="server" Height="300" Width="600"  class="img-responsive img-hover" ImageUrl='<%# "~/admin/news/" + Eval("photo") %>'></asp:Image>
                   </a>
                            </figure>
						</div>
					</div>	
                </a>
            </div>
            <div class="col-md-6" data-aos="flip-right">
                <h3>
                    <a href="blogspot.aspx?nid=<%#Eval("nid") %>"><asp:Label ID="lblname" runat="server" Text='<%#Eval("news") %>'></asp:Label></a>
                </h3>
                <p class="news-agileits3"> <a href="blogspot.aspx?nid=<%#Eval("nid") %>"><asp:Label ID="lbldetail" runat="server" Text='<%#Eval("detail") %>'></asp:Label></a></p>
               <%-- <a class="btn btn-primary" href="blogspot.aspx">--%> 
               <a href="blogspot.aspx?nid=<%#Eval("nid") %>"><asp:Button ID="btnread" runat="server" Text="Read More" class="btn btn-primary"></asp:Button> </a><i class="fa fa-angle-right"></i>
            </div>
			<div class="clearfix"></div>
        </div>
          </ItemTemplate>
    </asp:DataList>
      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [tbl_news]"></asp:SqlDataSource>
      
        <!-- Pager -->
        <div class="row">
            <ul class="pager">
                <li class="previous"><a href="#">&larr; Older</a>
                </li>
                <li class="next"><a href="#">Newer &rarr;</a>
                </li>
            </ul>
        </div>
        <!-- /.row -->

        <hr>
	</div>	

</asp:Content>

