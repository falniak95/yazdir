﻿<%@ Page Language="C#" AutoEventWireup="true" enableEventValidation="false" CodeBehind="inBox.aspx.cs" Inherits="yazdir.webSitesi.test.inBox" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mesaj Görüntüle</title>

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

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/blog.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/single.css" rel="stylesheet" type="text/css" media="all" />

<link href="css/font-awesome.css" rel="stylesheet"> 

<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href="//fonts.googleapis.com/css?family=Raleway:100i,200,200i,300,400,500,500i,600,700,700i,800,800i" rel="stylesheet">


</head>

    
<body>
    <script src="vendors/jquery-1.9.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="vendors/easypiechart/jquery.easy-pie-chart.js"></script>
<script src="assets/scripts.js"></script>
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

</div>

<br />
<br />
<br />
 <div class="container">


     <div class="row">
                <div class="col-md-5">
       
       </div>
                     <div class="col-md-7" style="align-content:initial">
              
                    </div>
                </div>
      
            <div class="row" id="duvarVeHaber">
                <div class="col-md-1">
                    <!-- Arama Kriterleri -->

                </div>
                <div class="col-md-9">
      <div class="w3-panel w3-blue w3-round-xlarge">
                                 <asp:Label ID="ilan" runat="server" Text="Mesajlar">
                          </asp:Label>
                             </div>
                 <asp:Repeater ID="liste" runat="server"  >
                      <ItemTemplate>
                         <div class="col-md-11">
                      <b>Gönderici:       <asp:Label ID="Label3" runat="server" Text='<%#Eval("messageSenderName")%>'></asp:Label></b><br />
                     <b>Mesaj Başlığı:</b>        <asp:Label ID="Label2" runat="server" Text='<%# Eval("messageHeader") %>'></asp:Label><br />
                      <b>Mesaj İçeriği</b>       <asp:Label ID="Label4" runat="server" Text='<%#Eval("messageContent")%>'></asp:Label><br /><br />

                          <p>---------------------------------------------------------------------------------------------</p><br />
                          
                      </ItemTemplate>

                  </asp:Repeater>
                    
                    <br /><br />
                 <%--   <asp:Panel ID="DinamikPanel" runat="server" style="width:100%"></asp:Panel>
                    </div>--%>
               

            </div>
                <div class="col-md-2">
                    <!-- Arama Kriterleri -->

                </div>


    </div>



    </div>



<%--<div class="footer" style="color:white">
	FURKAN ALNIAK 14545548 <br />
        KAHRAMAN ÇINAR 13542524<br />
        E-TİCARET<br />
        YAZZDIR<br />
    
	</div>--%>

    </form>
</body>

</html>
