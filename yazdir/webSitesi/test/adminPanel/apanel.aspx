<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="apanel.aspx.cs" Inherits="yazdir.webSitesi.test.adminPanel.apanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>YAZZDIR | E-Ticaret / Admin Paneli</title>   
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/component.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/export.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/flipclock.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/circles.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>
<body>
    <form id="EsasForm" runat="server">
        <!-- banner -->
        <div class="wthree_agile_admin_info">
            <!-- /w3_agileits_top_nav-->
            <!-- /nav-->
            <div class="w3_agileits_top_nav">
                <ul id="gn-menu" class="gn-menu-main">
                    <!-- /nav_agile_w3l -->
                    <li class="gn-trigger">

                    </li>
                    <!-- //nav_agile_w3l -->
                    <li class="second logo">
                        <h1><a href="apanel.aspx"><i class="fa fa-graduation-cap" aria-hidden="true"></i>YAZZDIR </a></h1>
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
              
                    </li>
                    <li class="second top_bell_nav">
   
                    </li>
                    <li class="second top_bell_nav">
   
                    </li>

                    <li class="second w3l_search"></li>
                    <li class="second full-screen">
                        <section class="full-top">
                            <button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>
                        </section>
                    </li>

                </ul>
                <!-- //nav -->

            </div>
            <div class="clearfix"></div>
            <!-- //w3_agileits_top_nav-->
            <!-- /inner_content-->
            <div class="inner_content">
                <!-- /inner_content_w3_agile_info-->
                <div class="inner_content_w3_agile_info">
                    <!-- /agile_top_w3_grids-->
                    <div class="agile_top_w3_grids">
                        <ul class="ca-menu">
                            <li>
                                <a href="#">

                                    <i class="fa fa-building-o" aria-hidden="true"></i>
                                    <div class="ca-content">
                                        <h4 runat="server" id="sirketler" class="ca-main"></h4>
                                        <h3 class="ca-sub">Mevcut Şirket</h3>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <div class="ca-content">
                                        <h4 runat="server" id="uyeler" class="ca-main one"></h4>
                                        <h3 class="ca-sub one">Mevcut Üyeler</h3>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-database" aria-hidden="true"></i>
                                    <div class="ca-content">
                                        <h4 runat="server" id="mIsler" class="ca-main two"></h4>
                                        <h3 class="ca-sub two">Mevcut İşler</h3>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-tasks" aria-hidden="true"></i>
                                    <div class="ca-content">
                                        <h4 runat="server" id="tamamIsler" class="ca-main three"></h4>
                                        <h3 class="ca-sub three">Tamamlanmış İşler</h3>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-clone" aria-hidden="true"></i>
                                    <div class="ca-content">
                                        <h4 runat="server" id="onaylanmamisIsler" class="ca-main four"></h4>
                                        <h3 class="ca-sub four">Henüz Onaylanmamış İşler</h3>
                                    </div>
                                </a>
                            </li>
                            <div class="clearfix"></div>
                        </ul>
                    </div>
             

                    <!-- Ediör Ekle Modal-->
                    <div class="modal fade" id="editorEkle" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Editör Ekle</h4>
                                </div>
                                <div class="modal-body">
                                    <center>Kullanıcı Adı:</center>
                                    <center>  <asp:TextBox ID="userName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                    <center>Şifre:</center>
                                    <center>    <asp:TextBox ID="uPwd" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Şifre Giriniz" TextMode="Password"></asp:TextBox></center>
                                    <center>Mail Adresi:</center>
                                    <center>  <asp:TextBox ID="uMail" runat="server" style="width:40%; margin-left:10px" MaxLength="55" placeholder="Editör İçin Mail Adresi Giriniz"></asp:TextBox>  </center>
                                    <center>İsim:</center>
                                    <center>    <asp:TextBox ID="uName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin İsim Giriniz"></asp:TextBox>     </center>
                                    <center>Soyisim</center>
                                    <center> <asp:TextBox ID="surName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Soyisim Giriniz"></asp:TextBox></center>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button  runat="server" class="btn btn-warning"  ID="Gonder" onclick="Gonder_Click" style="width: 100%" Text="Tamamla" />
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:ScriptManager ID="script1" runat="server">

                    </asp:ScriptManager>

                                        <!-- Yönetici Ekle Modal-->
                    <div class="modal fade" id="adminEkle" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Yönetici Ekle</h4>
                                </div>
                                <div class="modal-body">
                                    <center>Kullanıcı Adı:</center>
                                    <center>  <asp:TextBox ID="adminUname" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                    <center>Şifre:</center>
                                    <center>    <asp:TextBox ID="adminPwd" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Şifre Giriniz" TextMode="Password"></asp:TextBox></center>
                                    <center>Mail Adresi:</center>
                                    <center>  <asp:TextBox ID="adminMail" runat="server" style="width:40%; margin-left:10px" MaxLength="55" placeholder="Yönetici İçin Mail Adresi Giriniz"></asp:TextBox>  </center>
                                    <center>İsim:</center>
                                    <center>    <asp:TextBox ID="adminName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin İsim Giriniz"></asp:TextBox>     </center>
                                    <center>Soyisim</center>
                                    <center> <asp:TextBox ID="adminSurname" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Soyisim Giriniz"></asp:TextBox></center>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button  runat="server" class="btn btn-danger"  ID="addAdminButton" onclick="addAdmin" style="width: 100%" Text="Tamamla" />
                                    
                                </div>
                            </div>
                        </div>
                    </div>





                    <!-- Editör Düzenle Modal -->
                    <div class="modal fade" id="editorDuzenle" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Editör Düzenle</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="panel1" runat="server"><ContentTemplate>
                                      
                                    <center>Kullanıcı Adı:</center>
                                    <center>  <asp:TextBox ID="editorUname" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                <center>     <asp:Button class="btn btn-warning" ID="Getir" runat="server" OnClick="Getir_Click" style="margin-top:5px"   Text="Bilgileri Getir" /> </center>
                                     <center>Şifre:</center>
                                    <center>    <asp:TextBox ID="editorPwd" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Şifre Giriniz" ></asp:TextBox></center>
                                    <center>Mail Adresi:</center>
                                    <center>  <asp:TextBox ID="editorMail" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="55" placeholder="Editör İçin Mail Adresi Giriniz"></asp:TextBox>  </center>
                                    <center>İsim:</center>
                                    <center>    <asp:TextBox ID="editorName" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin İsim Giriniz"></asp:TextBox>     </center>
                                    <center>Soyisim</center>
                                    <center> <asp:TextBox ID="editorSurname" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Soyisim Giriniz"></asp:TextBox></center>
                                
                                   
                                            </ContentTemplate> </asp:UpdatePanel>
                                        </div>
                                <div class="modal-footer">
                                    <asp:Button  runat="server" class="btn btn-warning"  ID="saveIt"  onclick="saveIt_Click" style="width: 100%" Text="Tamamla" />
                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Admin Düzenle -->
                    <div class="modal fade" id="adminDuzenle" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Yönetici Düzenle</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server"><ContentTemplate>
                                      
                                    <center>Kullanıcı Adı:</center>
                                    <center>  <asp:TextBox ID="adminEdituName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                <center>     <asp:Button class="btn btn-warning" ID="getAdminInfoBtn" runat="server" OnClick="getAdminInfo" style="margin-top:5px"   Text="Bilgileri Getir" /> </center>
                                   <center><asp:Label runat="server" ID="errorEditAdminMsg" visible="false" forecolor="red" Text="Aranılan kullanıcı bulunamadı."></asp:Label></center>
                                          <center>Şifre:</center>
                                    <center>    <asp:TextBox ID="adminEditPwd" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Şifre Giriniz" ></asp:TextBox></center>
                                    <center>Mail Adresi:</center>
                                    <center>  <asp:TextBox ID="adminEditMail" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="55" placeholder="Yönetici İçin Mail Adresi Giriniz"></asp:TextBox>  </center>
                                    <center>İsim:</center>
                                    <center>    <asp:TextBox ID="adminEditName" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin İsim Giriniz"></asp:TextBox>     </center>
                                    <center>Soyisim</center>
                                    <center> <asp:TextBox ID="adminEditSurname" runat="server" Enabled="false" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Soyisim Giriniz"></asp:TextBox></center>
                                
                                   
                                            </ContentTemplate> </asp:UpdatePanel>
                                        </div>
                                <div class="modal-footer">
                                    <asp:Button  runat="server" class="btn btn-danger"  ID="saveAdminEdit"  onclick="saveIt_Click" style="width: 100%" Text="Tamamla" />
                                    
                                </div>
                            </div>
                        </div>
                    </div>

                   
                    <!-- Editor Sil Modal--->
                    <div class="modal fade" id="editorSil" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Editör Sil</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>

                                            <center>Kullanıcı Adı:</center>
                                            <center>  <asp:TextBox ID="editorDeleteuName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Editör İçin Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                            <center>     <asp:Button class="btn btn-warning" ID="getInfo" runat="server" OnClick="getDeleteInfo" style="margin-top:5px"   Text="Bilgileri Getir" /> </center>
                                            <center><asp:Label runat="server" ID="silmeText" Text=""></asp:Label></center>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" class="btn btn-warning" ID="deleteBtn" OnClick="deleteIt" Style="width: 100%" Text="Editör Sil." />

                                </div>
                            </div>
                        </div>
                    </div>

                    
                    <!-- Yönetici Sil Modal--->
                    <div class="modal fade" id="adminSil" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Yönetici Sil</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                        <ContentTemplate>

                                            <center>Kullanıcı Adı:</center>
                                            <center>  <asp:TextBox ID="adminDeleteuName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Yönetici İçin Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                            <center>     <asp:Button class="btn btn-danger" ID="getDeleteAdminInfo" runat="server" OnClick="getAdminDeleteInfo" style="margin-top:5px"   Text="Bilgileri Getir" /> </center>
                                            <center><asp:Label runat="server" ID="deleteAdminTxt" Text=""></asp:Label></center>
                                               <center><asp:Label runat="server" ID="deleteAdminNotFound" visible="false" forecolor="red" Text="Aranılan yönetici bulunamadı."></asp:Label></center>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" class="btn btn-danger" ID="deleteAdminBtn" OnClick="deleteItAdmin" Style="width: 100%" Text="Yönetici Sil" />

                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Editörleri Görüntüle -->
                    <div class="modal fade" id="editorGoruntule" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Editör Görüntüle</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                          
                                            <asp:Panel ID="DinamikPanel" runat="server" style="width:100%">
      
           
              

                                             </asp:Panel>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" class="btn btn-warning" ID="EditorGoruntuleBtn" OnClick="EditorGoruntuleBtn_Click"  data-dismiss="modal" Style="width: 100%" Text="Tamam"/>

                                </div>
                            </div>
                        </div>
                    </div>



                     <!-- Yöneticileri Görüntüle -->
                    <div class="modal fade" id="adminGoruntule" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Yöneticileri Görüntüle</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                        <ContentTemplate>
                                          
                                            <asp:Panel ID="Panel2" runat="server" style="width:100%">
      
           
              

                                             </asp:Panel>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" class="btn btn-warning" ID="adminGoruntuleBtn" data-dismiss="modal" Style="width: 100%" Text="Tamam"/>

                                </div>
                            </div>
                        </div>
                    </div>

                       <!-- Üye Ekle Modal-->
                    <div class="modal fade" id="uyeEkle" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Üye Ekle</h4>
                                </div>
                                <div class="modal-body">
                                    <center>Kullanıcı Adı:</center>
                                    <center>  <asp:TextBox ID="userUname" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                    <center>Şifre:</center>
                                    <center>    <asp:TextBox ID="userPwd" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Şifre Giriniz" TextMode="Password"></asp:TextBox></center>
                                    <center>Mail Adresi:</center>
                                    <center>  <asp:TextBox ID="userMail" runat="server" style="width:40%; margin-left:10px" MaxLength="55" placeholder="Mail Adresi Giriniz"></asp:TextBox>  </center>
                                    <center>İsim:</center>
                                    <center>    <asp:TextBox ID="userRealName" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="İsim Giriniz"></asp:TextBox>     </center>
                                    <center>Soyisim</center>
                                    <center> <asp:TextBox ID="userRealSurname" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Soyisim Giriniz"></asp:TextBox></center>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button  runat="server" class="btn btn-info"  ID="addUserBtn" onclick="addUser" style="width: 100%" Text="Tamamla" />
                                    
                                </div>
                            </div>
                        </div>
                    </div>

                     <!-- Üye Sil Modal--->
                    <div class="modal fade" id="uyeSil" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Üye Sil</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                        <ContentTemplate>

                                            <center>Kullanıcı Adı:</center>
                                            <center>  <asp:TextBox ID="userDeleteUname" runat="server" style="width:40%; margin-left:10px" MaxLength="20" placeholder="Kullanıcı Adı Giriniz"></asp:TextBox></center>
                                            <center>     <asp:Button class="btn btn-info" ID="getUserInfoBtn" runat="server" OnClick="getUserDeleteInfo" style="margin-top:5px"   Text="Bilgileri Getir" /> </center>
                                            <center><asp:Label runat="server" ID="userDeleteInfoTxt" Text=""></asp:Label></center>
                                               <center><asp:Label runat="server" ID="userNotFound" visible="false" forecolor="red" Text="Aranılan üye bulunamadı."></asp:Label></center>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" class="btn btn-info" ID="deleteUserBtn" OnClick="deleteItUser" Style="width: 100%" Text="Üye Sil" />

                                </div>
                            </div>
                        </div>
                    </div>

                      <!-- Üyeler Görüntüle -->
                    <div class="modal fade" id="uyeGoruntule" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Üyeleri Görüntüle</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                        <ContentTemplate>
                                          
                                            <asp:Panel ID="Panel3" runat="server" style="width:100%">
      
           
              

                                             </asp:Panel>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" class="btn btn-info" ID="uyeGoruntuleBtn" data-dismiss="modal" Style="width: 100%" Text="Tamam"/>

                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Onaylanmamış İlanları Görüntüle -->
                    <div class="modal fade" id="unConfirmedAds" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Onaylanmamış İlanları Görüntüle</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                        <ContentTemplate>
                                          
                                            <asp:Panel ID="Panel4" runat="server" style="width:100%">
      
           
              

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




                    <div class="clearfix"></div>
                </div>
                <div class="container">

                    <div class="row">
                        <div class="col-md-6">
                            <p class="text-warning" style="padding: 0px 0px 0px 35%; margin-bottom: 5px;">Editör İşlemleri</p>
                            <button type="button" class="btn btn-warning" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#editorEkle">Editör Ekle</button>
                            <button type="button" class="btn btn-warning" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#editorSil">Editör Sil</button>
                            <button type="button" class="btn btn-warning" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#editorDuzenle">Editör Düzenle</button>
                            <button type="button" class="btn btn-warning" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#editorGoruntule">Editörleri Görüntüle
                            </button>
                        <a href="logEditors.aspx">    <button type="button" class="btn btn-warning" style="width: 100%; margin-bottom: 5px;">Editör İşlem Geçmişi</button></a>
                        </div>
                        <div class="col-md-6">
                            <p class="text-danger" style="padding: 0px 0px 0px 35%; margin-bottom: 5px;">Yönetici İşlemleri</p>
                            <button type="button" class="btn btn-danger" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#adminEkle">Yönetici Ekle</button>
                            <button type="button" class="btn btn-danger" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#adminSil" >Yönetici Sil</button>
                            <button type="button" class="btn btn-danger" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#adminDuzenle">Yönetici Düzenle</button>
                            <button type="button" class="btn btn-danger" style="width: 100%; margin-bottom: 5px;" data-toggle="modal" data-target="#adminGoruntule">Yöneticileri Görüntüle</button>
                           <a href="loglar.aspx"> <button type="button" class="btn btn-danger" style="width: 100%; margin-bottom: 5px;" >Yönetici İşlem Geçmişi</button></a>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <p class="text-info" style="padding: 0px 0px 0px 45%; margin-bottom: 5px;">Üye İşlemleri</p>
                            <button type="button" class="btn btn-info" style="width: 50%; margin-left: 25%; margin-bottom: 5px;" data-toggle="modal" data-target="#uyeEkle">Üye Ekle</button>
                            <button type="button" class="btn btn-info" style="width: 50%; margin-left: 25%; margin-bottom: 5px;" data-toggle="modal" data-target="#uyeSil">Üye Sil</button>
                            <button type="button" class="btn btn-info" style="width: 50%; margin-left: 25%; margin-bottom: 5px;" data-toggle="modal" data-target="#uyeGoruntule">Üye Görüntüle</button>
                         <a href="logUsers.aspx">   <button type="button" class="btn btn-info" style="width: 50%; margin-left: 25%; margin-bottom: 5px;">Üye İşlem Geçmişi</button></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p class="text-success" style="padding: 0px 0px 0px 35%; margin-bottom: 5px;">İlan İşlemleri</p>
                     <a href="confirmationAndReport.aspx"        <button type="button" class="btn btn-success" style="width: 100%; margin-bottom: 5px;" >Onaylanmamış İlanları Görüntüle</button></a>
                            <button type="button" class="btn btn-success" style="width: 100%; margin-bottom: 5px;">Yayındaki İlanları Görüntüle</button>
                        </div>
                        <div class="col-md-6">
                            <p class="text-primary" style="padding: 0px 0px 0px 35%; margin-bottom: 5px;">Haber İşlemleri</p>
                          <a href="confirmationAndReport.aspx"  <button type="button" class="btn btn-primary" style="width: 100%; margin-bottom: 5px;" >Onaylanmamış Haberleri Görüntüle</button></a>
                            <button type="button" class="btn btn-primary" style="width: 100%; margin-bottom: 5px;">Yayındaki Haberleri Görüntüle</button>
                        </div>
                    </div>
                </div>
     
                <!-- //social_media-->
            </div>
            <!-- //inner_content_w3_agile_info-->
        </div>
        <!-- //inner_content-->
        </div>
        <!-- banner -->
        <!--copy rights start here-->

        <!--copy rights end here-->
        <!-- js -->

        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

        <!-- /amcharts -->
        <script src="js/amcharts.js"></script>
        <script src="js/serial.js"></script>
        <script src="js/export.js"></script>
        <script src="js/light.js"></script>
        <!-- Chart code -->
        <script>
            var chart = AmCharts.makeChart("chartdiv", {
                "theme": "light",
                "type": "serial",
                "startDuration": 2,
                "dataProvider": [{
                    "country": "USA",
                    "visits": 4025,
                    "color": "#FF0F00"
                }, {
                    "country": "China",
                    "visits": 1882,
                    "color": "#FF6600"
                }, {
                    "country": "Japan",
                    "visits": 1809,
                    "color": "#FF9E01"
                }, {
                    "country": "Germany",
                    "visits": 1322,
                    "color": "#FCD202"
                }, {
                    "country": "UK",
                    "visits": 1122,
                    "color": "#F8FF01"
                }, {
                    "country": "France",
                    "visits": 1114,
                    "color": "#B0DE09"
                }, {
                    "country": "India",
                    "visits": 984,
                    "color": "#04D215"
                }, {
                    "country": "Spain",
                    "visits": 711,
                    "color": "#0D8ECF"
                }, {
                    "country": "Netherlands",
                    "visits": 665,
                    "color": "#0D52D1"
                }, {
                    "country": "Russia",
                    "visits": 580,
                    "color": "#2A0CD0"
                }, {
                    "country": "South Korea",
                    "visits": 443,
                    "color": "#8A0CCF"
                }, {
                    "country": "Canada",
                    "visits": 441,
                    "color": "#CD0D74"
                }, {
                    "country": "Brazil",
                    "visits": 395,
                    "color": "#754DEB"
                }, {
                    "country": "Italy",
                    "visits": 386,
                    "color": "#DDDDDD"
                }, {
                    "country": "Taiwan",
                    "visits": 338,
                    "color": "#333333"
                }],
                "valueAxes": [{
                    "position": "left",
                    "axisAlpha": 0,
                    "gridAlpha": 0
                }],
                "graphs": [{
                    "balloonText": "[[category]]: <b>[[value]]</b>",
                    "colorField": "color",
                    "fillAlphas": 0.85,
                    "lineAlpha": 0.1,
                    "type": "column",
                    "topRadius": 1,
                    "valueField": "visits"
                }],
                "depth3D": 40,
                "angle": 30,
                "chartCursor": {
                    "categoryBalloonEnabled": false,
                    "cursorAlpha": 0,
                    "zoomable": false
                },
                "categoryField": "country",
                "categoryAxis": {
                    "gridPosition": "start",
                    "axisAlpha": 0,
                    "gridAlpha": 0

                },
                "export": {
                    "enabled": true
                }

            }, 0);
        </script>
        <!-- Chart code -->
        <script>
            var chart = AmCharts.makeChart("chartdiv1", {
                "type": "serial",
                "theme": "light",
                "legend": {
                    "horizontalGap": 10,
                    "maxColumns": 1,
                    "position": "right",
                    "useGraphSettings": true,
                    "markerSize": 10
                },
                "dataProvider": [{
                    "year": 2017,
                    "europe": 2.5,
                    "namerica": 2.5,
                    "asia": 2.1,
                    "lamerica": 0.3,
                    "meast": 0.2,
                    "africa": 0.1
                }, {
                    "year": 2016,
                    "europe": 2.6,
                    "namerica": 2.7,
                    "asia": 2.2,
                    "lamerica": 0.3,
                    "meast": 0.3,
                    "africa": 0.1
                }, {
                    "year": 2015,
                    "europe": 2.8,
                    "namerica": 2.9,
                    "asia": 2.4,
                    "lamerica": 0.3,
                    "meast": 0.3,
                    "africa": 0.1
                }],
                "valueAxes": [{
                    "stackType": "regular",
                    "axisAlpha": 0.5,
                    "gridAlpha": 0
                }],
                "graphs": [{
                    "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                    "fillAlphas": 0.8,
                    "labelText": "[[value]]",
                    "lineAlpha": 0.3,
                    "title": "Europe",
                    "type": "column",
                    "color": "#000000",
                    "valueField": "europe"
                }, {
                    "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                    "fillAlphas": 0.8,
                    "labelText": "[[value]]",
                    "lineAlpha": 0.3,
                    "title": "North America",
                    "type": "column",
                    "color": "#000000",
                    "valueField": "namerica"
                }, {
                    "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                    "fillAlphas": 0.8,
                    "labelText": "[[value]]",
                    "lineAlpha": 0.3,
                    "title": "Asia-Pacific",
                    "type": "column",
                    "color": "#000000",
                    "valueField": "asia"
                }, {
                    "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                    "fillAlphas": 0.8,
                    "labelText": "[[value]]",
                    "lineAlpha": 0.3,
                    "title": "Latin America",
                    "type": "column",
                    "color": "#000000",
                    "valueField": "lamerica"
                }, {
                    "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                    "fillAlphas": 0.8,
                    "labelText": "[[value]]",
                    "lineAlpha": 0.3,
                    "title": "Middle-East",
                    "type": "column",
                    "color": "#000000",
                    "valueField": "meast"
                }, {
                    "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
                    "fillAlphas": 0.8,
                    "labelText": "[[value]]",
                    "lineAlpha": 0.3,
                    "title": "Africa",
                    "type": "column",
                    "color": "#000000",
                    "valueField": "africa"
                }],
                "rotate": true,
                "categoryField": "year",
                "categoryAxis": {
                    "gridPosition": "start",
                    "axisAlpha": 0,
                    "gridAlpha": 0,
                    "position": "left"
                },
                "export": {
                    "enabled": true
                }
            });
        </script>

        <!-- //amcharts -->
        <script src="js/chart1.js"></script>
        <script src="js/Chart.min.js"></script>
        <script src="js/modernizr.custom.js"></script>

        <script src="js/classie.js"></script>
        <script src="js/gnmenu.js"></script>
        <script>
            new gnMenu(document.getElementById('gn-menu'));
        </script>
        <!-- script-for-menu -->

        <!-- /circle-->
        <script type="text/javascript" src="js/circles.js"></script>
        <script>
            var colors = [
                    ['#ffffff', '#fd9426'], ['#ffffff', '#fc3158'], ['#ffffff', '#53d769'], ['#ffffff', '#147efb']
            ];
            for (var i = 1; i <= 7; i++) {
                var child = document.getElementById('circles-' + i),
                    percentage = 30 + (i * 10);

                Circles.create({
                    id: child.id,
                    percentage: percentage,
                    radius: 80,
                    width: 10,
                    number: percentage / 1,
                    text: '%',
                    colors: colors[i - 1]
                });
            }

        </script>
        <!-- //circle -->
        <!--skycons-icons-->
        <script src="js/skycons.js"></script>
        <script>
            var icons = new Skycons({ "color": "#fcb216" }),
                 list = [
                   "partly-cloudy-day"
                 ],
                 i;

            for (i = list.length; i--;)
                icons.set(list[i], list[i]);
            icons.play();
        </script>
        <script>
            var icons = new Skycons({ "color": "#fff" }),
                 list = [
                   "clear-night", "partly-cloudy-night", "cloudy", "clear-day", "sleet", "snow", "wind", "fog"
                 ],
                 i;

            for (i = list.length; i--;)
                icons.set(list[i], list[i]);
            icons.play();
        </script>
        <!--//skycons-icons-->
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
        <script src="js/flipclock.js"></script>

        <script type="text/javascript">
            var clock;

            $(document).ready(function () {

                clock = $('.clock').FlipClock({
                    clockFace: 'HourlyCounter'
                });
            });
        </script>
        <script src="js/bars.js"></script>
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>

        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>

    </form>
</body>
</html>
