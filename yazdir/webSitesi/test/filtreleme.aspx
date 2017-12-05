<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="filtreleme.aspx.cs" Inherits="yazdir.webSitesi.test.filtreleme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
   <form id="form2" runat="server">


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
							   <h2>filtre</h2>

</div>
  
    <div>
       <%-- *******************************************************************************************--%>

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
                                 <asp:Label ID="ilan" runat="server" Text="İLANLAR">
                          </asp:Label>
          <asp:TextBox ID="TextBox1" style="color:cornflowerblue" placeholder="ARA" runat="server" ></asp:TextBox>
          <asp:Button class="w3-button w3-black" ID="deleteAd" ToolTip='<%# Eval("id") %>' runat="server" Text="ARA"  OnClick="ara"></asp:Button>  
          <asp:Button class="w3-button w3-black" ID="Button1" ToolTip='<%# Eval("id") %>' runat="server" Text="Filtreyi Kaldır"  OnClick="ıptal"></asp:Button>
                             </div>
                 <asp:Repeater ID="liste" runat="server" OnItemCommand="liste_ItemCommand" >
                      <ItemTemplate>
                         <div class="col-md-11">

                             
                            <br />
                              
                                 
                             <div class="w3-panel w3-red">
                                  <asp:Label ID="konu" runat="server"  Text="KONU:">
                        </asp:Label>
                                 <br />
                                      <asp:label ID="konuT" runat="server"  style="color:black" Text='<%#Eval("ad_header")%>'>
                          </asp:label>
                                 <br />
                                 <asp:Label ID="acıklama" runat="server"  Text="Açıklama:">
                        </asp:Label>
                                 <br />
                           <asp:label ID="acıklamaT" runat="server" style="color:black" Text='<%#Eval("ad_content")%>'>
                        </asp:label>
                                 <br />
                                 <asp:Label ID="fiyat" runat="server"  Text="Fiyat:">
                        </asp:Label>
                                 <br />
                             <asp:label ID="fiyatT" runat="server" style="color:black" Text='<%#Eval("ad_price")+"tl"%>'>
                          </asp:label>
                                 <br />
                                 <asp:Label ID="isTürü" runat="server"  Text="iş Türü:">
                        </asp:Label>
                                 <br />
                                 <asp:label ID="isTürüT" runat="server" style="color:black" Text='<%#Eval("ad_jobType")%>'>
                          </asp:label>
                                 <br />
                                 <asp:Label ID="Tarih" runat="server"  Text="Tarih:">
                        </asp:Label>
                                 <br />
                                 <asp:label ID="TarihT" runat="server" style="color:black" Text='<%#Eval("ad_date")%>'>
                          </asp:label>

                                      <%-- <asp:Label ID="Label4" runat="server" Text='<%#Eval("ad_date")%>'>
                          </asp:Label>--%>
                          </div>
                          </div>
                           <%--<asp:Label ID="Label1" runat="server" Text=" kahramansssssssssssssssssssssssssssssss">
                          </asp:Label>--%>
                          
                          
                      </ItemTemplate>

                  </asp:Repeater>
                    
                    
                 <%--   <asp:Panel ID="DinamikPanel" runat="server" style="width:100%"></asp:Panel>
                    </div>--%>
               

            </div>
                <div class="col-md-2">
                    <!-- Arama Kriterleri -->

                </div>


    </div>



    </div>

        <%--*********************************************************************************************--%>
    
    </div>

       <div class="footer" style="color:white">
	<center>	FURKAN ALNIAK 14545548 <br />
        KAHRAMAN ÇINAR 13542524<br />
        E-TİCARET<br />
        YAZZDIR<br />
        </center>
	</div>

    </form>
</body>
</html>
