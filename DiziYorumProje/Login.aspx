<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DiziYorumProje.Login" %>

<!--A Design by W3layouts
   Author: W3layout
   Author URL: http://w3layouts.com
   License: Creative Commons Attribution 3.0 Unported
   License URL: http://creativecommons.org/licenses/by/3.0/
   -->
<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Admin Login</title>
      <!-- Meta tags -->
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta name="keywords" content="Gaze Sign up & login Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
         />
      <script>
         addEventListener("load", function () { setTimeout(hideURLbar, 0); }, false); function hideURLbar() { window.scrollTo(0, 1); }
      </script>
      <!-- Meta tags -->
      <!--stylesheets-->
      <link href="web2/css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//style sheet end here-->
      <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700" rel="stylesheet">
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
   </head>
   <body>
      <div class="mid-class">
         <div class="art-right-w3ls">
            <h2>Dizi Film Admin Login Paneli</h2>
            <form action="#" runat="server">
               <div class="main">
                  <div class="form-left-to-w3l">
                    <%-- <input type="text" name="name" placeholder="Username" required="">--%>
                      <asp:TextBox ID="txtkullaniciad" placeholder="Username" runat="server" required=""></asp:TextBox>
                  </div>
                  <div class="form-left-to-w3l ">
                    <%-- <input type="password" name="password" placeholder="Password" required="">--%>
                       <asp:TextBox ID="txtsifre" placeholder="Password" runat="server" required="" TextMode="Password"></asp:TextBox>
                     <div class="clear"></div>
                  </div>
               </div>
               <div class="left-side-forget">
                  <input type="checkbox" class="checked">
                  <span class="remenber-me">Beni Hatırla </span>
               </div>
               <div class="right-side-forget">
                  <a href="#" class="for">Şİfremi Unuttum...?</a>
               </div>
               <div class="clear"></div>
               <div class="btnn">
                   <asp:Button ID="btngirisyap" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" OnClick="btngirisyap_Click" />
               </div>
            </form>
            <div class="w3layouts_more-buttn">
               <h3>Bir Hesabın Yok mu...?
                  <a href="#content1">Kayıt Ol
                  </a>
               </h3>
            </div>
            <!-- popup-->
            <div id="content1" class="popup-effect">
               <div class="popup">
                  <!--login form-->
                  <div class="letter-w3ls">
                     <form action="#" method="post">
                        <div class="form-left-to-w3l">
                           <input type="text" name="name" placeholder="Username" required="">
                        </div>
                        <div class="form-left-to-w3l">
                           <input type="text" name="name" placeholder="Phone" required="">
                        </div>
                        <div class="form-left-to-w3l">
                           <input type="email" name="email" placeholder="Email" required="">
                        </div>
                        <div class="form-left-to-w3l">
                           <input type="password" name="password" placeholder="Password" required="">
                        </div>
                        <div class="form-left-to-w3l margin-zero">
                           <input type="password" name="password" placeholder="Confirm Password" required="">
                        </div>
                        <div class="btnn">
                           <button type="submit">Kayıt Ol</button>
                           <br>
                        </div>
                     </form>
                     <div class="clear"></div>
                  </div>
                  <!--//login form-->
                  <a class="close" href="#">&times;</a>
               </div>
            </div>
            <!-- //popup -->
         </div>
         <div class="art-left-w3ls">
            <h1 class="header-w3ls">
              Dizi && Film Login Paneli
            </h1>
         </div>
      </div>
   </body>
</html>
