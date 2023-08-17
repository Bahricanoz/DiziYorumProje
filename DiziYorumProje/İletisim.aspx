<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="DiziYorumProje.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-content">
	 <div class="container">
		     <div class="contact-info">
			 <h2>Bize Ulaşın...</h2>
			 <p>Dizi ve film tutkunlarına merhaba! Eğer siz de en son çıkan diziler hakkında konuşmayı, film önerileri paylaşmayı ve sinema dünyasındaki gelişmeleri takip etmeyi seviyorsanız, doğru yerdesiniz.Her türlü görüş, öneri ve sorunuz için bizimle iletişime geçmekten çekinmeyin. Yeni içerik önerileriniz varsa, belirli bir dizi veya film hakkında konuşmak istiyorsanız veya sadece merhaba demek istiyorsanız, hepsini büyük bir ilgiyle karşılıyoruz.</p>
		     </div>
			 <div class="contact-details">				 
			 <form runat="server">
				  <asp:TextBox ID="txtkullanici" runat="server" placeholder="Lütfen İsminizi Giriniz..." required=""></asp:TextBox>
				 
				  <asp:TextBox ID="txtmailadres" runat="server" placeholder="Lütfen Mailinizi Giriniz..." required=""></asp:TextBox>
				  <asp:TextBox ID="txtnumara" runat="server" placeholder="Lütfen Numaranızı Giriniz..." required=""></asp:TextBox>
				  <asp:TextBox ID="txtkonu" runat="server" placeholder="Lütfen Konuyu Giriniz..." required="" style="margin:auto" ></asp:TextBox>
				  <asp:TextBox ID="txtmesaj" runat="server" placeholder="Lütfen Mesajınızı Giriniz..." required="" TextMode="MultiLine" Height="250"></asp:TextBox>
				 <asp:Button ID="btnmesaj" runat="server" Text="Mesaj Gönder" OnClick="btnmesaj_Click" />
			 </form>
		  </div>
		  <div class="contact-details">
			  <div class="col-md-6 contact-map">
				 <h4>Biz Buradayız</h4>
				 <div style="max-width:100%;list-style:none; transition: none;overflow:hidden;width:500px;height:250px;"><div id="google-maps-display" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=İstanbul,+Türkiye&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"></iframe></div><a class="googlemaps-made" href="https://www.bootstrapskins.com/themes" id="authorize-map-data">premium bootstrap themes</a><style>#google-maps-display img.text-marker{max-width:none!important;background:none!important;}img{max-width:none}</style></div>
			  </div>
			 <%-- <div class="col-md-6 company_address">		 
					<h4>GET IN TOUCH</h4>
					<p>500 Lorem Ipsum Dolor Sit,</p>
					<p>22-56-2-9 Sit Amet, Lorem,</p>
					<p>USA</p>
					<p>Phone:(00) 222 666 444</p>
					<p>Fax: (000) 123 456 78 0</p>
					<p>Email: <a href="mailto:info@example.com">info@mycompany.com</a></p>
					<p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
			 </div>
			  <div class="clearfix"></div>--%>
	     </div>		 


			 </div>
	 </div>

<!---->
<div class="footer">
	 <div class="container">
	 <p>Copyrights © 2015 Blog All rights reserved | Template by <a href="http://w3layouts.com/">W3layouts</a></p>
	 </div>
</div>
</asp:Content>
