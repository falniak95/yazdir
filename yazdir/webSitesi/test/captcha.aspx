<%@ Page Language="C#" AutoEventWireup="true" enableEventValidation="false" CodeBehind="captcha.aspx.cs" Inherits="yazdir.webSitesi.test.captcha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ÜYE OL</title>

    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

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
    <form id="form1" runat="server">
    


        <div class=" container">
            <div class="row">
                 <div class="col-md-12">
    
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <h1><a class="navbar-brand" href="anaSayfa.aspx"><i>
                            <img src="images/logocuk.png" /></i> </a></h1>

                    </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                   
                </div>
                <div class="col-md-4">

                 <div class="login-form">
                     <h3 class="agileinfo_sign">Üye OL</h3>

                     
                                    <input type="text" runat="server" id="kAdi" name="userName" placeholder="Kullanıcı Adı" class="form-control" required=""><br />
                                    <input type="email" runat="server" id="mail" name="email" placeholder="E-mail" class="form-control" required=""><br />
                                    <input type="text" class="form-control" runat="server" id="name" name="name" placeholder="İsim" required=""><br />
                                    <input type="text" class="form-control" runat="server" id="surname" name="surname" placeholder="Soyisim" required=""><br />
                                    <input type="password" class="form-control" runat="server" name="password" id="password1" placeholder="Şifre" required=""><br />
                                    <input type="password" class="form-control" runat="server" name="password" id="password2" placeholder="Şifre Tekrarı" required=""><br />
                                    
                                    
                     <img src="images/captcha.png" alt="sayi" title="sayi" />
                     <br />
                     <br />
                     
                     <input type="text" runat="server" id="cap1" name="us" placeholder="Yukardaki Kodu Giriniz" class="form-control" required=""><br />
                                   
                     
                       <div class="btnKayit" >
                                      <asp:Button ID="RegisterPageButton" runat="server" UseSubmitBehavior="false" Text="Tamamla!" OnClick="registerNow"  />
                                    </div>
                                    
                                     </div>


                </div>
                <div class="col-md-6"></div>

            </div>
        </div>




    </div>
    </form>

    <style>
#RegisterPageButton{

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
    background: #00a98f;
    box-shadow: 0px 2px 1px rgba(28, 28, 29, 0.42);

}

#RegisterPageButton:hover {
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
