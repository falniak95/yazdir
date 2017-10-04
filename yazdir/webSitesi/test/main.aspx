<%@ Page Language="C#" AutoEventWireup="true" enableEventValidation="false" CodeBehind="main.aspx.cs" Inherits="yazdir.webSitesi.test.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>YAZZDIR E-Ticaret</title>

    <meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
								<a href="#" class="dropdown-toggle hvr-underline-from-center" data-toggle="dropdown">Short Codes <b class="fa fa-caret-down"></b></a>
								<ul class="dropdown-menu agile_short_dropdown">
									<li><a href="icons.html">Web Icons</a></li>
									<li><a href="typography.html">Typography</a></li>
								</ul>
							</li>
					<li><a class="active" href="#" data-toggle="modal" data-target="#myModal2"> Sign In</a> </li>
					<li><a href="#" data-toggle="modal" data-target="#myModal3"> Sign Up</a> </li>
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
        <div class="container">
            <div class="row">
                <div class="col-md-5">
        <div class="categories w3ls-categories" >
						<h3 id="selamlama" runat="server">Merhaba! </h3>
						<ul>
                            <li><i aria-hidden="true"></i>At vero eos et accusamus iusto</li>
						</ul>
		</div>
       </div>
                     <div class="col-md-7" style="align-content:initial">
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
  background: #ea6153;
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


