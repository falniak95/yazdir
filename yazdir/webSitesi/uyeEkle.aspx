<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uyeEkle.aspx.cs" Inherits="yazdir.webSitesi.uyeEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

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

                                    
                                     
                                    <asp:Button ID="registerPageButton" runat="server"  Text="Tamamla!" OnClick="qaq" CausesValidation="False" />

                                    
                                    <%--<input type="submit" value="Gönder" id="signUpButton" onclick=""">--%>
                                </div>


                                <p><a href="#">Üye olarak şartlarımızı kabul etmiş sayılırsın.</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    <div>
    
    </div>
    </form>
</body>
</html>
