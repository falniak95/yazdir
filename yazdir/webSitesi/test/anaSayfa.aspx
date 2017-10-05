<%@ Page Language="C#" AutoEventWireup="true"   enableEventValidation="false" CodeBehind="anaSayfa.aspx.cs" Inherits="yazdir.webSitesi.test.anaSayfa" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <script language="C#" type="text/C#" runat="server">
    public void kahraman(object s, EventArgs e) {
	ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Merhaba ben çalıştım.')", true);




}


</script>


	<title>YAZZDIR | E-Ticaret </title>
	<!-- custom-theme -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Treasurer Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //custom-theme -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/slicebox.css" rel="stylesheet" type="text/css">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	    rel='stylesheet' type='text/css'>
	<link href="//fonts.googleapis.com/css?family=Raleway:100i,200,200i,300,400,500,500i,600,700,700i,800,800i" rel="stylesheet">

    <script type ="text/jscript"  language="javascript">


    function shouldCancelbackspace(e) {
    var key;
    if(e){
    key = e.which? e.which : e.keyCode;
    if(key == null || ( key != 8 && key != 13)){ // return when the key is not backspace key.
    return false;
    }
    }else{
    return false;
    }


    if (e.srcElement) { // in IE
        tag = e.srcElement.tagName.toUpperCase();
        type = e.srcElement.type;
        readOnly =e.srcElement.readOnly;
        if( type == null){ // Type is null means the mouse focus on a non-form field. disable backspace button
        return true;
        }else{
        type = e.srcElement.type.toUpperCase();
    }


    } else { // in FF
        tag = e.target.nodeName.toUpperCase();
        type = (e.target.type) ? e.target.type.toUpperCase() : "";
}


// we don't want to cancel the keypress (ever) if we are in an input/text area
if ( tag == 'INPUT' || type == 'TEXT' ||type == 'TEXTAREA')
{
    if(readOnly == true ) // if the field has been dsabled, disbale the back space button
    return true;
    if( ((tag == 'INPUT' && type == 'RADIO') || (tag == 'INPUT' && type == 'CHECKBOX'))
    && (key == 8 || key == 13) ){
    return true; // the mouse is on the radio button/checkbox, disbale the backspace button
}
    return false;
}


// if we are not in one of the above things, then we want to cancel (true) if backspace
return (key == 8 || key == 13);
}


    // check the browser type
    function whichBrs() {
    var agt=navigator.userAgent.toLowerCase();
    if (agt.indexOf("opera") != -1) return 'Opera';
    if (agt.indexOf("staroffice") != -1) return 'Star Office';
    if (agt.indexOf("webtv") != -1) return 'WebTV';
    if (agt.indexOf("beonex") != -1) return 'Beonex';
    if (agt.indexOf("chimera") != -1) return 'Chimera';
    if (agt.indexOf("netpositive") != -1) return 'NetPositive';
    if (agt.indexOf("phoenix") != -1) return 'Phoenix';
    if (agt.indexOf("firefox") != -1) return 'Firefox';
    if (agt.indexOf("safari") != -1) return 'Safari';
    if (agt.indexOf("skipstone") != -1) return 'SkipStone';
    if (agt.indexOf("msie") != -1) return 'Internet Explorer';
    if (agt.indexOf("netscape") != -1) return 'Netscape';
    if (agt.indexOf("mozilla/5.0") != -1) return 'Mozilla';


    if (agt.indexOf('\/') != -1) {
    if (agt.substr(0,agt.indexOf('\/')) != 'mozilla') {
    return navigator.userAgent.substr(0,agt.indexOf('\/'));
    }else
    return 'Netscape';
    }else if (agt.indexOf(' ') != -1)
    return navigator.userAgent.substr(0,agt.indexOf(' '));
    else
    return navigator.userAgent;
    }


    // Global events (every key press)


    var browser = whichBrs();
    if(browser == 'Internet Explorer'){
    document.onkeydown = function() { return !shouldCancelbackspace(event); }
    }else if(browser == 'Firefox'){
    document.onkeypress = function(e) { return !shouldCancelbackspace(e); }
    }


</script>


</head>

