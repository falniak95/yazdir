﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createAd.aspx.cs" Inherits="yazdir.webSitesi.test.createAd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>YAZZDIR E-Ticaret</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Treasurer Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/slicebox.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href="//fonts.googleapis.com/css?family=Raleway:100i,200,200i,300,400,500,500i,600,700,700i,800,800i" rel="stylesheet">

</head>
<body>
  <form id="form1" runat="server">


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

				<!-- Collect the nav links, forms, and other content for toggling -->

			</nav>	
			
	<div class="clearfix"> </div> 
</div> 
													
	<!-- /agile_inner_banner_info -->													
							<div class="agile_inner_banner_info">
							   <h2>YAZZDIR </h2>
							   <p>İlan Olıuştur</p>
							</div>
					<!-- //agile_inner_banner_info -->
<!-- events-top -->
	<div class="services">
	   <!-- Buraya koyacaz --><center>
       İlan Başlığı:<p><asp:TextBox ID="ilanBaslik" runat="server"></asp:TextBox></p> <br />
       İlan İçeriği:<p><asp:TextBox ID="ilanIcerik" TextMode="MultiLine" runat="server"></asp:TextBox></p> <br />
       İlan Ücret:<p><asp:TextBox ID="ilanUcret" onkeypress="return isNumberKey(event)" runat="server"></asp:TextBox></p> <br />
       İlan Seviyesi:<p><asp:DropDownList ID="ilanZorluk" runat="server">
            <asp:listitem value="1">Amatör</asp:listitem>
             <asp:listitem value="2">Yarı Amatör</asp:listitem>
           <asp:listitem value="3">Tecrübeli</asp:listitem>
           <asp:listitem value="4">Yarı Profesyonel</asp:listitem>
           <asp:listitem value="5">Profesyonel</asp:listitem>
                    </asp:DropDownList></p> <br />
           Kontrat Belgesi Ekleyin:<p><asp:FileUpload ID="uploadKontrat" runat="server"></asp:FileUpload></p> <br />
           İlan İş Türü Seçiniz:<p><asp:DropDownList ID="ilanTuru" runat="server">
               <asp:listitem value="test">Test</asp:listitem>
                                   </asp:DropDownList></p> <br />
           İlan DeadLine Limiti Belirtiniz:<p><asp:TextBox ID="ilanLimit" onkeypress="return isNumberKey(event)" runat="server"></asp:TextBox></p> <br />
           
           <br /><br />
           <asp:Button ID="createAdButton" runat="server" OnClick="createAdButton_Click" Text="İlan Oluştur."></asp:Button>
           </center>
</div>
<!-- //events-top -->
<!-- footer -->
	<div class="footer" style="color:white">
	<center>	FURKAN ALNIAK 14545548 <br />
        KAHRAMAN ÇINAR 13542524<br />
        E-TİCARET<br />
        YAZZDIR<br />
        </center>
	</div>
<!-- //footer -->
<!-- menu -->
<!-- js -->

       <SCRIPT language=Javascript>
      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : evt.keyCode;
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;    
         return true;
      }
   </SCRIPT>

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/modernizr.custom.46884.js"></script>
<!-- //js -->
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

<!-- //flexisel -->
	<!-- js for portfolio lightbox -->
	<script src="js/jquery.chocolat.js "></script>
	<link rel="stylesheet " href="css/chocolat.css " type="text/css " media="screen ">
	<!--light-box-files -->
	<script type="text/javascript ">
		$(function () {
			$('.w3_agileits_evets_text_img a').Chocolat();
		});
	</script>
	<!-- /js for portfolio lightbox -->
<!-- //menu -->
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
    </form>
</body>
</html>
