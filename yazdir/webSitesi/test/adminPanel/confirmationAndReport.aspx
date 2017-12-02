<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmationAndReport.aspx.cs" Inherits="yazdir.webSitesi.test.adminPanel.confirmationAndReport" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
<title>YAZZDIR | E-Ticaret / Admin Paneli</title>   
      
       <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/component.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>

<body>
    <form id="form1" runat="server">
  
<div class="wthree_agile_admin_info">
		  <!-- /w3_agileits_top_nav-->
		  <!-- /nav-->
		  <div class="w3_agileits_top_nav">
			<ul id="gn-menu" class="gn-menu-main">
			  		 <!-- /nav_agile_w3l -->
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><i class="fa fa-bars" aria-hidden="true"></i><span>Menu</span></a>
				<%--	<nav class="gn-menu-wrapper">
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
										<li class="mini_list_agile"><a href="typo.html"> <i class="fa fa-caret-right" aria-hidden="true"></i> Typography</a></li>
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
                        <h1><i class="fa fa-graduation-cap" aria-hidden="true"></i>YAZZDIR </h1>
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
				<%--   <ul class="top_dp_agile ">
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
			<%--	   <ul class="top_dp_agile ">
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

				<li class="second w3l_search">
				 
						<%--<form action="#" method="post">
							<input type="search" name="search" placeholder="Search here..." required="">
							<button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
						</form>--%>
					
				</li>
				<li class="second full-screen">
					<%--<section class="full-top">
						<button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>	
					</section>--%>
				</li>

			</ul>
			<!-- //nav -->
			
		</div>
		<div class="clearfix"></div>

     <!-- Onaylanmamış İlanları Görüntüle -->
   

    SELAM MERHABA

                    <div class="modal fade" id="detayGoruntule" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Onaylanmamış İlanları Görüntüle</h4>
                                </div>
                                <div class="modal-body">
                                    
                                     <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                        <ContentTemplate>
                                          
                                            <asp:Panel ID="Panel4" runat="server" style="width:100%">
      
           
                                                <asp:Label ID="content" runat="server" Text=""></asp:Label>

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





		<!-- //w3_agileits_top_nav-->
		

		<!-- /inner_content-->
				<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->

					<!-- breadcrumbs -->
						<%--<div class="w3l_agileits_breadcrumbs">
							<div class="w3l_agileits_breadcrumbs_inner">
								<ul>
									<li><a href="main-page.html">Home</a><span>«</span></li>
									<li>UI Components<span>«</span></li>
									<li>Grids</li>
								</ul>
							</div>
						</div>--%>
					<!-- //breadcrumbs -->

					<div class="inner_content_w3_agile_info two_in">
					  <h2 class="w3_inner_tittle">Onaylanmamış İlanlar</h2>

							<!-- /blank -->
							<div class="agile3-grids agile_info_shadow">	
							<!-- grids -->
							  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                         
                                            <asp:Panel ID="unconfirmedJobs" runat="server"  style="width:100%">

                                             </asp:Panel>
                                              
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
							</div>
					<!-- //grids -->
						
				    </div>
					<!-- //inner_content_w3_agile_info-->
				</div>
		<!-- //inner_content-->
     </form>
	</div>
<!-- banner -->
<!--copy rights start here-->

<!--copy rights end here-->
<!-- js -->

          <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		  <script src="js/modernizr.custom.js"></script>
		
		   <script src="js/classie.js"></script>
		  <script src="js/gnmenu.js"></script>
		  <script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		 </script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>        
			<script type="text/javascript">
				google.maps.event.addDomListener(window, 'load', init);
				function init() {
					var mapOptions = {
						zoom: 11,
						center: new google.maps.LatLng(40.6700, -73.9400),
						styles: [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":17},{"weight":1.2}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":21}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]
					};
					var mapElement = document.getElementById('map');
					var map = new google.maps.Map(mapElement, mapOptions);
					var marker = new google.maps.Marker({
						position: new google.maps.LatLng(40.6700, -73.9400),
						map: map,
					});
				}
			</script>
			  <script src="js/prettymaps.js"></script>
				<script>

        $(function(){
            //default
            $('.map-canvas').prettyMaps({
                address: 'Melbourne, Australia',
                image: 'map-icon.png',
                hue: '#FF0000',
                saturation: -20
            });

            //red map example
            $('#default-map-btn').on('click', function(){
                $('.map-canvas').prettyMaps();
            });

            //green map example
            $('#green-map-btn').on('click', function(){
                $('.map-canvas').prettyMaps({
                    address: 'Melbourne, Australia',
                    image: 'map-icon.png',
                    hue: '#00FF55',
                    saturation: -30
                });
            });

            //blue map example
            $('#blue-map-btn').on('click', function(){
                $('.map-canvas').prettyMaps({
                    address: 'Melbourne, Australia',
                    image: 'map-icon.png',
                    hue: '#0073FF',
                    saturation: -30,
                    zoom: 16,
                    panControl: true,
                    zoomControl: true,
                    mapTypeControl: true,
                    scaleControl: true,
                    streetViewControl: true,
                    overviewMapControl: true,
                    scrollwheel: false,
                });
            });
            
            //grey map example
            $('#grey-map-btn').on('click', function(){
                $('.map-canvas').prettyMaps({
                    address: 'Melbourne, Australia',
                    image: 'map-icon.png',
                    saturation: -100,
                    lightness: 10
                });
            });
        });

  </script>
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
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>

