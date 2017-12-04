<%@ Page Language="C#" AutoEventWireup="true" enableEventValidation="false" CodeBehind="mainCom.aspx.cs" Inherits="yazdir.webSitesi.test.yeniSayfa" %>

<!DOCTYPE html>
<html lang="zxx">
<head>

    

        






<title>YAZZDIR-KURUMSAL</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Treasurer Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href="//fonts.googleapis.com/css?family=Raleway:100i,200,200i,300,400,500,500i,600,700,700i,800,800i" rel="stylesheet">


     <script type ="text/jscript"  language="javascript">

         function openModal() { $('#myModal2').modal('show'); false }
         </script>


</head>
	
<body>
      <script src="vendors/jquery-1.9.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="vendors/easypiechart/jquery.easy-pie-chart.js"></script>
<script src="assets/scripts.js"></script>

<form id="form1" runat="server">
    <div>



    
<!-- banner -->
<div class="agileits_top_menu">
   <div class="w3l_header_left">
<%--				<ul>
					<li><i class="fa fa-map-marker" aria-hidden="true"></i> 1143 New York, USA</li>
					<li><i class="fa fa-phone" aria-hidden="true"></i> +(010) 221 918 811</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@example.com">info@example.com</a></li>
				</ul>--%>
			</div>
			<div class="w3l_header_right">
				<div class="w3ls-social-icons text-left">
					<a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
					<a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
					<a class="pinterest" href="#"><i class="fa fa-pinterest-p"></i></a>
					<a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
   <div class="agileits_w3layouts_banner_nav">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				<h1><a class="navbar-brand" href="index.html"><i class="fa fa-crosshairs" aria-hidden="true"></i> YAZZDIR</a></h1>

				</div>
				<ul class="agile_forms">

                  
                    <%--<li><a class="active" href="#" data-toggle="modal" data-target="#myModal4">Mesajlar</a> </li>--%>
                   <%-- **********************************************************************************************--%>

                    <li class="dropdown">
						 <a href="#" class="dropdown-toggle hvr-underline-from-center" data-toggle="dropdown">mesajlar <b class="fa fa-caret-down"></b></a>
          		




								<ul class="dropdown-menu agile_short_dropdown">
                                    <li><a class="active" href="#" data-toggle="modal" data-target="#modalNewMes">yeni mesaj</a></li>
									<li><a href="icons.html">Gelen kutusu</a></li>
									<li><a href="typography.html">Giden kutusu</a></li>
								</ul>
							</li>



                    <%--*********************************************************************************************--%>
                    <li><a class="active" href="#" data-toggle="modal" data-target="#myModal5">Şifre</a> </li>

					<li><a class="active" href="#" data-toggle="modal" data-target="#myModal2">Şirket Bilgileri</a> </li>

					<%--<li><a href="#" data-toggle="modal" data-target="#myModal3" UseSubmitBehavior="false" onclick="sessionSil">Çıkış</a> </li>--%>
                 <%-- <li> <asp:Button ID="Button1" href="#" data-toggle="modal" data-target="#myModal3" runat="server" OnClick="sessionSil" UseSubmitBehavior="false" Text="Çıkış" /> </li>--%>
                    <asp:button  href="#" data-toggle="modal" data-target="#myModal3" runat="server" OnClick="sessionSil" UseSubmitBehavior="false" class="btn btn-danger" text="Çıkış"/>
				</ul>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li><a href="index.html" class="hvr-underline-from-center">Anasayfa</a></li>
							<li><a href="about.html" class="hvr-underline-from-center">Hakkımda</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle hvr-underline-from-center" data-toggle="dropdown">Haber İşlemleri <b class="fa fa-caret-down"></b></a>
								<ul class="dropdown-menu agile_short_dropdown">
									<li><a href="createNewsCom.aspx">Haber Oluştur</a></li>
									<li><a href="inspectNews.aspx">Haberlerimi İncele</a></li>
								</ul>
							</li>
						
                            
                           	<li class="dropdown">
								<a href="#" class="dropdown-toggle hvr-underline-from-center" data-toggle="dropdown">İlan İşlemleri <b class="fa fa-caret-down"></b></a>
								<ul class="dropdown-menu agile_short_dropdown">
									<li><a href="createAd.aspx">İlan Oluştur</a></li>
									<li><a href="viewAd.aspx">İlanlarımı İncele</a></li>
                                    <li><a href="completedJobs.aspx">Tamamlanan İşleri İncele</a></li>
								</ul>
							</li>
							
						</ul>
					</nav>

				</div>
			</nav>	
			
	<div class="clearfix"> </div> 
