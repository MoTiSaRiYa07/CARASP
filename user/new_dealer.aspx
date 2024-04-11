<%@ Page Title="" Language="C#" MasterPageFile="~/user/user1.master" AutoEventWireup="true" CodeFile="new_dealer.aspx.cs" Inherits="user_new_dealer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" runat="server">
<div class="service-breadcrumb">
				<div class="container">
					<div class="wthree_service_breadcrumb_left w3">
						<ul>
							<li><a href="home.aspx">Home</a> <i>|</i></li>
							<li>Locate Dealer</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>Locate Dealer</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
<div class="loacte_dealer w3l">
			<div class="container">
             



             <div class="dealers-accordion w3l">
					  <h3 class="tittle">DEALERS</h3>
					     <!--/dealers-ac -->
					   <div class="dealers-ac">
					   <section class="ac-container">
                       <asp:ListView ID="ListView2" runat="server">
                        
                       <ItemTemplate>
							<div>
								<input id="ac-1" name="accordion-1" type="radio" checked="">
                                <asp:Label ID="lbldealer" runat="server" Text='<%#Eval("dealername") %>' style="    padding: 9px 20px;
    position: relative;
    z-index: 20;
    display: block;
    height: 53px;
    color: #fff;
    cursor: pointer;
    line-height: 33px;
    font-size: 21px;
    background: #333 url(images/arrow_down.png) no-repeat 1106px 19px;
    border: 1px ridge rgb(66, 66, 66);
    font-family: 'Ubuntu', sans-serif;
    font-weight: 400;"></asp:Label>
								<%--<label for="ac-1">United Kingdom</label>--%>
								<article style="    height: 150px; padding: 1em 1em;">
                                <asp:Label ID="txtfname" runat="server" Text='<%#Eval("fname") %>' Font-Size="XX-Large"></asp:Label>&nbsp;
                                 <asp:Label ID="lbllname" runat="server" Text='<%#Eval("lname") %>' Font-Size="XX-Large"></asp:Label>
                                <br />
                                <asp:Label ID="lbladdress" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                                <br />
                                 <asp:Label ID="lblpno" runat="server" Text='<%#Eval("phoeno") %>'></asp:Label>
									<br />

								</article>
							</div>
							
							</ItemTemplate>
                       </asp:ListView>
						</section>
					</div>		
				</div>


                <br />
                <br />
                <br />
