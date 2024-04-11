<%@ Page Title="" Language="C#" MasterPageFile="~/user/user1.master" AutoEventWireup="true" CodeFile="news_single.aspx.cs" Inherits="user_news_single" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--//breadcrumb-->
<div class="service-breadcrumb">
				<div class="container">
					<div class="wthree_service_breadcrumb_left w3-agile">
						<ul>
							<li><a href="home.aspx">Home</a> <i>|</i></li>
							<li>News</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>News</h3>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
  <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>

		<div class="single w3ls">
		<div class="container">
			<div class="col-md-8 single-left">
				
             <asp:Image ID="img" runat="server" />
				<div class="single-left2">
					
                 <asp:Label ID="lblname" runat="server" Text="Label" Font-Bold="True" 
                        Font-Size="X-Large"></asp:Label>

					
					
				</div>
				<div class="single-left3">
                <div class="single-left2-sub">
						<p>
                     <asp:Label ID="lbldescription" runat="server" Text="Label"></asp:Label>
                    </p>
					</div>
					
				</div>
				
				
			
			</div>
			<div class="col-md-4 single-right">

			    <div class="related-posts">
					<h3>Related Posts</h3>
					<div class="related-post">
						<div class="related-post-left">
							<a href="single.html"><img src="images/f1.jpg" alt=" " class="img-responsive"></a>
						</div>
						<div class="related-post-right">
							<h4><a href="single.html">Donec sollicitudin</a></h4>
							<p>Aliquam dapibus tincidunt metus. 
								<span>Praesent justo dolor, lobortis.</span>
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="related-post">
						<div class="related-post-left">
							<a href="single.html"><img src="images/f2.jpg" alt=" " class="img-responsive"></a>
						</div>
						<div class="related-post-right">
							<h4><a href="single.html">Donec sollicitudin</a></h4>
							<p>Aliquam dapibus tincidunt metus. 
								<span>Praesent justo dolor, lobortis.</span>
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="related-post">
						<div class="related-post-left">
							<a href="single.html"><img src="images/f3.jpg" alt=" " class="img-responsive"></a>
						</div>
						<div class="related-post-right">
							<h4><a href="single.html">Donec sollicitudin</a></h4>
							<p>Aliquam dapibus tincidunt metus. 
								<span>Praesent justo dolor, lobortis.</span>
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>


				<div class="blo-top1">
					<div class="agileits_twitter_posts tech-btm">
					<h4>Twitter Posts</h4>
					<ul>
						<li><i class="fa fa-twitter" aria-hidden="true"></i> 01 day ago<span>Non numquam <a href="#">http://sd.ds/13jklf#</a>
							eius modi tempora incidunt ut labore et
							<a href="#">http://sd.ds/1389kjklf#</a>quo nulla.</span></li>
						<li><i class="fa fa-twitter" aria-hidden="true"></i> 02 day ago<span>Con numquam <a href="#">http://fd.uf/56hfg#</a>
							eius modi tempora incidunt ut labore et
							<a href="#">http://fd.uf/56hfg#</a>quo nulla.</span></li>
						<li><i class="fa fa-twitter" aria-hidden="true"></i> 03 day ago<span>Qon numquam <a href="#">http://gf.ds/gre21#</a>
							eius modi tempora incidunt ut labore et
							<a href="#">http://gf.ds/gre21#</a>quo nulla.</span></li>
					</ul>
					</div>
				</div>
				
				
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</asp:Content>