</div> 
    
    <!------------------------------------------------------------------------------------------------------------------------------->
    
       <div class="modal fade" id="myModal5" tabindex="-1" role="dialog">
                 
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                           <%-- <button type="button" class="close" data-dismiss="modal">&times;</button>--%>

                            <div class="signin-form profile">
                                <h3 class="agileinfo_sign">Şifre Değiştir</h3>
                                <div class="login-form">
                                    </div>
          
                                        <a style="padding-right:100%">Eski Şifre </a>
                                        <input type="password" id="eski" runat="server" name="eskiSifre" placeholder="" required="">
                                        <a style="padding-right:100%">Yeni Şifre </a>        
                                        <input type="password" id="newPassword" runat="server" name="newPassword" placeholder="" required="">
                                        <a style="padding-right:100%">Yeni Şifre Tekrar </a>
                                        <input type="password" id="newPasswordAgain" runat="server" name="newPasswordAgain" placeholder="" required="">
                                   
                                <asp:Button ID="changePasswordButtonCom" runat="server" UseSubmitBehavior="false" OnClick="changePassCom" Text="Değistir" />
                              
          
                       
                                 
                                

                               
                              

                                </div>

                           
                                
                            </div>

                        </div>

                    </div> 

                </div>
        <%---------------------------------------------------------------------------------------------------------------------------------%>
        <div class="modal fade" id="modalNewMes" tabindex="-1" role="dialog">
                 
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                           <%-- <button type="button" class="close" data-dismiss="modal">&times;</button>--%>

                            <div class="signin-form profile">
                                <h3 class="agileinfo_sign">Yeni Mesaj</h3>
                                <div class="login-form">
                                    </div>

                                       


                                <div class="leave-coment-form">
					
					<%--<form action="#" method="post">--%>
                        
						<input type="email" class="form-control" id="mEmailK" runat="server" placeholder="Mail" name="email" required=""/>
						<input type="text" class="form-control" id="mSubK" runat="server" placeholder="Konu" name="sub" required=""/>
						<textarea id="msgK" name="Message" runat="server" placeholder="Mesajınızı buraya yazabilirsiniz..." required="" ></textarea>

					 <asp:Button ID="newMessageSend" runat="server" UseSubmitBehavior="false" OnClick="newMessage" Text="GÖNDER" />
				<%--	</form>--%>
				</div>


                                        
                               
                              

                               

                               
                              

                                </div>

                           
                                
                            </div>

                        </div>

                    </div> 

                </div>
      <%--  --------------------------------------------------------------------------------------------------------------------%>
             <div class="modal fade" id="hesapSil" tabindex="-1" role="dialog">
                 
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                           <%-- <button type="button" class="close" data-dismiss="modal">&times;</button>--%>

                            <div class="signin-form profile">
                                <h3 class="agileinfo_sign" >HESABI SİLMEK İSTEDİĞİNİZE EMİN MİSİNİZ ?</h3>
                                <div class="login-form">
                                    </div>
                                
                                        <a style="padding-right:100%">Şifre </a>
                                        <input type="password" id="Password1" runat="server" name="eskiSifre" placeholder="" required=""/>
                                        <br />       
                                        <a style="padding-right:100%">ŞifreTekrar</a>        
                                        <input type="password" id="Password2" runat="server" name="newPassword" placeholder="" required=""/>
                                        
                                        
                                <asp:Button id="deleteAccount" class="btn btn-danger" runat="server" UseSubmitBehavior="false" OnClick="hsbSil" Text="* Sil *" />
                              
                                <%--<button class="btn btn-default" >Launch modal</button>--%>
                               

                               
                              

                                </div>

                           
                                
                            </div>

                        </div>

                    </div> 

                </div>
    <!------------------------------------------------------------------------------------------------------------------------------>