<div class="select-box">
				   <div class="select-city-for-local-ads ads-list">
				
					<label>Select your car</label>
                      <asp:DropDownList ID="ddlcomp" runat="server" DataSourceID="SqlDataSource1" DataTextField="compname" 
                                DataValueField="compid" AutoPostBack="True" 
                           onselectedindexchanged="ddlcomp_SelectedIndexChanged" >
    </asp:DropDownList>
								<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [tbl_comp] WHERE ([status] = @status)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
                                    </SelectParameters>
                            </asp:SqlDataSource>
						<%--<select>
								<option value="null">Select your city</option>
														<option value="city">Amsterdam</option>
														<option value="city">Bahrain</option>
														<option value="city">Cannes</option>
														<option value="city">Dublin</option>
														<option value="city">Edinburgh</option>
														<option value="city">Florence</option>
														<option value="city">Georgia</option>
														<option value="city">Hungary</option>
														<option value="city">Hong Kong</option>
														<option value="city">Johannesburg</option>
														<option value="city">Kiev</option>
														<option value="city">London</option>
													    <option value="city">Others...</option>
			            </select>--%>
						
				</div>
				<div class="browse-category ads-list w3-agile">
					<label>Select your city</label>
                    <asp:DropDownList ID="ddlcity" runat="server">
                    </asp:DropDownList>
					<%--<form action="#" method="post">
									<select id="country16" name="">
										<option value="make">-- Select a Make --</option>
										<option value="car" selected="">Select Car</option>
										<option value="abt">ABT</option>
										<option value="ac">AC</option>
										<option value="amc">AMC</option>
										<option value="amg">AMG</option>
										<option value="abarth">Abarth</option>
										<option value="acura">Acura</option>
										<option value="alfa romeo">Alfa Romeo</option>
										<option value="arial">Ariel</option>
										<option value="armstrong siddeley">Armstrong Siddeley</option>
										<option value="ascari">Ascari</option>
										<option value="aston martin">Aston Martin</option>
										<option value="audi">Audi</option>
										<option value="austin">Austin</option>
										<option value="bac">BAC</option>
										<option value="bmw">BMW</option>
										<option value="byd">BYD</option>
										<option value="bentley">Bentley</option>
										<option value="bertone">Bertone</option>
										<option value="brilliance">Brilliance</option>
										<option value="bristol">Bristol</option>
										<option value="bufori">Bufori</option>
										<option value="bugatti">Bugatti</option>
										<option value="buick">Buick</option>
										<option value="caddilac">Caddilac</option>
										<option value="caparo">Caparo</option>
										<option value="carbon motors">Carbon Motors</option>
										<option value="caterham">Caterham</option>
										<option value="cheri">Cheri</option>
										<option value="chevrolet">Chevrolet</option>
										<option value="chrysler">Chrysler</option>
										<option value="citroen">Citroën</option>
										<option value="continental">Continental</option>
										<option value="dacia">Dacia</option>
										<option value="daewoo">Daewoo</option>
										<option value="daihatsu">Daihatsu</option>
										<option value="daimler">Daimler</option>
										<option value="datsun">Datsun</option>
										<option value="de lorean">De Lorean</option>
										<option value="de tomaso">De Tomaso</option>
										<option value="dodge">Dodge</option>
										<option value="eagle">Eagle</option>
										<option value="ferrari">Ferrari</option>
										<option value="fiat">Fiat</option>
										<option value="">Fisker</option>
										<option value="force">Force</option>
										<option value="ford">Ford</option>
										<option value="gmc">GMC</option>
										<option value="">GTA Motors</option>
										<option value="geely">Geely</option>
										<option value="general motors">General Motors</option>
										<option value="ghia">Ghia</option>
										<option value="ginetta">Ginetta</option>
										<option value="gumpert">Gumpert</option>
										<option value="hsv">HSV</option>
										<option value="healey">Healey</option>
										<option value="hennessey motors">Hennessey Motors</option>
										<option value="holden">Holden</option>
										<option value="honda">Honda</option>
										<option value="hummer">Hummer</option>
										<option value="hyundai">Hyundai</option>
										<option value="infinity">Infinty</option>
										<option value="isuzu">Isuzu</option>
										<option value="italdesign">Italdesign</option>
										<option value="jaguar">Jaguar</option>
										<option value="jeep">Jeep</option>
										<option value="jensen motors">Jensen Motors</option>
										<option value="kia motors">Kia Motors</option>
										<option value="koenig">Koeing</option>
										<option value="koenigsegg">Koenigsegg</option>
										<option value="lada">Lada</option>
										<option value="lamborghini">Lamborghini</option>
										<option value="lancia">Lancia</option>
										<option value="land rover">Land Rover</option>
										<option value="lexus">Lexus</option>
										<option value="lincoln">Lincoln</option>
										<option value="lotus">Lotus</option>
										<option value="marussia">Marussia</option>
										<option value="mclaren">McLaren</option>
										<option value="mgb">MG Motor</option>
										<option value="mini">MINI</option>
										<option value="mahindra">Mahindra</option>
										<option value="maruti suzuki">Maruti Suzuki</option>
										<option value="maserati">Maserati</option>
										<option value="maybach">Maybach</option>
										<option value="mazda">Mazda</option>
										<option value="mercedes-benz">Mercedes-Benz</option>
										<option value="mercury">Mercury</option>
										<option value="mitsubishi">Mitsubishi</option>
										<option value="morgan">Morgan</option>
										<option value="mosler">Mosler</option>
										<option value="nsu">NSU</option>
										<option value="noble">Noble</option>
										<option value="nissan">Nissan</option>
										<option value="oldsmobile">Oldsmobile</option>
										<option value="opel">Opel</option>
										<option value="packard">Packard</option>
										<option value="pagani">Pagani</option>
										<option value="panoz">Panoz</option>
										<option value="peugeot">Peugeot</option>
										<option value="plymouth">Plymouth</option>
										<option value="pontiac">Pontiac</option>
										<option value="porsche">Porsche</option>
										<option value="proton">Proton</option>
										<option value="ram">RAM</option>
										<option value="ruf automobile">RUF Automobile</option>
										<option value="radical">Radical</option>
										<option value="reliant">Reliant</option>
										<option value="renault">Renault</option>
										<option value="rimac">Rimac</option>
										<option value="rinspeed">Rinspeed</option>
										<option value="rolls royce">Rolls Royce</option>
										<option value="rover">Rover</option>
										<option value="srt">SRT</option>
										<option value="ssc">SSC</option>
										<option value="saab">SAAB</option>
										<option value="saleen">Saleen</option>
										<option value="saturn">Saturn</option>
										<option value="scion">Scion</option>
										<option value="seat">SEAT</option>
										<option value="shelby">Shelby</option>
										<option value="skoda">Škoda</option>
										<option value="smart">Smart</option>
										<option value="spyker">Spyker</option>
										<option value="ssangyong">Ssangyong</option>
										<option value="studebaker">Studebaker</option>
										<option value="subaru">Subaru</option>
										<option value="sunbeam">Sunbeam</option>
										<option value="suzuki">Suzuki</option>
										<option value="tata motors">TATA Motors</option>
										<option value="tvr">TVR</option>
										<option value="tesla">Tesla</option>
										<option value="toyota">Toyota</option>
										<option value="triumph">Triumph</option>
										<option value="vauxhall">Vauxhall</option>
										<option value="Vector">Vector</option>
										<option value="venturi">Venturi</option>
										<option value="volkswagen">Volkswagen</option>
										<option value="volvo">Volvo</option>
										<option value="w motors">W Motors</option>
										<option value="webasto">Webasto</option>
										<option value="zagato">Zagato</option>
										<option value="zenos">Zenos</option>
										<option value="zenvo">Zenvo</option>
									</select>
						  
								
							</form>--%>
				</div>
				<div class="search-product ads-list">
					
					<div class="search find">
						<form action="#" method="post">		
                        <asp:Button ID="btnfind" runat="server" Text="Find Delaers" 
                            onclick="btnfind_Click" />	
						 <%-- <input type="submit" value="Find Delaers">--%>
						</form>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

                




            </div>
            </div>




            </form>
            
</asp:Content>

