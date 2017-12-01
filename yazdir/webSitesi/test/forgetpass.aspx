<%@ Page Language="C#" AutoEventWireup="true" enableEventValidation="false" CodeBehind="forgetpass.aspx.cs" Inherits="yazdir.webSitesi.test.forgetpass" %>




<!DOCTYPE html>
<%--xmlns="http://www.w3.org/1999/xhtml"--%>
<html >
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



</head>
<body>
    <script src="vendors/jquery-1.9.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="vendors/easypiechart/jquery.easy-pie-chart.js"></script>
<script src="assets/scripts.js"></script>

     <script type ="text/jscript"  language="javascript">

     function ac() { $('#modal').modal('show');}

</script>


    <form id="form1" runat="server">
    <div>

         <%-- **************************************************************************************************--%>

          <div class="modal fade" id="modal" tabindex="-1" role="dialog">
                 
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                           <%-- <button type="button" class="close" data-dismiss="modal">&times;</button>--%>

                            <div class="signin-form profile">
                                <h3 class="agileinfo_sign">Şifre Değiştir</h3>
                                <div class="login-form">
                                    </div>

                                        
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



<%--***********************************************************************************************************************************************--%>
 
    
        <div class="agileits_top_menu">
   <div class="w3l_header_left">
<%--				<ul>
					<li><i class="fa fa-map-marker" aria-hidden="true"></i> 1143 New York, USA</li>
					<li><i class="fa fa-phone" aria-hidden="true"></i> +(010) 221 918 811</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@example.com">info@example.com</a></li>
				</ul>--%>
         <b>Şifremi Unuttum ?</b>  
			</div>
			<div class="w3l_header_right">
				<div class="w3ls-social-icons text-left">
					<%--<a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
					<a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
					<a class="pinterest" href="#"><i class="fa fa-pinterest-p"></i></a>
					<a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>--%>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
<%--*************************************************************************************************************************************--%>
        <div class="jumbotron text-center">
  <h2>YAZZDIR</h2>
  <p></p> 
</div>
  
<div class="container">
  <div class="row">
    <div class="col-sm-3">
      <%--<h3>Column 1</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>--%>
    </div>
    <div class="col-sm-6">
      <h3>mail adresi</h3>
        <input type="email" id="eMail" class="form-control" runat="server" name="eMail" placeholder="" required="" disabled>
        <h3>Telefon Numarası</h3>
        <input type="text" id="tlf" class="form-control" runat="server" name="tlf" placeholder="" required="" >
        <h3>TC Kimlik</h3>
        <input type="text" id="tc" class="form-control" runat="server" name="tc" placeholder="" required="" >
        <h3>Hatırladığınız son şifreniz</h3>
        <input type="password" id="lastpass" class="form-control" runat="server" name="lastpass" placeholder="" required="" >

        <h3>Gizli Soru</h3>
        <input type="text" id="secretQ" class="form-control" runat="server" name="secretQ" placeholder="" required="" disabled>

        <h3>Gizli Cevap</h3>
        <input type="password" id="secretA" class="form-control" runat="server" name="secretA" placeholder="" required="" >
        
        

         <br />
     
       <%-- <asp:Button ID="changepas" class="btn btn-primary" UseSubmitBehavior="false" runat="server" Text="DEVAM"  />--%>
        <%--<asp:Button ID="Button1" runat="server" Text="Button" OnClick="changepass"/>--%>
        <asp:Button ID="control" runat="server" UseSubmitBehavior="false" onclick="changepass" Text="Kontrol Et" />

    </div>
     <%-- ***************************************************************************************************************--%>
    <div class="col-sm-3">
     <%-- <h3>Column 3</h3>        
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>--%>
    </div>




  </div>
</div>
         </div>
    </form>
  

   <style>

       #changePasswordButton {
           outline: none;
           padding: 0.8em 0;
           width: 100%;
           text-align: center;
           font-size: 1em;
           margin-top: 1em;
           border: none;
           color: #FFFFFF;
           text-transform: uppercase;
           cursor: pointer;
           background: #a80057;
           box-shadow: 0px 2px 1px rgba(28, 28, 29, 0.42);
       }

       #changePasswordButton.hover{
             color: #fff;
       background: #000;
    transition: .5s all;
	-webkit-transition: .5s all;
    -moz-transition: .5s all;
    -o-transition: .5s all;
    -ms-transition: .5s all;
       }


        #control{
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
         #control:hover
    {
          color: #fff;
       background: #000;
    transition: .5s all;
	-webkit-transition: .5s all;
    -moz-transition: .5s all;
    -o-transition: .5s all;
    -ms-transition: .5s all;
    }


   </style>
</body>
</html>