<!-- Modal1 -->
							<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
								<div class="modal-dialog">
								<!-- Modal content-->
					<div class="modal-content">
							<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
																	
						<div class="signin-form profile">
				        	<h3 class="agileinfo_sign">Bilgiler</h3>	
						<div class="login-form">
				        	<form action="#" method="post">


								<a style="padding-right:100%">Vergi Numarası </a>
                                         <input type="text" id="vergiNo" runat="server" name="vergiNo" placeholder="" required="" disabled >

                                 <a style="padding-right:100%">Şirket Adı </a>
                                        <input type="text" id="comName" runat="server" name="comNAme" placeholder="" required="" disabled>
                                    
                                 <a style="padding-right:100%">Kullanıcı Adı </a>
                                        <input type="text" id="userName" runat="server" name="userName" placeholder="" required="" disabled>

                                 <a style="padding-right:100%">Adres </a>
                                        <input type="text" id="address" runat="server" name="address" placeholder="" required="" >


                                <a style="padding-right:100%">Şehir </a>
                                        <input type="text" id="city" runat="server" name="city" placeholder="" required="" disabled>


                               
                                <a style="padding-right:100%">Telefon Numarası </a>
                                        <input type="text" id="mobilPhone" runat="server" name="mobilPhone" maxlength="11" placeholder="" required="">


                                <a style="padding-right:100%">Mail Adresi </a>
                                        <input type="email" id="eMail" runat="server" name="eMail" placeholder="" required="" disabled>


                                <a style="padding-right:100%">Hesap Numarası </a>
                                        <input type="text" id="account" runat="server" name="account"  placeholder="" required="" maxlength="20">


                                	<div class="tp">
                             

                               
                                       <asp:Button  ID="updateInfo" runat="server" UseSubmitBehavior="false" onclick="upd" Text="Güncelle" />

                                	</div>
									 </form>
													</div>
																			
																			<%--<p><a href="#" data-toggle="modal" data-target="#myModal3" > Don't have an account?</a></p>--%>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- //Modal1 -->	
													<!-- Modal2 -->
													<%--<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
														<div class="modal-dialog">
														<!-- Modal content-->
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close" data-dismiss="modal">&times;</button>
																	
																	<div class="signin-form profile">
																	<h3 class="agileinfo_sign">Sign Up</h3>	
																			<div class="login-form">
																				<form action="#" method="post">

																				   <input type="text" name="name" placeholder="Username" required="">
																					<input type="email" name="email" placeholder="Email" required="">
																					<input type="password" name="password" id="password1" placeholder="Password" required="">
				                                                                    <input type="password" name="password" id="password2" placeholder="Confirm Password" required="">

																					<input type="submit" value="Sign Up">
																				</form>
																			</div>
																			<p><a href="#"> By clicking register, I agree to your terms</a></p>
																		</div>
																</div>
															</div>
														</div>
													</div>--%>
        
													<!-- //Modal2 -->
					<!-- /agile_inner_banner_info -->													
							<div class="agile_inner_banner_info">
							   <h2 id="sirket" runat="server">ŞIRKET ADI</h2>
                               
							   <p>BAZI GEREKLİ AÇIKLAMALAR</p>
							</div>
					<!-- //agile_inner_banner_info -->
					<!-- contact -->
	<div class="services">
		<div class="container">

            <div class="row">
                <div class="col-md-12">

                    <br />
                    <br />
                    <asp:Panel ID="DinamikPanel" runat="server" style="width:100%">
              
                        

                </asp:Panel>
                    </div>
            </div>



				<div class="w3ls_address_mail_footer_grids">
				<div class="col-md-4 w3ls_footer_grid_left con">
					<div class="wthree_footer_grid_left">
						<i class="fa fa-map-marker" aria-hidden="true"></i>
					</div>
					<p>3481 Melrose Place, Beverly Hills, <span>ELAZIĞ 23000.</span></p>
				</div>
				<div class="col-md-4 w3ls_footer_grid_left con">
					<div class="wthree_footer_grid_left">
						<i class="fa fa-phone" aria-hidden="true"></i>
					</div>
					<p>+(000) 123 4565 32 <span>+(010) 123 4565 35</span></p>
				</div>
				<div class="col-md-4 w3ls_footer_grid_left con">
					<div class="wthree_footer_grid_left">
						<i class="fa fa-envelope-o" aria-hidden="true"></i>
					</div>
					<p><a href="mailto:info@example.com">info@example1.com</a> 
						<span><a href="mailto:info@example.com">info@example2.com</a></span></p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<%--<div class="agileits_map">
		<div class="container">
			 <h3 class="tittle_agile_w3">Find Us</h3>
		    <div class="heading-underline">
				<div class="h-u1"></div><div class="h-u2"></div><div class="h-u3"></div><div class="clearfix"></div>
			</div>
		</div>
		<div class="w3_services_grids">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387142.84010033106!2d-74.25819252532891!3d40.70583163828471!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1475140387172" style="border:0"></iframe>
		</div>
	</div>--%>
	<%--<div class="services">
		<div class="container">
			 <h3 class="tittle_agile_w3">Send Us Message</h3>
		    <div class="heading-underline">
				<div class="h-u1"></div><div class="h-u2"></div><div class="h-u3"></div><div class="clearfix"></div>
			</div>
			<div class="agileinfo_mail_grids">
				<form action="#" method="post">
					<span class="input input--chisato">
						<input class="input__field input__field--chisato" name="Name" type="text" id="input-13" placeholder=" " required="" />
						<label class="input__label input__label--chisato" for="input-13">
							<span class="input__label-content input__label-content--chisato" data-content="Name">Name</span>
						</label>
					</span>
					<span class="input input--chisato">
						<input class="input__field input__field--chisato" name="Email" type="email" id="input-14" placeholder=" " required="" />
						<label class="input__label input__label--chisato" for="input-14">
							<span class="input__label-content input__label-content--chisato" data-content="Email">Email</span>
						</label>
					</span>
					<span class="input input--chisato">
						<input class="input__field input__field--chisato" name="Subject" type="text" id="input-15" placeholder=" " required="" />
						<label class="input__label input__label--chisato" for="input-15">
							<span class="input__label-content input__label-content--chisato" data-content="Subject">Subject</span>
						</label>
					</span>
					<textarea name="Message" placeholder="Your comment here..." required=""></textarea>
					<input type="submit" value="Submit">
				</form>
			</div>
		</div>
	</div>--%>
