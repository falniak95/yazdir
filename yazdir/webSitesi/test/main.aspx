        <%@ Page Language="C#" AutoEventWireup="true" enableEventValidation="false" CodeBehind="main.aspx.cs" Inherits="yazdir.webSitesi.test.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>YAZZDIR E-Ticaret</title>
  
       <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<meta name="keywords" content="Treasurer Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/blog.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/single.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href="//fonts.googleapis.com/css?family=Raleway:100i,200,200i,300,400,500,500i,600,700,700i,800,800i" rel="stylesheet">



    <script type ="text/jscript"  language="javascript">

        function openModal() { $('#ilkGirisModal').modal('show'); false }
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
    <form id="form1" runat="server">
    <div>
    
<div class="agileits_top_menu">
    
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
				<h1><a class="navbar-brand" href="anaSayfa.aspx"><img src="images/logocuk.png" /></a></h1>


				</div>


			    <ul class="agile_forms">

                      
                    <li class="dropdown">
						 <a href="#" class="dropdown-toggle hvr-underline-from-center" data-toggle="dropdown">mesajlar <b class="fa fa-caret-down"></b></a>
          		




								<ul class="dropdown-menu agile_short_dropdown">
                                    <li><a style="" href="icons.html">yeni mesaj</a></li>
									<li><a href="icons.html">Gelen kutusu</a></li>
									<li><a href="typography.html">Giden kutusu</a></li>
								</ul>
							</li>
					<%--<li><a class="active" runat="server" id="ozluk" href="#" data-toggle="dropdown" data-target="#editorEkle2">profil</a> </li>
                   --%>

                   <%-- <li><a ID="changePassword" runat="server" data-toggle="modal" data-target="#changepass" Text="Şifre Değiştir" </a></li>--%>
                     <li><a class="active" href="#" data-toggle="modal" data-target="#modalSifre">Şifre </a></li>
                     <li><a class="active" href="#" data-toggle="modal" data-target="#bnmModal" >profil </a></li>

					<li><a href="#" data-toggle="modal" data-target="#myModal3">Çıkış</a> </li>
				</ul>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<%--<nav>
                        gereksiz

						<ul class="nav navbar-nav">
							<li><a href="index.html" class="hvr-underline-from-center">Home</a></li>
							<li><a href="about.html" class="hvr-underline-from-center">About</a></li>
							<li><a href="portfolio.html" class="hvr-underline-from-center">Portfolio</a></li>
							<li><a href="blog.html" class="hvr-underline-from-center">Blog</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle hvr-underline-from-center" data-toggle="">Short Codes <b class="fa fa-caret-down"></b></a>
								<ul class="dropdown-menu agile_short_dropdown">
									<li><a href="icons.html">Web Icons</a></li>
									<li><a href="typography.html">Typography</a></li>
								</ul>
							</li>
							<li><a href="contact.html" class="hvr-underline-from-center">Contact</a></li>
						</ul>
					</nav>--%>

				</div>
			</nav>		
	  <div class="clearfix"> </div> 
    </div> 
        <!------------------------------------------------------------------------------------------------------------------>
         <div class="modal fade" id="modalSifre" tabindex="-1" role="dialog">
                 
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
                                        <input type="password" id="eskiSifre" runat="server" name="eskiSifre" placeholder="" required="">
                                        <a style="padding-right:100%">Yeni Şifre </a>        
                                        <input type="password" id="newPassword" runat="server" name="newPassword" placeholder="" required="">
                                        <a style="padding-right:100%">Yeni Şifre Tekrar </a>
                                        <input type="password" id="newPasswordAgain" runat="server" name="newPasswordAgain" placeholder="" required="">
                                        
                                <asp:Button ID="changePasswordButton" runat="server" UseSubmitBehavior="false" OnClick="changePassword" Text="Değistir" />
                              

                               

                               
                              

                                </div>

                           
                                
                            </div>

                        </div>

                    </div> 

                </div>
        <!------------------------------------------------------------------------------------------------------------------>
        <div class="modal fade" id="bnmModal" tabindex="-1" role="dialog">
                 
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                           <%-- <button type="button" class="close" data-dismiss="modal">&times;</button>--%>

                            <div class="signin-form profile">
                                <h3 class="agileinfo_sign">Profil Bilgileri</h3>
                                <div class="login-form">
                                    </div>

                                <a style="padding-right:100%">Ad </a>
                                        <input type="text" id="name" runat="server" name="name" placeholder="" required="" disabled >
                                    

                                <a style="padding-right:100%">Soyad </a>
                                        <input type="text" id="surname" runat="server" name="Surname" placeholder="" required="" disabled>


                                <a style="padding-right:100%">Kullanıcı Adı </a>
                                        <input type="text" id="username" runat="server" name="username" placeholder="" required="" disabled>


                                <a style="padding-right:100%">Cinsiyet </a>
                                        <input type="text" id="gender" runat="server" name="gender" maxlength="11" placeholder="" required="" disabled>


                                <a style="padding-right:100%">Telefon Numarası </a>
                                        <input type="text" id="mobilPhone" runat="server" name="mobilPhone" maxlength="11" placeholder="" required="">


                                <a style="padding-right:100%">Mail Adresi </a>
                                        <input type="text" id="eMail" runat="server" name="eMail" placeholder="" required="" disabled>


                                <a style="padding-right:100%">Hesap Numarası </a>
                                        <input type="text" id="account" runat="server" name="account"  placeholder="" required="" maxlength="20">


                                <a style="padding-right:100%">Doğum Tarihi </a>
                                        <input type="text" id="birthDay" runat="server" name="birthDay"  placeholder="" required="" disabled>


                                <a style="padding-right:100%">Meslek</a>
                                        <input type="text" id="jobInfo" runat="server" name="jobInfo"  placeholder="" >


                               
                                       <asp:Button ID="updateInfo" runat="server" UseSubmitBehavior="false" onclick="upd" Text="Güncelle" />
                                       
                                </div>

                           
                                
                            </div>

                        </div>

                    </div> 

                </div>
        <!------------------------------------------------------------------------------------------------------------------>
               

   <div class="modal fade" id="ilkGirisModal" tabindex="-1" role="dialog">
                 
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                           <%-- <button type="button" class="close" data-dismiss="modal">&times;</button>--%>

                            <div class="signin-form profile">
                                <h3 class="agileinfo_sign">Girilmesi Zorunlu Alanlar</h3>
                                <div class="login-form">
                                    </div>

                                        <a style="padding-right:100%"> Telefon Numarası </a>
                                        <input type="text" id="mobileNo" runat="server" name="mobileNo" placeholder="" required="">
                                        <a style="padding-right:100%"> TC Kimlik No </a>        
                                        <input type="text" id="identityNo" runat="server" name="identityNo" maxlength="11" placeholder="" required="">
                                        <a style="padding-right:100%">Hesap Numarası </a>
                                        <input type="text" id="accountNumber" runat="server" name="accountNumber" maxlength="20" placeholder="" required="">
                                        <a style="padding-right:100%">Meslek </a>
                                       <input type="text" id="job" runat="server" name="job" maxlength="20" placeholder="" required="">
                                        <br />
                                        <a>Cinsiyet: </a>
                                        <input style="padding-right:100%" type="radio" id="g1" runat="server" name="gender" value="Erkek">Erkek</input>  
                               
                                        <input style="padding-right:100%" type="radio" id="g2" runat="server" name="gender" value="Kadın">Kadın</input>
                                        <br />
                                        <br />
                                        <br />
                                        <a>Doğum Tarihi:  </a>
                                        <input type="date" id="birthDate" runat="server" name="birthDate" min="01-01-1900" />

                                        <asp:Button ID="submitChanges" runat="server" UseSubmitBehavior="false" OnClick="updateInformation" Text="Değişiklikleri Kaydet" />
                               
                                
                                

                                 <%--<li><a href="#" id="kazanmayaBaslaTab" runat="server" >Kazanmaya Başla</a> </li>--%>

                               
                              

                                </div>

                           
                                
                            </div>

                        </div>

                    </div> 

                </div>
                  <!--------------------------------------------------------------------------->
  

        <!---------------------------------------------------------------------------------------------->
        <div class="container">



            <!-- burdan itibaren-->
                     
        