<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>

    <style>
        body {
  font-family: "Helvetica Neue", Helvetica, Arial;
  font-size: 14px;
  line-height: 20px;
  font-weight: 400;
  color: #3b3b3b;
  -webkit-font-smoothing: antialiased;
  font-smoothing: antialiased;
  background: #f6f6f6;
}
     #changePasswordButton{
            outline: none;
    padding: 0.8em 0;
    width: 100%;
    text-align: center;
    font-size: 1em;
    margin-top: 1em;
    border: none;
    color: #FFFFFF;
	text-transform:uppercase;
    cursor: pointer;
    background: #a80057;
    box-shadow: 0px 2px 1px rgba(28, 28, 29, 0.42);

     }
    #changePasswordButton:hover
    {
          color: #fff;
       background: #000;
    transition: .5s all;
	-webkit-transition: .5s all;
    -moz-transition: .5s all;
    -o-transition: .5s all;
    -ms-transition: .5s all;
    }
     #submitChanges{
    outline: none;
    padding: 0.8em 0;
    width: 100%;
    text-align: center;
    font-size: 1em;
    margin-top: 1em;
    border: none;
    color: #FFFFFF;
	text-transform:uppercase;
    cursor: pointer;
    background: #a80057;
    box-shadow: 0px 2px 1px rgba(28, 28, 29, 0.42);

}
#submitChanges:hover{
      color: #fff;
       background: #000;
    transition: .5s all;
	-webkit-transition: .5s all;
    -moz-transition: .5s all;
    -o-transition: .5s all;
    -ms-transition: .5s all;
}
#changePassword{
    outline: none;
    padding: 0.8em 0;
    width: 100%;
    text-align: center;
    font-size: 1em;
    margin-top: 1em;
    border: none;
    color: #FFFFFF;
	text-transform:uppercase;
    cursor: pointer;
    background: #a80057;
    box-shadow: 0px 2px 1px rgba(28, 28, 29, 0.42);}

#updateInfo{
     outline: none;
    padding: 0.8em 0;
    width: 100%;
    text-align: center;
    font-size: 1em;
    margin-top: 1em;
    border: none;
    color: #FFFFFF;
	text-transform:uppercase;
    cursor: pointer;
    background: #a80057;
    box-shadow: 0px 2px 1px rgba(28, 28, 29, 0.42);}

}


.wrapper {
  margin: 0 auto;
  padding: 40px;
  max-width: 800px;
}

.table {
  margin: 0 0 40px 0;
  width: 100%;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
  display: table;
}

.satir {
  display: table-row;
  background: #f6f6f6;
}

.row:nth-of-type(odd) {
  background: #e9e9e9;
}

.satir.header {
  font-weight: 900;
  color: #ffffff;
  /*background: #ea6153;*/
  background:#c60f0f;
}

.satir.green {
  background: #27ae60;
}

.satir.blue {
  background: #2980b9;
}

.cell {
  padding: 6px 12px;
  display: table-cell;
}
@media screen and (max-width: 580px) {
  .cell {
    padding: 2px 12px;
    display: block;
  }
  @media screen and (max-width: 580px) {
  .row {
    padding: 8px 0;
    display: block;
  }
}
  
@media screen and (max-width: 580px) {
  .table {
    display: block;
  }
}

    </style>




    </form>
</body>
</html>