<!-- //contact -->


<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3_agile_footer_grids">
				<div class="col-md-4 w3_agile_footer_grid">
					<h3>Latest Tweets</h3>
					<ul class="agile_footer_grid_list">
						<li><i class="fa fa-twitter" aria-hidden="true"></i>Nam libero tempore, cum soluta nobis est eligendi optio 
							cumque nihil impedit. <span>1 day ago</span></li>
						<li><i class="fa fa-twitter" aria-hidden="true"></i>Itaque earum rerum hic tenetur a sapiente delectus <a href="mailto:info@mail.com">info@mail.com</a>
							cumque nihil impedit. <span>2 days ago</span></li>
					</ul>
				</div>
				<div class="col-md-4 w3_agile_footer_grid">
					<h3>Navigation</h3>
					<ul class="agileits_w3layouts_footer_grid_list">
						<li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="about.html">About</a></li>
						<li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="portfolio.html">Portfolio</a></li>
						<li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="contact.html">Contact</a></li>
					</ul>
				</div>
				<div class="col-md-4 w3_agile_footer_grid">
					<h3>Instagram Posts</h3>
					<div class="w3_agileits_footer_grid_left">
						<a href="#" data-toggle="modal" data-target="#myModal">
							<img src="images/f1.jpg" alt=" " class="img-responsive" />
						</a>
					</div>
					<div class="w3_agileits_footer_grid_left">
						<a href="#" data-toggle="modal" data-target="#myModal">
							<img src="images/f2.jpg" alt=" " class="img-responsive" />
						</a>
					</div>
					<div class="w3_agileits_footer_grid_left">
						<a href="#" data-toggle="modal" data-target="#myModal">
							<img src="images/f4.jpg" alt=" " class="img-responsive" />
						</a>
					</div>
					<div class="w3_agileits_footer_grid_left">
						<a href="#" data-toggle="modal" data-target="#myModal">
							<img src="images/f3.jpg" alt=" " class="img-responsive" />
						</a>
					</div>
					<div class="w3_agileits_footer_grid_left">
						<a href="#" data-toggle="modal" data-target="#myModal">
							<img src="images/f1.jpg" alt=" " class="img-responsive" />
						</a>
					</div>
					<div class="w3_agileits_footer_grid_left">
						<a href="#" data-toggle="modal" data-target="#myModal">
							<img src="images/f2.jpg" alt=" " class="img-responsive" />
						</a>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="w3ls_address_mail_footer_grids">
				<div class="col-md-4 w3ls_footer_grid_left">
					<div class="wthree_footer_grid_left">
						<i class="fa fa-map-marker" aria-hidden="true"></i>
					</div>
					<p>3481 Melrose Place, Beverly Hills, <span>New York City 90210.</span></p>
				</div>
				<div class="col-md-4 w3ls_footer_grid_left">
					<div class="wthree_footer_grid_left">
						<i class="fa fa-phone" aria-hidden="true"></i>
					</div>
					<p>+(000) 123 4565 32 <span>+(010) 123 4565 35</span></p>
				</div>
				<div class="col-md-4 w3ls_footer_grid_left">
					<div class="wthree_footer_grid_left">
						<i class="fa fa-envelope-o" aria-hidden="true"></i>
					</div>
					<p><a href="mailto:info@example.com">info@example1.com</a> 
						<span><a href="mailto:info@example.com">info@example2.com</a></span></p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="agileinfo_copyright">
                 <a class="btn btn-link" href="#" data-toggle="modal" data-target="#hesapSil">Hesabı Sil </a>
				<p>© 2017 Treasurer. All Rights Reserved | Design by <a href="https://Furkanalniak.com/">Studio0634</a></p>
			</div>
		</div>

	</div>


                