<!-- buraya kadar silmem gerekebilir-->












            <div class="row">
                <div class="col-md-5">
        <div class="categories w3ls-categories"  style="width:100%" >
						<h3 id="selamlama" runat="server">Merhaba! </h3>
						<ul>
                            <li><i aria-hidden="true"></i>Sisteme Hoşgeldin!</li>
						</ul>
          <br />  <asp:Button ID="AlinmisIsler" OnClick="AlinmisIsler_Click" UseSubmitBehavior="false" CssClass="btn bg-primary" runat="server" Text="Alınmış İşleri Görüntüle" />
		</div>
       </div>
                   <div class="col-md-5" style="align-content:initial">
              <div class="categories w3ls-categories" style="height:100%" > <!-- Burayı istediğin kadar büyüt içeriği koyduktan sonra.-->
						Slayt buraya gelecek
		</div>
                    </div>
                </div>
      
            <div class="row" id="duvarVeHaber">
                <div class="col-md-1">
                    <!-- Arama Kriterleri -->

                </div>
                <div class="col-md-9">
                    <!-- Duvar burada yer alacak. -->
                    
            <!--Tablo dursun         <div class="row">
   
    <div class="col-md-4">
      One of three columns
    </div>
    
    <div class="col-md-4">
      One of three columns
    </div>
    
    <div class="col-md-4">
      One of three columns
    </div>
    
  </div>    -->
                    <br />
                    <br />
                    <asp:Panel ID="DinamikPanel" runat="server" style="width:100%">
              

                   <%-- <div class="wrapper">
  
  <div class="tablo">
    
    <div class="satir header">
      <div class="cell">
        Name
      </div>
      <div class="cell">
        Age
      </div>
      <div class="cell">
        Occupation
      </div>
      <div class="cell">
        Location
      </div>
    </div>
    
    <div class="satir">
      <div class="cell">
        Luke Peters
      </div>
      <div class="cell">
        25
      </div>
      <div class="cell">
        Freelance Web Developer
      </div>
      <div class="cell">
        Brookline, MA
      </div>
    </div>
    
    <div class="satir">
      <div class="cell">
        Joseph Smith
      </div>
      <div class="cell">
        27
      </div>
      <div class="cell">
        Project Manager
      </div>
      <div class="cell">
        Somerville, MA
      </div>
    </div>
    
    <div class="satir">
      <div class="cell">
        Maxwell Johnson
      </div>
      <div class="cell">
        26
      </div>
      <div class="cell">
        UX Architect & Designer
      </div>
      <div class="cell">
        Arlington, MA
      </div>
    </div>
    
    <div class="satir">
      <div class="cell">
        Harry Harrison
      </div>
      <div class="cell">
        25
      </div>
      <div class="cell">
        Front-End Developer
      </div>
      <div class="cell">
        Boston, MA
      </div>
    </div>
    
  </div>
  </div>--%>

  </asp:Panel>
                    </div>
                <div class="col-md-2" style="width:20px">
                    buraya haber gelecek
                    <!-- Haberler burada yer alacak -->
                    </div>

            </div>















  </div><!-- Conatiner div bitişi -->


    </div>
    </form>

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

</body>
</html>