<body>
   
    <div class="tamami" >
        
        <form id="allOf" runat="server">
           
            <!-- banner -->
            <div class="agileits_top_menu">



                <!--<div class="ustBar">
		<div class="w3l_header_left">
			<ul>
				<li><i class="fa fa-map-marker" aria-hidden="true"></i> 23000, Elazığ,TR</li>
				<li><i class="fa fa-phone" aria-hidden="true"></i> +(90) 500 00 00</li>
				<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@furkanalniak.com">info@yazzdir.com</a></li>
			</ul>
		</div>
          <div class="w3l_header_right">
              <div class="w3ls-social-icons text-left">
                  <a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
                  <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                  <a class="pinterest" href="#"><i class="fa fa-pinterest-p"></i></a>
                  <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
              </div>
          </div>

		</div>-->
                <div class="clearfix"></div>
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
                        <h1><a class="navbar-brand" href="anaSayfa.aspx"><i>
                            <img src="images/logocuk.png" /></i> </a></h1>

                    </div>
                    <ul class="agile_forms">
                        <li><a class="active" id="logInButtonTab" runat="server" href="#" data-toggle="modal" data-target="#myModal2">OTURUM AÇ </a></li>
                        <li><a class="active" id="registerButtonTab" runat="server" href="#" data-toggle="modal" data-target="#myModal3">Kayıt Ol</a> </li>
                        <li><a href="#" id="kazanmayaBaslaTab" runat="server" data-toggle="modal" data-target="#kazanmayaBasla">Kazanmaya Başla</a> </li>
                        <li><a href="/webSitesi/test/main.aspx" id="anaSayfaTab" visible="false" runat="server" data-toggle="modal" >Ana Sayfa</a> </li>
                        <li><a href="#" id="oturumuKapatTab" visible="false" runat="server" data-toggle="modal" >Oturumu Kapat</a> </li>
                    </ul>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                        <nav>
                            <!--<ul class="nav navbar-nav">
						<li class="active"><a href="index.html" class="hvr-underline-from-center">Home</a></li>
						<li><a href="about.html" class="hvr-underline-from-center">About</a></li>
						<li><a href="portfolio.html" class="hvr-underline-from-center">Portfolio</a></li>
						<li><a href="blog.html" class="hvr-underline-from-center">Blog</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle hvr-underline-from-center" data-toggle="dropdown">Short Codes <b class="fa fa-caret-down"></b></a>
							<ul class="dropdown-menu agile_short_dropdown">
								<li><a href="icons.html">Web Icons</a></li>
								<li><a href="typography.html">Typography</a></li>
							</ul>
						</li>
						<li><a href="contact.html" class="hvr-underline-from-center">Contact</a></li>
					</ul>-->
                        </nav>

                    </div>

                </nav>

                <div class="clearfix">
                </div>

            </div>

                  <div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
                 
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>

                            <div class="signin-form profile">
                                <h3 class="agileinfo_sign">GIRIS YAP VE ISE BASLA</h3>
                                <div class="login-form">
                                    </div>


                                        <input type="email" id="grsMail" runat="server" name="email" placeholder="Kullanıcı Adı" required="">
                                        <input type="password" id="grsPassword" runat="server" name="password" placeholder="Şifre" required="">
                                        <div class="tp">


                                            <asp:Button ID="grsButon" runat="server" UseSubmitBehavior="false"   Text="OTURUM AÇ" OnClick="grsbuton" />

                                            

                                        </div>
                                    
                                </div>

                            <%--<div class="login-social-grids">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>--%>
                                <p><a href="#" data-toggle="modal" data-target="#myModal3">Hesabın yok mu?</a></p>
                            </div>

                        </div>

                    </div>

                </div>


            <!-- Kazanmaya başla sayfası.-->
            <div class="modal fade" id="kazanmayaBasla" tabindex="-1" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="kazanmayaBasla">


                            <button type="button" class="close" data-dismiss="modal" runat="server" onclick="tikladi">&times;</button>

                            <h3>
                                <center>Kazanmaya Başla</center>
                            </h3>
                            <br>
                            <span>
                                <center>Tasarlanan bu sistem ile kazanmak çok kolay. Tek yapman gereken üye olup kurumların ya da kişilerin verdiği projelerde görev almak. Eğer öğrenciysen seni de düşündük. Küçük boyutlu projelere katılabilir hatta ödevinde yaşadığın sorunları ücretsiz çözüme ulaştırabilirsin.</center>
                            </span>

                            <input type="submit" id="tmButton" data-dismiss="modal" value="Tamam!" />
                           
                        </div>

                    </div>
                </div>
            </div>



            
            <div class="modal fade" id="myModal3" tabindex="-1" role="dialog">

                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>

                            <div class="signin-form profile">
                                <h3 class="agileinfo_sign">Üye Ol!</h3>

                                <div class="login-form">

                                  

                                    <input type="text" runat="server" id="kAdi" name="userName" placeholder="Kullanıcı Adı" class="kullaniciadi" required="">
                                    <input type="email" runat="server" id="mail" name="email" placeholder="E-mail" class="email">
                                    <input type="text" runat="server" id="name" name="name" placeholder="İsim" required="">
                                    <input type="text" runat="server" id="surname" name="surname" placeholder="Soyisim" required="">
                                    <input type="password" runat="server" name="password" id="password1" placeholder="Şifre" required="">
                                    <input type="password" runat="server" name="password" id="password2" placeholder="Şifre Tekrarı" required="">
                                       
                                    <div class="btnKayit">
                                      <asp:Button ID="registerPageButton" runat="server" UseSubmitBehavior="false"    Text="Tamamla!" OnClick="registerNow"  />
                                    </div>
                                 
                                    <%--<input type="submit" value="Gönder" id="signUpButton" onclick=""">--%>
                                </div>
                                
                                  
                                    

                                <p><a href="#">Üye olarak şartlarımızı kabul etmiş sayılırsın.</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Modal1 -->
      

            


            <!-- //Modal2 -->

            

            <div class="banner">



                <div class="wrapper">

                    <ul id="sb-slider" class="sb-slider">
                        <li>
                            <a href="#">
                                <img src="images/banner1.jpg" alt="image1" /></a>
                            <div class="sb-description">
                                <h3>Kod yazarak kazan!</h3>
                            </div>
                        </li>
                        <li>
                            <a href="#">
                                <img src="images/banner2.jpg" alt="image2" /></a>
                            <div class="sb-description">
                                <h3>Kolayca outsource elemanı bul!</h3>
                            </div>
                        </li>
                        <li>
                            <a href="#">
                                <img src="images/banner3.jpg" alt="image1" /></a>
                            <div class="sb-description">
                                <h3>Anlaşma sağla!</h3>
                            </div>
                        </li>
                        <li>
                            <a href="#">
                                <img src="images/banner4.jpg" alt="image1" /></a>
                            <div class="sb-description">
                                <h3>Dökümantasyon yazarak kazan!</h3>
                            </div>
                        </li>

                    </ul>

                    <div id="shadow" class="shadow"></div>

                    <div id="nav-arrows" class="nav-arrows">
                        <a href="#">Next</a>
                        <a href="#">Previous</a>
                    </div>

                    <div id="nav-dots" class="nav-dots">
                        <span class="nav-dot-current"></span>
                        <span></span>
                        <span></span>
                        <span></span>

                    </div>
                </div>
                <!-- /wrapper -->
            </div>
            <!-- banner-bottom -->
            <div class="banner-bottom">
                <div class="container">
                    <div class="mid_agile_bannner_top_info">
                        <h2>Serbest çalışanlarla daha fazlasını yapın</h2>
                        <div class="heading-underline">
                            <div class="h-u1"></div>
                            <div class="h-u2"></div>
                            <div class="h-u3"></div>
                            <div class="clearfix"></div>
                        </div>
                        <p>Takımınız için mükemmel biri ile çalışın.</p>
                    </div>
                    <div class="col-md-6 agileits_banner_bottom_left">

                        <h3>welcome to <span>YAZZDIR</span></h3>
                        <p class="w3l_para">Ayrıcalıklarla Dolu YAZZDIR Dünyası Seni Bekliyor.</p>
                        <div class="w3l_social_icons">
                            <div class="w3l_social_icon_grid">
                                <div class="w3l_social_icon_gridl w3_facebook">
                                    <a href="#">
                                        <i class="fa fa-facebook" aria-hidden="true"></i>
                                    </a>
                                </div>
                                <div class="w3l_social_icon_gridr">
                                    <p class="counter">23,536</p>
                                </div>
                                <div class="clearfix"></div>
                                <div class="w3l_social_icon_grid_pos">
                                    <label>-</label>
                                </div>
                            </div>
                            <div class="w3l_social_icon_grid w3ls_social_icon_grid">
                                <div class="w3l_social_icon_gridl w3_dribbble">
                                    <a href="#">
                                        <i class="fa fa-dribbble" aria-hidden="true"></i>
                                    </a>
                                </div>
                                <div class="w3l_social_icon_gridr">
                                    <p class="counter">13,676</p>
                                </div>
                                <div class="clearfix"></div>
                                <div class="w3l_social_icon_grid_pos">
                                    <label>-</label>
                                </div>
                            </div>
                            <div class="w3l_social_icon_grid">
                                <div class="w3l_social_icon_gridl w3_instagram">
                                    <a href="#">
                                        <i class="fa fa-instagram" aria-hidden="true"></i>
                                    </a>
                                </div>
                                <div class="w3l_social_icon_gridr">
                                    <p class="counter">45,342</p>
                                </div>
                                <div class="clearfix"></div>
                                <div class="w3l_social_icon_grid_pos">
                                    <label>-</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 agileits_banner_bottom_right">
                        <div class="w3ls_banner_bottom_right">
                            <img src="images/2.jpg" alt=" " class="img-responsive" />
                            <div class="w3ls_banner_bottom_right_pos">
                                <img src="images/1.jpg" alt=" " class="img-responsive" />
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- //banner-bottom -->

            <!-- banner-bottom-icons -->
            <div class="banner-bottom-icons">
                <div class="col-md-6 w3_banner_bottom_icons_left">

                    <div class="w3_agile_banner_bottom">
                        <a href="#" class="hvr-rectangle-out">
                            <h5 class="grow">Dökümantasyon Yazarak Gelir Elde Et!</h5>
                            <img src="images/banner4.jpg" alt=" " class="img-responsive hvr-radial-in" />
                        </a>
                    </div>
                </div>
                <div class="col-md-6 w3_banner_bottom_icons_left">
                    <div class="w3_agile_banner_bottom">
                        <h5 class="grow">Kod Yazarak Gelir Elde Et!</h5>
                        <a href="#" class="hvr-rectangle-out">
                            <img src="images/banner1.jpg" alt=" " class="img-responsive hvr-radial-in" /></a>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <!-- //banner-bottom-icons -->

            <div class="skills">
                <h3>
                    <center>Referanslarımız</center>
                </h3>
                <br />
                <div class="events-top">
                    <ul id="flexiselDemo1">
                        <li>
                            <div class="agile_events_top_grid">
                                <div class="w3_agileits_evets_text_img">
                                    <a href="images/4.jpg" class="lsb-preview" data-lsb-group="header">
                                        <div class="view view-eighth">
                                            <img src="images/4.jpg" alt=" " class="img-responsive" />
                                            <div class="mask">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                        <div class="agile_events_top_grid_pos">
                                            <img src="images/1.png" alt=" " class="img-responsive" />
                                        </div>
                                    </a>
                                </div>
                                <div class="agileits_w3layouts_events_text">
                                    <h3>Merve Yılmaz</h3>
                                    <p>Elma Nakliyat,Ar-Ge</p>
                                    <h6>Sistemimizin yönetim kısmını nasıl yapacağı hakkında fikrimiz olmadığında yardımımıza YAZZDIR yetişti.</h6>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="agile_events_top_grid">
                                <div class="w3_agileits_evets_text_img">
                                    <a href="portfolio.html" class="lsb-preview" data-lsb-group="header">
                                        <div class="view view-eighth">
                                            <img src="images/7.jpg" alt=" " class="img-responsive" />
                                            <div class="mask">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                        <div class="agile_events_top_grid_pos">
                                            <img src="images/3.png" alt=" " class="img-responsive" />
                                        </div>
                                    </a>
                                </div>
                                <div class="agileits_w3layouts_events_text">
                                    <h3>Burak YETİŞ</h3>
                                    <p>Armut Ltd. Şti , Proje Yönetim Ofisi</p>
                                    <h6>İş analistimiz işten çıkınca dökümantasyonu acilen yetiştirmemiz gerekti. İşte tam bu sırada YAZZDIR ile tanıştık.</h6>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="agile_events_top_grid">
                                <div class="w3_agileits_evets_text_img">
                                    <a href="portfolio.html" class="lsb-preview" data-lsb-group="header">
                                        <div class="view view-eighth">
                                            <img src="images/6.jpg" alt=" " class="img-responsive" />
                                            <div class="mask">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                        <div class="agile_events_top_grid_pos">
                                            <img src="images/2.png" alt=" " class="img-responsive" />
                                        </div>
                                    </a>
                                </div>
                                <div class="agileits_w3layouts_events_text">
                                    <h3>Pelin AKYÜZ</h3>
                                    <p>Lale Ticaret , Yazılım Departmanı</p>
                                    <h6>Veritabanı uzmanı arayışımız çok uzun sürünce çözüme ulaşmak için YAZZDIR a ilan verdik ve gereken danışman ile kısa süreli anlaşma sağladık.</h6>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="agile_events_top_grid">
                                <div class="w3_agileits_evets_text_img">
                                    <a href="portfolio.html" class="lsb-preview" data-lsb-group="header">
                                        <div class="view view-eighth">
                                            <img src="images/5.jpg" alt=" " class="img-responsive" />
                                            <div class="mask">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                        <div class="agile_events_top_grid_pos">
                                            <img src="images/4.png" alt=" " class="img-responsive" />
                                        </div>
                                    </a>
                                </div>
                                <div class="agileits_w3layouts_events_text">
                                    <h3>Gökhan PAT</h3>
                                    <p>Çekirdek Kuluçka Merkezi</p>
                                    <h6>Görüntü işleme kısmında bir uzmanı işe almak için yeterli bütçeyi ayıramadık ve alternatif ararken YAZZDIR çare olarak yetişti.</h6>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="agile_events_top_grid">
                                <div class="w3_agileits_evets_text_img">
                                    <a href="portfolio.html" class="lsb-preview" data-lsb-group="header">
                                        <div class="view view-eighth">
                                            <img src="images/1.jpg" alt=" " class="img-responsive" />
                                            <div class="mask">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                        <div class="agile_events_top_grid_pos">
                                            <img src="images/2.png" alt=" " class="img-responsive" />
                                        </div>
                                    </a>
                                </div>
                                <div class="agileits_w3layouts_events_text">
                                    <h3>Leyla CAN</h3>
                                    <p>Adil Finans Ltd, Ar-Ge Departmanı</p>
                                    <h6>İşe aldığımız her iş analisti kısa süreli çalışınca oryantasyon vermemek için tecrübeli eleman aradık. Yeterli bütçeye eleman bulamayınca outsource şirketi araştırırken YAZZDIR'ı keşfettik.</h6>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>



                <!--<div class="container">
			<h3 class="tittle_agile_w3">Our Skills</h3>
			<div class="heading-underline">
				<div class="h-u1"></div>
				<div class="h-u2"></div>
				<div class="h-u3"></div>
				<div class="clearfix"></div>
			</div>
			<div class="why-choose-agile-grids-top">
				<div class="col-md-6 skills_img_agile">
					<h4>Modern business Template</h4>
					<p>Lorem ipsum magna, vehicula ut.Curabitur nec purus eget urna pulvinar placerat. Integer varius est vitae iaculis suscipit.
						Integer sed rutrum lectus.Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit.</p>

					<div class="read">
						<a href="#" class="view resw3" data-toggle="modal" data-target="#myModal">Read More</a>
					</div>
				</div>
				<div class="col-md-6 services_bottom_grid_right">

					<div class='bar_group'>
						<div class='bar_group__bar thin elastic' label='Graphic Design' value='130'></div>
						<div class='bar_group__bar thin elastic' label='SEO' value='160'></div>
						<div class='bar_group__bar thin elastic' label='Web Development' value='180'></div>
						<div class='bar_group__bar thin elastic' label='Web Design' value='230'></div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>-->
            </div>
            <!-- choose-us -->
            <div class="why-choose-agile">
                <div class="container">
                    <h3 class="tittle_agile_w3 two">Özel Kategoriler</h3>
                    <div class="heading-underline">
                        <div class="h-u1"></div>
                        <div class="h-u2"></div>
                        <div class="h-u3"></div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="why-choose-agile-grids-top">
                        <div class="col-md-4 agileits-w3layouts-grid">
                            <div class="wthree_agile_us">
                                <div class="col-xs-3 agile-why-text">
                                    <div class="wthree_features_grid">
                                        <i class="fa fa-laptop" aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="col-xs-9 agile-why-text">
                                    <h4>Responsive Layout </h4>
                                    <p>Lorem ipsum magna, vehicula ut.</p>
                                </div>

                                <div class="clearfix"></div>
                            </div>
                            <div class="wthree_agile_us">
                                <div class="col-xs-3 agile-why-text">
                                    <div class="wthree_features_grid">
                                        <i class="fa fa-globe" aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="col-xs-9 agile-why-text">
                                    <h4>Web design</h4>
                                    <p>Lorem ipsum magna, vehicula ut.</p>
                                </div>

                                <div class="clearfix"></div>
                            </div>
                            <div class="wthree_agile_us">
                                <div class="col-xs-3 agile-why-text">
                                    <div class="wthree_features_grid">
                                        <i class="fa fa-life-ring" aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="col-xs-9 agile-why-text">
                                    <h4>Support 24x7 </h4>
                                    <p>Lorem ipsum magna, vehicula ut.</p>
                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="col-md-4 agileits-w3layouts-grid">
                            <div class="wthree_agile_us">
                                <div class="col-xs-3 agile-why-text">
                                    <div class="wthree_features_grid">
                                        <i class="fa fa-folder-open-o" aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="col-xs-9 agile-why-text">
                                    <h4>Easy Customization</h4>
                                    <p>Lorem ipsum magna, vehicula ut.</p>
                                </div>

                                <div class="clearfix"></div>
                            </div>
                            <div class="wthree_agile_us">
                                <div class="col-xs-3 agile-why-text">
                                    <div class="wthree_features_grid">
                                        <i class="fa fa-lightbulb-o" aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="col-xs-9 agile-why-text">
                                    <h4>Creative Design </h4>
                                    <p>Lorem ipsum magna, vehicula ut.</p>
                                </div>

                                <div class="clearfix"></div>
                            </div>
                            <div class="wthree_agile_us">
                                <div class="col-xs-3 agile-why-text">
                                    <div class="wthree_features_grid">
                                        <i class="fa fa-users" aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="col-xs-9 agile-why-text">
                                    <h4>Easy For Users</h4>
                                    <p>Lorem ipsum magna, vehicula ut.</p>
                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>

                        <div class="clearfix"></div>
                    </div>

                </div>
            </div>

            <!-- //choose-us -->

            <!-- News -->
            <div class="w3l-news-content events">
                <div class="container">
                    <h3 class="tittle_agile_w3">Latest News</h3>
                    <div class="heading-underline">
                        <div class="h-u1"></div>
                        <div class="h-u2"></div>
                        <div class="h-u3"></div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="w3l-news_info_agile_its">
                        <div class="col-md-6 w3l-news">
                            <div class="media response-info">
                                <div class="media-left response-text-left">
                                    <a href="#" data-toggle="modal" data-target="#myModal">
                                        <img class="media-object" src="images/n1.jpg" alt="">
                                    </a>
                                </div>
                                <div class="media-body response-text-right">
                                    <h5>Conse ctetur adipisi</h5>
                                    <ul>
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i>May 11, 2017</li>
                                        <li><i class="fa fa-users" aria-hidden="true"></i>Followers : 7685</li>
                                    </ul>
                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum Lorem ipsum.</p>
                                    <div class="read">
                                        <a href="single.html" class="view resw3">Read More</a>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="media response-info">
                                <div class="media-left response-text-left">
                                    <a href="#" data-toggle="modal" data-target="#myModal">
                                        <img class="media-object" src="images/n2.jpg" alt="">
                                    </a>
                                </div>
                                <div class="media-body response-text-right">
                                    <h5>Dolor sit amet</h5>
                                    <ul>
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i>May 15, 2017</li>
                                        <li><i class="fa fa-users" aria-hidden="true"></i>Followers : 2546</li>
                                    </ul>
                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum Lorem ipsum.</p>
                                    <div class="read">
                                        <a href="single.html" class="view resw3">Read More</a>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="media response-info">
                                <div class="media-left response-text-left">
                                    <a href="#" data-toggle="modal" data-target="#myModal">
                                        <img class="media-object" src="images/n3.jpg" alt="">
                                    </a>
                                </div>
                                <div class="media-body response-text-right">
                                    <h5>Sit Lorem ipsum</h5>
                                    <ul>
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i>May 17, 2017</li>
                                        <li><i class="fa fa-users" aria-hidden="true"></i>Followers : 7485</li>
                                    </ul>
                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum Lorem ipsum.</p>
                                    <div class="read">
                                        <a href="single.html" class="view resw3">Read More</a>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="col-md-6 wthree_events_grid_right">
                            <div class="wthree_events_grid_right1">
                                <h3>News Letter</h3>
                                <p>Never Miss Any Update From Us!</p>
                                <div class="w3layouts_newsletter_right">
                                    
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!-- Modal1 -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4>Treasurer</h4>
                            <img src="images/banner2.jpg" alt="blog-image" />
                            <span>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem , eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.accusantium doloremque laudantium, totam rem aperiamconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span>
                        </div>

                    </div>
                </div>
            </div>
            <!-- //Modal1 -->
            <!-- //News -->
            <!-- events-top -->
            <div class="events-top">
                <ul id="flexiselDemo1">
                    <li>
                        <div class="agile_events_top_grid">
                            <div class="w3_agileits_evets_text_img">
                                <a href="images/4.jpg" class="lsb-preview" data-lsb-group="header">
                                    <div class="view view-eighth">
                                        <img src="images/4.jpg" alt=" " class="img-responsive" />
                                        <div class="mask">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="agile_events_top_grid_pos">
                                        <img src="images/1.png" alt=" " class="img-responsive" />
                                    </div>
                                </a>
                            </div>
                            <div class="agileits_w3layouts_events_text">
                                <h3>Richard Carl</h3>
                                <p>Client</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="agile_events_top_grid">
                            <div class="w3_agileits_evets_text_img">
                                <a href="portfolio.html" class="lsb-preview" data-lsb-group="header">
                                    <div class="view view-eighth">
                                        <img src="images/7.jpg" alt=" " class="img-responsive" />
                                        <div class="mask">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="agile_events_top_grid_pos">
                                        <img src="images/3.png" alt=" " class="img-responsive" />
                                    </div>
                                </a>
                            </div>
                            <div class="agileits_w3layouts_events_text">
                                <h3>Michael Crisp</h3>
                                <p>Client</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="agile_events_top_grid">
                            <div class="w3_agileits_evets_text_img">
                                <a href="portfolio.html" class="lsb-preview" data-lsb-group="header">
                                    <div class="view view-eighth">
                                        <img src="images/6.jpg" alt=" " class="img-responsive" />
                                        <div class="mask">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="agile_events_top_grid_pos">
                                        <img src="images/2.png" alt=" " class="img-responsive" />
                                    </div>
                                </a>
                            </div>
                            <div class="agileits_w3layouts_events_text">
                                <h3>Adam Lii</h3>
                                <p>Client</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="agile_events_top_grid">
                            <div class="w3_agileits_evets_text_img">
                                <a href="portfolio.html" class="lsb-preview" data-lsb-group="header">
                                    <div class="view view-eighth">
                                        <img src="images/5.jpg" alt=" " class="img-responsive" />
                                        <div class="mask">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="agile_events_top_grid_pos">
                                        <img src="images/4.png" alt=" " class="img-responsive" />
                                    </div>
                                </a>
                            </div>
                            <div class="agileits_w3layouts_events_text">
                                <h3>Thomas Paul</h3>
                                <p>Client</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="agile_events_top_grid">
                            <div class="w3_agileits_evets_text_img">
                                <a href="portfolio.html" class="lsb-preview" data-lsb-group="header">
                                    <div class="view view-eighth">
                                        <img src="images/1.jpg" alt=" " class="img-responsive" />
                                        <div class="mask">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="agile_events_top_grid_pos">
                                        <img src="images/2.png" alt=" " class="img-responsive" />
                                    </div>
                                </a>
                            </div>
                            <div class="agileits_w3layouts_events_text">
                                <h3>Adam Lii</h3>
                                <p>Client</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- //events-top -->


            <!-- bootstrap-pop-up -->
            <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            Treasurer
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <section>
                            <div class="modal-body">
                                <div class="col-md-6 w3_modal_body_left">
                                    <img src="images/2.jpg" alt=" " class="img-responsive" />
                                </div>
                                <div class="col-md-6 w3_modal_body_right">
                                    <p>
                                        Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
								consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.
								<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i>
                                    </p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
            <!-- //bootstrap-pop-up -->
            <!-- subscribe -->
            <div class="w3layouts_bottom">
                <div class="container">
                    <div class="col-md-9 w3layouts_getin_info">
                        <h3>Are Looking for Business Solutions ?</h3>
                    </div>
                    <div class="col-md-3 w3layouts_getin">
                                           </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- //subscribe -->
            <!-- footer -->
            <div class="footer">
                <div class="container">
                    <div class="w3_agile_footer_grids">
                        <div class="col-md-4 w3_agile_footer_grid">
                            <h3>Latest Tweets</h3>
                            <ul class="agile_footer_grid_list">
                                <li><i class="fa fa-twitter" aria-hidden="true"></i>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil
							impedit. <span>1 day ago</span></li>
                                <li><i class="fa fa-twitter" aria-hidden="true"></i>Itaque earum rerum hic tenetur a sapiente delectus <a href="mailto:info@mail.com">info@mail.com</a>							cumque nihil impedit. <span>2 days ago</span></li>
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
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
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
                            <p>
                                <a href="mailto:info@example.com">info@example1.com</a>
                                <span><a href="mailto:info@example.com">info@example2.com</a></span>
                            </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="agileinfo_copyright">
                        <p>© 2017 Treasurer. All Rights Reserved | Design by <a href="https://w3layouts.com/">W3layouts</a></p>
                    </div>
                </div>
       
    </div>
        </form>
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
				document.getElementById("password2").setCustomValidity("Şifreler uyuşmuyor.");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>



    <!-- Yönlendirme scripti-->
    <script language="C#" runat="server">
        public void furkan(object sender,EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Merhaba ben çalıştım.')", true);
        }


    </script>








	<script src="js/bars.js"></script>

	<script type="text/javascript" src="js/jquery.slicebox.js"></script>

	<script type="text/javascript">
		$(function () {

			var Page = (function () {

				var $navArrows = $('#nav-arrows').hide(),
					$navDots = $('#nav-dots').hide(),
					$nav = $navDots.children('span'),
					$shadow = $('#shadow').hide(),
					slicebox = $('#sb-slider').slicebox({
						onReady: function () {

							$navArrows.show();
							$navDots.show();
							$shadow.show();

						},
						onBeforeChange: function (pos) {

							$nav.removeClass('nav-dot-current');
							$nav.eq(pos).addClass('nav-dot-current');

						}
					}),

					init = function () {

						initEvents();

					},
					initEvents = function () {

						// add navigation events
						$navArrows.children(':first').on('click', function () {

							slicebox.next();
							return false;

						});

						$navArrows.children(':last').on('click', function () {

							slicebox.previous();
							return false;

						});

						$nav.each(function (i) {

							$(this).on('click', function (event) {

								var $dot = $(this);

								if (!slicebox.isActive()) {

									$nav.removeClass('nav-dot-current');
									$dot.addClass('nav-dot-current');

								}

								slicebox.jump(i + 1);
								return false;

							});

						});

					};

				return {
					init: init
				};

			})();

			Page.init();

		});
	</script>
	<!-- Stats -->
	<script src="js/waypoints.min.js"></script>
	<script src="js/counterup.min.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$('.counter').counterUp({
				delay: 10,
				time: 2000
			});
		});
	</script>
	<!-- //Stats -->

	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	<!-- flexisel -->
	<script type="text/javascript">
		$(window).load(function () {
			$("#flexiselDemo1").flexisel({
				visibleItems: 4,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint: 480,
						visibleItems: 1
					},
					landscape: {
						changePoint: 640,
						visibleItems: 2
					},
					tablet: {
						changePoint: 768,
						visibleItems: 2
					}
				}
			});

		});
	</script>
	<!-- //flexisel -->
	<!-- //flexisel -->
	<!-- js for portfolio lightbox -->
	<script src="js/jquery.chocolat.js "></script>
	<!-- //menu -->
	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function () {
			
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
</body>

</html>
