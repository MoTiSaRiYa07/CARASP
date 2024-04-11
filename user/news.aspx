<%@ Page Title="" Language="C#" MasterPageFile="~/user/user1.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="user_news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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

<form runat="server">
<div class="tips w3l">
				<div class="container">
				 <div class="col-md-9 tips-info">
                
    <asp:DataList ID="DataList1" runat="server" >
    <ItemTemplate>
    
					 <div class="news-grid">
					    <div class="news-img"> 
						  <a href="news_single.aspx?nid=<%#Eval("nid") %>">
                          <asp:Image ID="img" runat="server"  ImageUrl='<%# "~/admin/news/" + Eval("photo") %>' style="  display: block;  max-width: 100%;height: auto;"/>
                          <%--<img class="img-responsive" alt=" " src="images/f1.jpg">--%></a>
						 <%-- <span class="price1">NEW</span>--%>
						</div>
					    <div class="news-text">
						   <h3><a href="news_single.aspx?nid=<%#Eval("nid") %>">
                              <asp:Label ID="lblnews" runat="server" Text='<%#Eval("news") %>'></asp:Label><br /><asp:Label ID="lbldate" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                           <%--Mercedes-Benz C250 CDI--%></a></h3>
							
							<p><a href="news_single.aspx?nid=<%#Eval("nid") %>">
                                  <asp:Label ID="lbldescription" runat="server" Text='<%#Eval("detail") %>'></asp:Label>
                            <%--Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.--%></p>
							</a>
                              <a class="read hvr-shutter-in-horizontal" href="news_single.aspx?nid=<%#Eval("nid")%>">
                                  <asp:Label ID="lblread" runat="server" Text="Read More"></asp:Label></a>
						</div>
		
                         
						<div class="clearfix"></div>
					 </div>
                 </ItemTemplate>   
    </asp:DataList>
    
                 

					 <div class="videos">
						<h3><a href="">TOP 5 UPCOMING CARS IN INDIA IN 2016</a></h3>
                        
        <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
                    <video width="500" height="240" controls>
                <source src= '../admin/video/<%# Eval("video")%>' type="video/Mp4">
                Your browser does not support the video
            </video>
            </ItemTemplate>
        </asp:DataList>
        
					</div>
				    
					 	 	
								<%--<div class="blog-pagenat">
													<ul>
														<li><a class="frist" href="#">Prev</a></li>
														<li><a href="#">1</a></li>
														<li><a href="#">2</a></li>
														<li><a href="#">3</a></li>
														<li><a href="#">4</a></li>
														<li><a href="#">5</a></li>
														<li><a class="last" href="#">Next</a></li>
														<div class="clearfix"> </div>
													</ul>
												</div>--%>
				</div>	
			   <div class="col-md-3 advice-right w3l">
					
					
                    <div class="blo-top1">
						<div class="tech-btm">
						<h4>Top stories of the week </h4>
                        <asp:DataList runat="server" ID="dlnews">
                        <ItemTemplate>
                        	<div class="blog-grids">
								<div class="blog-grid-left">
									<a href="news_single.aspx?nid=<%#Eval("nid") %>">
                        <asp:Image ID="img" runat="server" class="img-responsive" ImageUrl='<%# "~/admin/news/" + Eval("photo") %>'/>
                                    <%--<img class="img-responsive" alt="" src="images/f1.jpg">--%>
                                    </a>
								</div>
								<div class="blog-grid-right">
									
									<h5><a href="news_single.aspx?nid=<%#Eval("nid") %>">
                            <asp:Label ID="lblnews" runat="server" Text='<%#Eval("news") %>'></asp:Label><br /><asp:Label ID="lbldate" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                    <%--Pellentesque dui, non felis. Maecenas male--%>
                                    </a> </h5>
								</div>
								<div class="clearfix"> </div>
							</div>
                        </ItemTemplate>
                        </asp:DataList>
						
							
							</div>
						</div>


					
					
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
            </form>
</asp:Content>

