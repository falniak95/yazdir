<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="apanel.aspx.cs" Inherits="yazdir.webSitesi.test.adminPanel.apanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>YAZZDIR | E-Ticaret / Admin Paneli</title>   
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/component.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/export.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/flipclock.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/circles.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>
<body>
    <form id="EsasForm" runat="server">
        <!-- banner -->
        <div class="wthree_agile_admin_info">
            <!-- /w3_agileits_top_nav-->
            <!-- /nav-->
            <div class="w3_agileits_top_nav">
                <ul id="gn-menu" class="gn-menu-main">
                    <!-- /nav_agile_w3l -->
                    <li class="gn-trigger">
                        <%--
                        SOLDAKİ MENÜ BUTONU
                        
                        
                        <a class="gn-icon gn-icon-menu"><i class="fa fa-bars" aria-hidden="true"></i><span>Menu</span></a>
					<nav class="gn-menu-wrapper">
						<div class="gn-scroller scrollbar1">
							<ul class="gn-menu agile_menu_drop">
								<li><a href="main-page.html"> <i class="fa fa-tachometer"></i> Dashboard</a></li>
								<li>
									<a href="#"><i class="fa fa-cogs" aria-hidden="true"></i> UI Components <i class="fa fa-angle-down" aria-hidden="true"></i></a> 
									<ul class="gn-submenu">
										<li class="mini_list_agile"><a href="buttons.html"><i class="fa fa-caret-right" aria-hidden="true"></i> Buttons</a></li>
										<li class="mini_list_w3"><a href="grids.html"> <i class="fa fa-caret-right" aria-hidden="true"></i> Grids</a></li>
									</ul>
								</li>
								<li>
									<a href="#"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Forms <i class="fa fa-angle-down" aria-hidden="true"></i></a> 
									<ul class="gn-submenu">
										<li class="mini_list_agile"><a href="input.html"><i class="fa fa-caret-right" aria-hidden="true"></i> Inputs</a></li>
										<li class="mini_list_w3"><a href="validation.html"><i class="fa fa-caret-right" aria-hidden="true"></i> Validation</a></li>
									</ul>
								</li>
								<li><a href="table.html"> <i class="fa fa-table" aria-hidden="true"></i> Tables</a></li>
								<li><a href="#"><i class="fa fa-list" aria-hidden="true"></i>Short Codes <i class="fa fa-angle-down" aria-hidden="true"> </i></a> 
								     	<ul class="gn-submenu">
										<li class="mini_list_agile"><a href="typo.html"><i class="fa fa-caret-right" aria-hidden="true"></i> Typography</a></li>
										<li class="mini_list_w3"><a href="icons.html"> <i class="fa fa-caret-right" aria-hidden="true"></i> Icons</a></li>
										
									</ul>
								</li>
								
								<li><a href="charts.html"> <i class="fa fa-line-chart" aria-hidden="true"></i> Charts</a></li>
								<li><a href="maps.html"><i class="fa fa-map-o" aria-hidden="true"></i> Maps</a></li>
								<li class="page">
									<a href="#"><i class="fa fa-files-o" aria-hidden="true"></i> Pages <i class="fa fa-angle-down" aria-hidden="true"></i></a>
										 <ul class="gn-submenu">
						
									  <li class="mini_list_agile"> <a href="signin.html"> <i class="fa fa-caret-right" aria-hidden="true"></i> Sign In</a></li>
									   <li class="mini_list_w3"><a href="signup.html"> <i class="fa fa-caret-right" aria-hidden="true"></i> Sign Up</a></li>
									   <li class="mini_list_agile error"><a href="404.html"> <i class="fa fa-caret-right" aria-hidden="true"></i> Error 404 </a></li>
	
										<li class="mini_list_w3_line"><a href="calendar.html"> <i class="fa fa-caret-right" aria-hidden="true"></i> Calendar</a></li>
									</ul>
								</li>
								<li>
									<a href="#"> <i class="fa fa-suitcase" aria-hidden="true"></i>More <i class="fa fa-angle-down" aria-hidden="true"></i></a> 
									<ul class="gn-submenu">
										<li class="mini_list_agile"><a href="faq.html"> <i class="fa fa-caret-right" aria-hidden="true"></i> Faq</a></li>
										<li class="mini_list_w3"><a href="blank.html"> <i class="fa fa-caret-right" aria-hidden="true"></i> Blank Page</a></li>
									</ul>
								</li>
							</ul>
						</div><!-- /gn-scroller -->
					</nav>--%>
                    </li>
                    <!-- //nav_agile_w3l -->
                    <li class="second logo">
                        <h1><a href="main-page.html"><i class="fa fa-graduation-cap" aria-hidden="true"></i>YAZZDIR </a></h1>
                    </li>
                    <li class="second admin-pic">
                        <ul class="top_dp_agile">
                            <li class="dropdown profile_details_drop">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <asp:Label ID="welcomeMsg" runat="server" Style="display: block; padding-top: 20%" Text=""></asp:Label>
                                    <%--<div class="profile_img">	
												    <span class="prfil-img"><img src="images/admin.jpg" alt=""> </span> 
											    </div>	--%>
                                </a>
                                <ul class="dropdown-menu drp-mnu">
                                    <li><a href="#"><i class="fa fa-cog"></i>Ayarlar</a> </li>
                                    <li><a href="#"><i class="fa fa-sign-out"></i>Çıkış Yap</a> </li>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li class="second top_bell_nav">
                        <%--   <ul class="top_dp_agile ">
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-bell-o" aria-hidden="true"></i> <span class="badge blue">4</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>Your Notifications</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="user_img"><img src="images/a3.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>John Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											  <div class="clearfix"></div>	
											 </a></li>
											 <li class="odd"><a href="#">
												<div class="user_img"><img src="images/a1.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>Jasmin Leo</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>3 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li><a href="#">
												<div class="user_img"><img src="images/a2.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>James Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>2 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											  <li><a href="#">
												<div class="user_img"><img src="images/a4.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>James Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li>
												<div class="notification_bottom">
													<a href="#">See all Notifications</a>
												</div> 
											</li>
										</ul>
									</li>
									
						</ul>--%>
                    </li>
                    <li class="second top_bell_nav">
                        <%--<ul class="top_dp_agile ">
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span class="badge blue">3</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>Your Messages</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="user_img"><img src="images/a3.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>John Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>3 hour ago</span></p>
												</div>
											  <div class="clearfix"></div>	
											 </a></li>
											 <li class="odd"><a href="#">
												<div class="user_img"><img src="images/a1.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>Jasmin Leo</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>2 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li><a href="#">
												<div class="user_img"><img src="images/a2.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>James Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li>
												<div class="notification_bottom">
													<a href="#">See all Messages</a>
												</div> 
											</li>
										</ul>
									</li>
									
						</ul>--%>
                    </li>
                    <li class="second top_bell_nav">
                        <%-- <ul class="top_dp_agile ">
				       <li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue">9</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have 4 Pending tasks</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Database update</span><span class="percentage">40%</span>
													<div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													<div class="bar yellow" style="width:40%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
												   <div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													 <div class="bar green" style="width:90%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
													<div class="clearfix"></div>	
												</div>
											   <div class="progress progress-striped active">
													 <div class="bar red" style="width: 33%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
												   <div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													 <div class="bar  blue" style="width: 80%;"></div>
												</div>
											</a></li>
											<li>
												<div class="notification_bottom">
													<a href="#">See all pending tasks</a>
												</div> 
											</li>
										</ul>
									</li>	
								</ul>--%>
                    </li>

                    <li class="second w3l_search"></li>
                    <li class="second full-screen">
                        <section class="full-top">
                            <button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>
                        </section>
                    </li>

                </ul>
                <!-- //nav -->

            </div>
            <div class="clearfix"></div>
            <!-- //w3_agileits_top_nav-->
            <!-- /inner_content-->
            <div class="inner_content">
                <!-- /inner_content_w3_agile_info-->
                <div class="inner_content_w3_agile_info">
                    <!-- /agile_top_w3_grids-->
                    <div class="agile_top_w3_grids">
                        <ul class="ca-menu">
                            <li>
                                <a href="#">

                                    <i class="fa fa-building-o" aria-hidden="true"></i>
                                    <div class="ca-content">
                                        <h4 runat="server" id="sirketler" class="ca-main"></h4>
                                        <h3 class="ca-sub">Mevcut Şirket</h3>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <div class="ca-content">
                                        <h4 runat="server" id="uyeler" class="ca-main one"></h4>
                                        <h3 class="ca-sub one">Mevcut Üyeler</h3>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-database" aria-hidden="true"></i>
                                    <div class="ca-content">
                                        <h4 runat="server" id="mIsler" class="ca-main two"></h4>
                                        <h3 class="ca-sub two">Mevcut İşler</h3>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-tasks" aria-hidden="true"></i>
                                    <div class="ca-content">
                                        <h4 runat="server" id="tamamIsler" class="ca-main three"></h4>
                                        <h3 class="ca-sub three">Tamamlanmış İşler</h3>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-clone" aria-hidden="true"></i>
                                    <div class="ca-content">
                                        <h4 runat="server" id="onaylanmamisIsler" class="ca-main four"></h4>
                                        <h3 class="ca-sub four">Henüz Onaylanmamış İşler</h3>
                                    </div>
                                </a>
                            </li>
                            <div class="clearfix"></div>
                        </ul>
                    </div>
                    <!-- //agile_top_w3_grids-->
                    <!-- /agile_top_w3_post_sections-->
                    <%--<div class="agile_top_w3_post_sections">
							       <div class="col-md-6 agile_top_w3_post agile_info_shadow">
										   <div class="img_wthee_post">
										         <h3 class="w3_inner_tittle">Latest Report</h3>
												<div class="stats-wrap">
													<div class="count_info"><h4 class="count">65,800,587 </h4><span class="year">Total Companies</span></div>
													<div class="year-info"><p class="text-no">20 </p><span class="year">This Year</span></div>
													<div class="clearfix"></div>
												</div>
												<div class="stats-wrap">
													<div class="count_info"><h4 class="count">2,690 </h4><span class="year">Total Companies</span></div>
													<div class="year-info"><p class="text-no">40 </p><span class="year">This Month</span></div>
													<div class="clearfix"></div>
												</div>
												<div class="stats-wrap">
													<div class="count_info"><h4 class="count">24,660 </h4><span class="year">Total Companies</span></div>
													<div class="year-info"><p class="text-no">30 </p><span class="year">This Week</span></div>
													<div class="clearfix"></div>
												</div>
												<div class="stats-wrap">
													<div class="count_info"><h4 class="count">1,204</h4><span class="year">Total Companies</span></div>
													<div class="year-info"><p class="text-no">10 </p><span class="year">This Day</span></div>
													<div class="clearfix"></div>
												</div>
											  
											</div>
									   </div>
									    <%--<div class="col-md-6 agile_top_w3_post_info agile_info_shadow">
										    <div class="img_wthee_post1">
											<h3 class="w3_inner_tittle"> Flip Clock</h3>
										       	<div class="main-example">
													<div class="clock"></div>
													<div class="message"></div>

												</div>
											</div>
							            </div>--%>

                    <!-- Ediör Ekle Modal-->
                    <div class="modal fade" id="editorEkle" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Editör Ekle</h4>
                                </div>
                                <div class="modal-body">
                                    <center>Kullanıcı Adı:</center>
                                    <center>  <asp:TextBox ID="userName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                    <center>Şifre:</center>
                                    <center>    <asp:TextBox ID="uPwd" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Şifre Giriniz" TextMode="Password"></asp:TextBox></center>
                                    <center>Mail Adresi:</center>
                                    <center>  <asp:TextBox ID="uMail" runat="server" style="width:40%; margin-left:10px" MaxLength="55" placeholder="Editör İçin Mail Adresi Giriniz"></asp:TextBox>  </center>
                                    <center>İsim:</center>
                                    <center>    <asp:TextBox ID="uName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin İsim Giriniz"></asp:TextBox>     </center>
                                    <center>Soyisim</center>
                                    <center> <asp:TextBox ID="surName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Soyisim Giriniz"></asp:TextBox></center>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button  runat="server" class="btn btn-warning"  ID="Gonder" onclick="Gonder_Click" style="width: 100%" Text="Tamamla" />
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:ScriptManager ID="script1" runat="server">

                    </asp:ScriptManager>

                                        <!-- Yönetici Ekle Modal-->
                    <div class="modal fade" id="adminEkle" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Yönetici Ekle</h4>
                                </div>
                                <div class="modal-body">
                                    <center>Kullanıcı Adı:</center>
                                    <center>  <asp:TextBox ID="adminUname" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                    <center>Şifre:</center>
                                    <center>    <asp:TextBox ID="adminPwd" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Şifre Giriniz" TextMode="Password"></asp:TextBox></center>
                                    <center>Mail Adresi:</center>
                                    <center>  <asp:TextBox ID="adminMail" runat="server" style="width:40%; margin-left:10px" MaxLength="55" placeholder="Yönetici İçin Mail Adresi Giriniz"></asp:TextBox>  </center>
                                    <center>İsim:</center>
                                    <center>    <asp:TextBox ID="adminName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin İsim Giriniz"></asp:TextBox>     </center>
                                    <center>Soyisim</center>
                                    <center> <asp:TextBox ID="adminSurname" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Soyisim Giriniz"></asp:TextBox></center>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button  runat="server" class="btn btn-danger"  ID="addAdminButton" onclick="addAdmin" style="width: 100%" Text="Tamamla" />
                                    
                                </div>
                            </div>
                        </div>
                    </div>





                    <!-- Editör Düzenle Modal -->
                    <div class="modal fade" id="editorDuzenle" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Editör Düzenle</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="panel1" runat="server"><ContentTemplate>
                                      
                                    <center>Kullanıcı Adı:</center>
                                    <center>  <asp:TextBox ID="editorUname" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                <center>     <asp:Button class="btn btn-warning" ID="Getir" runat="server" OnClick="Getir_Click" style="margin-top:5px"   Text="Bilgileri Getir" /> </center>
                                     <center>Şifre:</center>
                                    <center>    <asp:TextBox ID="editorPwd" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Şifre Giriniz" ></asp:TextBox></center>
                                    <center>Mail Adresi:</center>
                                    <center>  <asp:TextBox ID="editorMail" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="55" placeholder="Editör İçin Mail Adresi Giriniz"></asp:TextBox>  </center>
                                    <center>İsim:</center>
                                    <center>    <asp:TextBox ID="editorName" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin İsim Giriniz"></asp:TextBox>     </center>
                                    <center>Soyisim</center>
                                    <center> <asp:TextBox ID="editorSurname" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Soyisim Giriniz"></asp:TextBox></center>
                                
                                   
                                            </ContentTemplate> </asp:UpdatePanel>
                                        </div>
                                <div class="modal-footer">
                                    <asp:Button  runat="server" class="btn btn-warning"  ID="saveIt"  onclick="saveIt_Click" style="width: 100%" Text="Tamamla" />
                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Admin Düzenle -->
                    <div class="modal fade" id="adminDuzenle" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Yönetici Düzenle</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server"><ContentTemplate>
                                      
                                    <center>Kullanıcı Adı:</center>
                                    <center>  <asp:TextBox ID="adminEdituName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                <center>     <asp:Button class="btn btn-warning" ID="getAdminInfoBtn" runat="server" OnClick="getAdminInfo" style="margin-top:5px"   Text="Bilgileri Getir" /> </center>
                                   <center><asp:Label runat="server" ID="errorEditAdminMsg" visible="false" forecolor="red" Text="Aranılan kullanıcı bulunamadı."></asp:Label></center>
                                          <center>Şifre:</center>
                                    <center>    <asp:TextBox ID="adminEditPwd" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Şifre Giriniz" ></asp:TextBox></center>
                                    <center>Mail Adresi:</center>
                                    <center>  <asp:TextBox ID="adminEditMail" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="55" placeholder="Yönetici İçin Mail Adresi Giriniz"></asp:TextBox>  </center>
                                    <center>İsim:</center>
                                    <center>    <asp:TextBox ID="adminEditName" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin İsim Giriniz"></asp:TextBox>     </center>
                                    <center>Soyisim</center>
                                    <center> <asp:TextBox ID="adminEditSurname" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Soyisim Giriniz"></asp:TextBox></center>
                                
                                   
                                            </ContentTemplate> </asp:UpdatePanel>
                                        </div>
                                <div class="modal-footer">
                                    <asp:Button  runat="server" class="btn btn-danger"  ID="saveAdminEdit"  onclick="saveIt_Click" style="width: 100%" Text="Tamamla" />
                                    
                                </div>
                            </div>
                        </div>
                    </div>

                   
                    <!-- Editor Sil Modal--->
                    <div class="modal fade" id="editorSil" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Editör Sil</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>

                                            <center>Kullanıcı Adı:</center>
                                            <center>  <asp:TextBox ID="editorDeleteuName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                            <center>     <asp:Button class="btn btn-warning" ID="getInfo" runat="server" OnClick="getDeleteInfo" style="margin-top:5px"   Text="Bilgileri Getir" /> </center>
                                            <center><asp:Label runat="server" ID="silmeText" Text=""></asp:Label></center>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" class="btn btn-warning" ID="deleteBtn" OnClick="deleteIt" Style="width: 100%" Text="Editör Sil." />

                                </div>
                            </div>
                        </div>
                    </div>

                    
                    <!-- Yönetici Sil Modal--->
                    <div class="modal fade" id="adminSil" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Yönetici Sil</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                        <ContentTemplate>

                                            <center>Kullanıcı Adı:</center>
                                            <center>  <asp:TextBox ID="adminDeleteuName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                            <center>     <asp:Button class="btn btn-danger" ID="getDeleteAdminInfo" runat="server" OnClick="getAdminDeleteInfo" style="margin-top:5px"   Text="Bilgileri Getir" /> </center>
                                            <center><asp:Label runat="server" ID="deleteAdminTxt" Text=""></asp:Label></center>
                                               <center><asp:Label runat="server" ID="deleteAdminNotFound" visible="false" forecolor="red" Text="Aranılan yönetici bulunamadı."></asp:Label></center>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" class="btn btn-danger" ID="deleteAdminBtn" OnClick="deleteItAdmin" Style="width: 100%" Text="Yönetici Sil" />

                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Editörleri Görüntüle -->
                    <div class="modal fade" id="editorGoruntule" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Editör Görüntüle</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                          
                                            <asp:Panel ID="DinamikPanel" runat="server" style="width:100%">
      
           
              

                                             </asp:Panel>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" class="btn btn-warning" ID="EditorGoruntuleBtn" data-dismiss="modal" Style="width: 100%" Text="Tamam"/>

                                </div>
                            </div>
                        </div>
                    </div>



                     <!-- Yöneticileri Görüntüle -->
                    <div class="modal fade" id="adminGoruntule" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Yöneticileri Görüntüle</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                        <ContentTemplate>
                                          
                                            <asp:Panel ID="Panel2" runat="server" style="width:100%">
      
           
              

                                             </asp:Panel>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" class="btn btn-warning" ID="adminGoruntuleBtn" data-dismiss="modal" Style="width: 100%" Text="Tamam"/>

                                </div>
                            </div>
                        </div>
                    </div>

                       <!-- Üye Ekle Modal-->
                    <div class="modal fade" id="uyeEkle" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Üye Ekle</h4>
                                </div>
                                <div class="modal-body">
                                    <center>Kullanıcı Adı:</center>
                                    <center>  <asp:TextBox ID="userUname" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                    <center>Şifre:</center>
                                    <center>    <asp:TextBox ID="userPwd" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Şifre Giriniz" TextMode="Password"></asp:TextBox></center>
                                    <center>Mail Adresi:</center>
                                    <center>  <asp:TextBox ID="userMail" runat="server" style="width:40%; margin-left:10px" MaxLength="55" placeholder="Mail Adresi Giriniz"></asp:TextBox>  </center>
                                    <center>İsim:</center>
                                    <center>    <asp:TextBox ID="userRealName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="İsim Giriniz"></asp:TextBox>     </center>
                                    <center>Soyisim</center>
                                    <center> <asp:TextBox ID="userRealSurname" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Soyisim Giriniz"></asp:TextBox></center>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button  runat="server" class="btn btn-info"  ID="addUserBtn" onclick="addUser" style="width: 100%" Text="Tamamla" />
                                    
                                </div>
                            </div>
                        </div>
                    </div>

                     <!-- Üye Sil Modal--->
                    <div class="modal fade" id="uyeSil" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Üye Sil</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                        <ContentTemplate>

                                            <center>Kullanıcı Adı:</center>
                                            <center>  <asp:TextBox ID="userDeleteUname" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                            <center>     <asp:Button class="btn btn-info" ID="getUserInfoBtn" runat="server" OnClick="getUserDeleteInfo" style="margin-top:5px"   Text="Bilgileri Getir" /> </center>
                                            <center><asp:Label runat="server" ID="userDeleteInfoTxt" Text=""></asp:Label></center>
                                               <center><asp:Label runat="server" ID="userNotFound" visible="false" forecolor="red" Text="Aranılan üye bulunamadı."></asp:Label></center>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" class="btn btn-info" ID="deleteUserBtn" OnClick="deleteItUser" Style="width: 100%" Text="Üye Sil" />

                                </div>
                            </div>
                        </div>
                    </div>

                      <!-- Üyeler Görüntüle -->
                    <div class="modal fade" id="uyeGoruntule" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Üyeleri Görüntüle</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                        <ContentTemplate>
                                          
                                            <asp:Panel ID="Panel3" runat="server" style="width:100%">
      
           
              

                                             </asp:Panel>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" class="btn btn-info" ID="uyeGoruntuleBtn" data-dismiss="modal" Style="width: 100%" Text="Tamam"/>

                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Onaylanmamış İlanları Görüntüle -->
                    <div class="modal fade" id="unConfirmedAds" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Onaylanmamış İlanları Görüntüle</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                        <ContentTemplate>
                                          
                                            <asp:Panel ID="Panel4" runat="server" style="width:100%">
      
           
              

                                             </asp:Panel>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" class="btn btn-success" ID="unConfirmedAdsBtn" data-dismiss="modal" Style="width: 100%" Text="Tamam"/>

                                </div>
                            </div>
                        </div>
                    </div>




                    <div class="clearfix"></div>
                </div>
                <div class="container">

                    <div class="row">
                        <div class="col-md-6">
                            <p class="text-warning" style="padding: 0px 0px 0px 35%; margin-bottom: 5px;">Editör İşlemleri</p>
                            <button type="button" class="btn btn-warning" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#editorEkle">Editör Ekle</button>
                            <button type="button" class="btn btn-warning" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#editorSil">Editör Sil</button>
                            <button type="button" class="btn btn-warning" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#editorDuzenle">Editör Düzenle</button>
                            <button type="button" class="btn btn-warning" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#editorGoruntule">Editörleri Görüntüle</button>
                            <button type="button" class="btn btn-warning" style="width: 100%; margin-bottom: 5px;">Editör İşlem Geçmişi</button>
                        </div>
                        <div class="col-md-6">
                            <p class="text-danger" style="padding: 0px 0px 0px 35%; margin-bottom: 5px;">Yönetici İşlemleri</p>
                            <button type="button" class="btn btn-danger" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#adminEkle">Yönetici Ekle</button>
                            <button type="button" class="btn btn-danger" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#adminSil" >Yönetici Sil</button>
                            <button type="button" class="btn btn-danger" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#adminDuzenle">Yönetici Düzenle</button>
                            <button type="button" class="btn btn-danger" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#adminGoruntule">Yöneticileri Görüntüle</button>
                            <button type="button" class="btn btn-danger" style="width: 100%; margin-bottom: 5px;">Yönetici İşlem Geçmişi</button>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <p class="text-info" style="padding: 0px 0px 0px 45%; margin-bottom: 5px;">Üye İşlemleri</p>
                            <button type="button" class="btn btn-info" style="width: 50%; margin-left: 25%; margin-bottom: 5px;" data-toggle="modal" data-target="#uyeEkle">Üye Ekle</button>
                            <button type="button" class="btn btn-info" style="width: 50%; margin-left: 25%; margin-bottom: 5px;" data-toggle="modal" data-target="#uyeSil">Üye Sil</button>
                            <button type="button" class="btn btn-info" style="width: 50%; margin-left: 25%; margin-bottom: 5px;" data-toggle="modal" data-target="#uyeGoruntule">Üye Görüntüle</button>
                            <button type="button" class="btn btn-info" style="width: 50%; margin-left: 25%; margin-bottom: 5px;">Üye İşlem Geçmişi</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p class="text-success" style="padding: 0px 0px 0px 35%; margin-bottom: 5px;">İlan İşlemleri</p>
                     <a href="confirmationAndReport.aspx"        <button type="button" class="btn btn-success" style="width: 100%; margin-bottom: 5px;" >Onaylanmamış İlanları Görüntüle</button></a>
                            <button type="button" class="btn btn-success" style="width: 100%; margin-bottom: 5px;">Yayındaki İlanları Görüntüle</button>
                        </div>
                        <div class="col-md-6">
                            <p class="text-primary" style="padding: 0px 0px 0px 35%; margin-bottom: 5px;">Haber İşlemleri</p>
                          <a href="confirmationAndReport.aspx"  <button type="button" class="btn btn-primary" style="width: 100%; margin-bottom: 5px;" >Onaylanmamış Haberleri Görüntüle</button></a>
                            <button type="button" class="btn btn-primary" style="width: 100%; margin-bottom: 5px;">Yayındaki Haberleri Görüntüle</button>
                        </div>
                    </div>
                </div>
                <!-- //agile_top_w3_post_sections-->
                <!-- /w3ls_agile_circle_progress-->
                <%--<div class="w3ls_agile_cylinder chart agile_info_shadow">
							<h3 class="w3_inner_tittle two"> Cylinder chart</h3>
							
									 <div id="chartdiv"></div>
										
								
							</div>
						<!-- /w3ls_agile_circle_progress-->--%>
                <!-- /chart_agile-->

                <!-- /w3ls_agile_circle_progress-->
                <%--<div class="w3ls_agile_circle_progress agile_info_shadow">
							
								<div class="cir_agile_info ">
								<h3 class="w3_inner_tittle">Circular Progress</h3>
									  <div class="skill-grids">
											<div class="skills-grid text-center">
												<div class="circle" id="circles-1"></div>
												<p>HTML</p>
											</div>
											<div class="skills-grid text-center">
												<div class="circle" id="circles-2"></div>
												<p>PHOTOGRAPHY</p>
											</div>
											<div class="skills-grid text-center">
												<div class="circle" id="circles-3"></div>
												
												<p>ILLUSTRATOR</p>
											</div>
											<div class="skills-grid text-center">
												<div class="circle" id="circles-4"></div>
												<p>CSS3</p>
											</div>
												
								
				
										 <div class="clearfix"></div>
										
								</div>
							</div>
						</div>--%>
                <!-- /w3ls_agile_circle_progress-->
                <!--/prograc-blocks_agileits-->
                <%--	<div class="prograc-blocks_agileits">
								
								
								 <div class="col-md-6 bars_agileits agile_info_shadow">
								   <h3 class="w3_inner_tittle two">Daily Sales</h3>
										<div class='bar_group'>
												<div class='bar_group__bar thin' label='Rating' show_values='true' tooltip='true' value='343'></div>
												<div class='bar_group__bar thin' label='Quality' show_values='true' tooltip='true' value='235'></div>
												<div class='bar_group__bar thin' label='Amount' show_values='true' tooltip='true' value='550'></div>
												<div class='bar_group__bar thin' label='Farming' show_values='true' tooltip='true' value='456'></div>
										</div>
								</div>
								<div class="col-md-6 fallowers_agile agile_info_shadow">
									<h3 class="w3_inner_tittle two">Recent Followers</h3>
												<div class="work-progres">
													<div class="table-responsive">
														<table class="table table-hover">
														  <thead>
															<tr>
															  <th>#</th>
															  <th>Project</th>
															  <th>Manager</th>                                   
																								
															  <th>Status</th>
															  <th>Progress</th>
														  </tr>
													  </thead>
													  <tbody>
														<tr>
														  <td>1</td>
														  <td>Face book</td>
														  <td>Malorum</td>                                 
																					 
														  <td><span class="label label-danger">in progress</span></td>
														  <td><span class="badge badge-info">50%</span></td>
													  </tr>
													  <tr>
														  <td>2</td>
														  <td>Twitter</td>
														  <td>Evan</td>                               
																						  
														  <td><span class="label label-success">completed</span></td>
														  <td><span class="badge badge-success">100%</span></td>
													  </tr>
													  <tr>
														  <td>3</td>
														  <td>Google</td>
														  <td>John</td>                                
														  
														  <td><span class="label label-warning">in progress</span></td>
														  <td><span class="badge badge-warning">75%</span></td>
													  </tr>
													  <tr>
														  <td>4</td>
														  <td>LinkedIn</td>
														  <td>Danial</td>                                 
																					 
														  <td><span class="label label-info">in progress</span></td>
														  <td><span class="badge badge-info">65%</span></td>
													  </tr>
													  <tr>
														  <td>5</td>
														  <td>Tumblr</td>
														  <td>David</td>                                
																						 
														  <td><span class="label label-warning">in progress</span></td>
														  <td><span class="badge badge-danger">95%</span></td>
													  </tr>
													  <tr>
														  <td>6</td>
														  <td>Tesla</td>
														  <td>Mickey</td>                                  
																					 
														  <td><span class="label label-info">in progress</span></td>
														  <td><span class="badge badge-success">95%</span></td>
													  </tr>
												  </tbody>
											  </table>
											</div>
										</div>											
								</div>
									 <div class="clearfix"></div>
							</div>--%>

                <!--//prograc-blocks_agileits-->
                <!-- /bottom_agileits_grids-->
                <%--	<div class="bottom_agileits_grids">
						<div class="col-md-4 profile-main">
						    <div class="profile_bg_agile">
								<div class="profile-pic wthree">
									<h2>Bason Durel</h2>
									<img src="images/profile.jpg" alt="Image">
									<p>Web Designer</p>
								</div>
								<div class="profile-ser">
										<div class="follow-grids-agileits-w3layouts">
											<div class="profile-ser-grids">
												<h3>Followers</h3>
												<h4>2486</h4>
											</div>
											<div class="profile-ser-grids agileinfo">
												<h3>Following</h3>
												<h4>1582</h4>
											</div>
											<div class="profile-ser-grids no-border">
												<h3>Tweets</h3>
												<h4>1468</h4>
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="w3l_social_icons w3l_social_icons1">
											<ul>
												<li><a href="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
												<li><a href="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
												<li><a href="#" class="google_plus"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
											</ul>
										</div>

						        </div>
								</div>
					        </div>
							<div class="col-md-8 chart_agile agile_info_shadow">
							 <h3 class="w3_inner_tittle two">Stacked Bar Chart</h3>
							    <div id="chartdiv1"></div>	
							</div>
											
						
							 <div class="clearfix"></div>
						</div>--%>
                <!-- //bottom_agileits_grids-->
                <!-- /weather_w3_agile_info-->
                <%--<div class="weather_w3_agile_info agile_info_shadow">
						  <div class="weather_w3_inner_info">
						      
							     <div class="over_lay_agile">
								  <h3 class="w3_inner_tittle">Weather Report</h3>
						       	  <ul>
									<li>
										<figure class="icons">
											<canvas id="partly-cloudy-day" width="60" height="60"></canvas>
										</figure>
										<h3>25 °C</h3>
										<div class="clearfix"></div>
									</li>
									<li>
										<figure class="icons">
											<canvas id="clear-day" width="60" height="60"></canvas>
										</figure>
										<div class="weather-text">
											<h4>WED</h4>
											<h5>27 °C</h5>
										</div>
										<div class="clearfix"></div>
									</li>
									<li>
										<figure class="icons">
											<canvas id="snow" width="60" height="60"></canvas>
										</figure>
										<div class="weather-text">
											<h4>THU</h4>
											<h5>13 °C</h5>
										</div>
										<div class="clearfix"></div>
									</li>
									<li>
										<figure class="icons">
											<canvas id="partly-cloudy-night" width="60" height="60"></canvas>
										</figure>
										<div class="weather-text">
											<h4>FRI</h4>
											<h5>18 °C</h5>
										</div>
										<div class="clearfix"></div>
									</li>
									<li>
										<figure class="icons">
											<canvas id="cloudy" width="60" height="60"></canvas>
										</figure>
										<div class="weather-text">
											<h4>SAT</h4>
											<h5>15 °C</h5>
										</div>
										<div class="clearfix"></div>
									</li>
									<li>
										<figure class="icons">
											<canvas id="fog" width="60" height="60"></canvas>
										</figure>
										<div class="weather-text">
											<h4>SUN</h4>
											<h5>11 °C</h5>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul>
								</div>
							</div>	
						</div>--%>
                <!-- //weather_w3_agile_info-->
                <!-- /social_media-->
                <%--<div class="social_media_w3ls">

                            <div class="col-md-3 socail_grid_agile facebook">
                                <ul class="icon_w3_info">
                                    <li><a href="#" class="wthree_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li>Facebook</li>
                                </ul>
                                <ul class="icon_w3_social">
                                    <li><i class="fa fa-comment-o" aria-hidden="true"></i></li>
                                    <li><i class="fa fa-envelope-o" aria-hidden="true"></i></li>
                                    <li><i class="fa fa-user" aria-hidden="true"></i></li>
                                </ul>
                                <div class="clearfix"></div>
                                <div class="bottom_info_social">
                                    <div class="col-md-4 agile_w3l_social_media_text_img">
                                        <img src="images/admin.jpg" alt="">
                                    </div>
                                    <div class="col-md-8 agile_w3l_social_media_text">
                                        <h4>Hurisa Joe</h4>
                                        <p>Lorem ipsum dolor sit amet</p>
                                    </div>

                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="col-md-3 socail_grid_agile twitter">
                                <ul class="icon_w3_info">
                                    <li><a href="#" class="wthree_facebook"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li>Twitter</li>
                                </ul>
                                <ul class="icon_w3_social">
                                    <li><i class="fa fa-comment-o" aria-hidden="true"></i></li>
                                    <li><i class="fa fa-envelope-o" aria-hidden="true"></i></li>
                                    <li><i class="fa fa-user" aria-hidden="true"></i></li>
                                </ul>
                                <div class="clearfix"></div>
                                <div class="bottom_info_social">
                                    <div class="col-md-4 agile_w3l_social_media_text_img">
                                        <img src="images/a1.jpg" alt="">
                                    </div>
                                    <div class="col-md-8 agile_w3l_social_media_text">
                                        <h4>Jasmin Joe</h4>
                                        <p>Lorem ipsum dolor sit amet</p>
                                    </div>

                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="col-md-3 socail_grid_agile gmail">
                                <ul class="icon_w3_info">
                                    <li><a href="#" class="wthree_facebook"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                    <li>Google+</li>
                                </ul>
                                <ul class="icon_w3_social">
                                    <li><i class="fa fa-comment-o" aria-hidden="true"></i></li>
                                    <li><i class="fa fa-envelope-o" aria-hidden="true"></i></li>
                                    <li><i class="fa fa-user" aria-hidden="true"></i></li>
                                </ul>
                                <div class="clearfix"></div>
                                <div class="bottom_info_social">
                                    <div class="col-md-4 agile_w3l_social_media_text_img">
                                        <img src="images/a2.jpg" alt="">
                                    </div>
                                    <div class="col-md-8 agile_w3l_social_media_text">
                                        <h4>John Pal</h4>
                                        <p>Lorem ipsum dolor sit amet</p>
                                    </div>

                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="col-md-3 socail_grid_agile dribble">

                                <ul class="icon_w3_info">
                                    <li><a href="#" class="wthree_facebook"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                                    <li>Dribbble</li>
                                </ul>
                                <ul class="icon_w3_social">
                                    <li><i class="fa fa-comment-o" aria-hidden="true"></i></li>
                                    <li><i class="fa fa-envelope-o" aria-hidden="true"></i></li>
                                    <li><i class="fa fa-user" aria-hidden="true"></i></li>
                                </ul>
                                <div class="clearfix"></div>
                                <div class="bottom_info_social">
                                    <div class="col-md-4 agile_w3l_social_media_text_img">
                                        <img src="images/a4.jpg" alt="">
                                    </div>
                                    <div class="col-md-8 agile_w3l_social_media_text">
                                        <h4>Honey Pal</h4>
                                        <p>Lorem ipsum dolor sit amet</p>
                                    </div>

                                    <div class="clearfix"></div>
                                </div>

                            </div>
                            <div class="clearfix"></div>

                        </div>--%>
                <!-- //social_media-->
            </div>
            <!-- //inner_content_w3_agile_info-->
        </div>
        <!-- //inner_content-->
        </div>
        <!-- banner -->
        <!--copy rights start here-->

        <!--copy rights end here-->
        <!-- js -->

        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

        <!-- /amcharts -->
        <script src="js/amcharts.js"></script>
        <script src="js/serial.js"></script>
        <script src="js/export.js"></script>
        <script src="js/light.js"></script>
        <!-- Chart code -->
        <script>
            var chart = AmCharts.makeChart("chartdiv", {
                "theme": "light",
                "type": "serial",
                "startDuration": 2,
                "dataProvider": [{
                    "country": "USA",
                    "visits": 4025,
                    "color": "#FF0F00"
                }, {
                    "country": "China",
                    "visits": 1882,
                    "color": "#FF6600"
                }, {
                    "country": "Japan",
                    "visits": 1809,
                    "color": "#FF9E01"
                }, {
                    "country": "Germany",
                    "visits": 1322,
                    "color": "#FCD202"
                }, {
                    "country": "UK",
                    "visits": 1122,
                    "color": "#F8FF01"
                }, {
                    "country": "France",
                    "visits": 1114,
                    "color": "#B0DE09"
                }, {
                    "country": "India",
                    "visits": 984,
                    "color": "#04D215"
                }, {
                    "country": "Spain",
                    "visits": 711,
                    "color": "#0D8ECF"
                }, {
                    "country": "Netherlands",
                    "visits": 665,
                    "color": "#0D52D1"
                }, {
                    "country": "Russia",
                    "visits": 580,
                    "color": "#2A0CD0"
                }, {
                    "country": "South Korea",
                    "visits": 443,
                    "color": "#8A0CCF"
                }, {
                    "country": "Canada",
                    "visits": 441,
                    "color": "#CD0D74"
                }, {
                    "country": "Brazil",
                    "visits": 395,
                    "color": "#754DEB"
                }, {
                    "country": "Italy",
                    "visits": 386,
                    "color": "#DDDDDD"
                }, {
                    "country": "Taiwan",
                    "visits": 338,
                    "color": "#333333"
                }],
                "valueAxes": [{
                    "position": "left",
                    "axisAlpha": 0,
                    "gridAlpha": 0
                }],
                "graphs": [{
                    "balloonText": "[[category]]: <b>[[value]]</b>",
                    "colorField": "color",
                    "fillAlphas": 0.85,
                    "lineAlpha": 0.1,
                    "type": "column",
                    "topRadius": 1,
                    "valueField": "visits"
                }],
                "depth3D": 40,
                "angle": 30,
                "chartCursor": {
                    "categoryBalloonEnabled": false,
                    "cursorAlpha": 0,
                    "zoomable": false
                },
                "categoryField": "country",
                "categoryAxis": {
                    "gridPosition": "start",
                    "axisAlpha": 0,
                    "gridAlpha": 0

                },
                "export": {
                    "enabled": true
                }

            }, 0);
        </script>
        <!-- Chart code -->
        <script>
            var chart = AmCharts.makeChart("chartdiv1", {
                "type": "serial",
                "theme": "light",
                "legend": {
                    "horizontalGap": 10,
                    "maxColumns": 1,
                    "position": "right",
                    "useGraphSettings": true,
                    "markerSize": 10
                },
                "dataProvider": [{
                    "year": 2017,
                    "europe": 2.5,
                    "namerica": 2.5,
                    "asia": 2.1,
                    "lamerica": 0.3,
                    "meast": 0.2,
                    "africa": 0.1
                }, {
                    "year": 2016,
                    "europe": 2.6,
                    "namerica": 2.7,
                    "asia": 2.2,
                    "lamerica": 0.3,
                    "meast": 0.3,
                    "africa": 0.1
                }, {
                    "year": 2015,
                    "europe": 2.8,
                    "namerica": 2.9,
                    "asia": 2.4,
                    "lamerica": 0.3,
                    "meast": 0.3,
                    "africa": 0.1
                }],
                "valueAxes": [{
                    "stackType": "regular",
                    "axisAlpha": 0.5,
                    "gridAlpha": 0
                }],
                "graphs": [{
                    "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                    "fillAlphas": 0.8,
                    "labelText": "[[value]]",
                    "lineAlpha": 0.3,
                    "title": "Europe",
                    "type": "column",
                    "color": "#000000",
                    "valueField": "europe"
                }, {
                    "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                    "fillAlphas": 0.8,
                    "labelText": "[[value]]",
                    "lineAlpha": 0.3,
                    "title": "North America",
                    "type": "column",
                    "color": "#000000",
                    "valueField": "namerica"
                }, {
                    "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                    "fillAlphas": 0.8,
                    "labelText": "[[value]]",
                    "lineAlpha": 0.3,
                    "title": "Asia-Pacific",
                    "type": "column",
                    "color": "#000000",
                    "valueField": "asia"
                }, {
                    "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                    "fillAlphas": 0.8,
                    "labelText": "[[value]]",
                    "lineAlpha": 0.3,
                    "title": "Latin America",
                    "type": "column",
                    "color": "#000000",
                    "valueField": "lamerica"
                }, {
                    "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                    "fillAlphas": 0.8,
                    "labelText": "[[value]]",
                    "lineAlpha": 0.3,
                    "title": "Middle-East",
                    "type": "column",
                    "color": "#000000",
                    "valueField": "meast"
                }, {
                    "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                    "fillAlphas": 0.8,
                    "labelText": "[[value]]",
                    "lineAlpha": 0.3,
                    "title": "Africa",
                    "type": "column",
                    "color": "#000000",
                    "valueField": "africa"
                }],
                "rotate": true,
                "categoryField": "year",
                "categoryAxis": {
                    "gridPosition": "start",
                    "axisAlpha": 0,
                    "gridAlpha": 0,
                    "position": "left"
                },
                "export": {
                    "enabled": true
                }
            });
        </script>

        <!-- //amcharts -->
        <script src="js/chart1.js"></script>
        <script src="js/Chart.min.js"></script>
        <script src="js/modernizr.custom.js"></script>

        <script src="js/classie.js"></script>
        <script src="js/gnmenu.js"></script>
        <script>
            new gnMenu(document.getElementById('gn-menu'));
        </script>
        <!-- script-for-menu -->

        <!-- /circle-->
        <script type="text/javascript" src="js/circles.js"></script>
        <script>
            var colors = [
                    ['#ffffff', '#fd9426'], ['#ffffff', '#fc3158'], ['#ffffff', '#53d769'], ['#ffffff', '#147efb']
            ];
            for (var i = 1; i <= 7; i++) {
                var child = document.getElementById('circles-' + i),
                    percentage = 30 + (i * 10);

                Circles.create({
                    id: child.id,
                    percentage: percentage,
                    radius: 80,
                    width: 10,
                    number: percentage / 1,
                    text: '%',
                    colors: colors[i - 1]
                });
            }

        </script>
        <!-- //circle -->
        <!--skycons-icons-->
        <script src="js/skycons.js"></script>
        <script>
            var icons = new Skycons({ "color": "#fcb216" }),
                 list = [
                   "partly-cloudy-day"
                 ],
                 i;

            for (i = list.length; i--;)
                icons.set(list[i], list[i]);
            icons.play();
        </script>
        <script>
            var icons = new Skycons({ "color": "#fff" }),
                 list = [
                   "clear-night", "partly-cloudy-night", "cloudy", "clear-day", "sleet", "snow", "wind", "fog"
                 ],
                 i;

            for (i = list.length; i--;)
                icons.set(list[i], list[i]);
            icons.play();
        </script>
        <!--//skycons-icons-->
        <!-- //js -->
        <script src="js/screenfull.js"></script>
        <script>
            $(function () {
                $('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

                if (!screenfull.enabled) {
                    return false;
                }



                $('#toggle').click(function () {
                    screenfull.toggle($('#container')[0]);
                });
            });
        </script>
        <script src="js/flipclock.js"></script>

        <script type="text/javascript">
            var clock;

            $(document).ready(function () {

                clock = $('.clock').FlipClock({
                    clockFace: 'HourlyCounter'
                });
            });
        </script>
        <script src="js/bars.js"></script>
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>

        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>

    </form>
</body>
</html>