<!-- //footer -->
<!-- menu -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/modernizr.custom.46884.js"></script>
	<!-- password-script -->
	<script type="text/javascript">
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->

<script src="js/classie.js"></script>
<script>
	(function() {
		// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
		if (!String.prototype.trim) {
			(function() {
				// Make sure we trim BOM and NBSP
				var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
				String.prototype.trim = function() {
					return this.replace(rtrim, '');
				};
			})();
		}

		[].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
			// in case the input is already filled..
			if( inputEl.value.trim() !== '' ) {
				classie.add( inputEl.parentNode, 'input--filled' );
			}

			// events:
			inputEl.addEventListener( 'focus', onInputFocus );
			inputEl.addEventListener( 'blur', onInputBlur );
		} );

		function onInputFocus( ev ) {
			classie.add( ev.target.parentNode, 'input--filled' );
		}

		function onInputBlur( ev ) {
			if( ev.target.value.trim() === '' ) {
				classie.remove( ev.target.parentNode, 'input--filled' );
			}
		}
	})();
</script>
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->

    </div>
    </form>



    <style>


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
    box-shadow: 0px 2px 1px rgba(28, 28, 29, 0.42);

}
#updateInfo:hover{
      color: #fff;
       background: #000;
    transition: .5s all;
	-webkit-transition: .5s all;
    -moz-transition: .5s all;
    -o-transition: .5s all;
    -ms-transition: .5s all;
}

#changePasswordButtonCom{
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

#changePasswordButtonCom:hover{
      color: #fff;
       background: #000;
    transition: .5s all;
	-webkit-transition: .5s all;
    -moz-transition: .5s all;
    -o-transition: .5s all;
    -ms-transition: .5s all;
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










</body>
</html>