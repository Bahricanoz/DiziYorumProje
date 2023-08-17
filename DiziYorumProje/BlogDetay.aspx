<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="DiziYorumProje.BlogDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="single">
    <div class="container">
		  <div class="col-md-8 single-main">				 
			  <div class="single-grid">
				  <asp:Repeater ID="Repeater1" runat="server">
					  <ItemTemplate>
						  <img src="<%#Eval("Resim") %>" alt="" style="width:730px; height:400px;" />
						  <h3 style="margin-top:20px;"><%#Eval("Baslik") %></h3>
						  <p><%#Eval("İcerik") %></p>
					  </ItemTemplate>
				  </asp:Repeater>
					
			  </div>
			  <asp:Repeater ID="Repeater2" runat="server">
					 <ItemTemplate>
							<ul class="comment-list">
		  				   <li><img src="web/images/avatar.png" class="img-responsive" alt="">
		  				   <div class="desc">
		  				   <p><%#Eval("Name") %> : <%#Eval("İcerik") %></p>
		  				   </div>
		  				   <div class="clearfix"></div>
		  				   </li>	
		  				 </ul>
				  </ItemTemplate>
			</asp:Repeater>
			  <div class="content-form">
					 <h3>Bir Yorum Yapınız...</h3>
					<form runat="server">
						<asp:TextBox ID="txtname" runat="server" placeholder="Adınızı Giriniz..." required=""></asp:TextBox>
						<asp:TextBox ID="txtmail" runat="server" placeholder="Mail Adresinizi Giriniz..." required=""></asp:TextBox>
						<asp:TextBox ID="txtyorum" runat="server" placeholder="Yorumunuzu Giriniz..." required="" TextMode="MultiLine" Height="200"></asp:TextBox>
						<asp:Button ID="btngonder" runat="server" Text="Gönder" OnClick="btngonder_Click" />
				   </form>
						 </div>
		  </div>

			  <div class="col-md-4 side-content">
				 <div class="recent">
					 <h3>Son Bloglar</h3>
					 <ul>
						 <asp:Repeater ID="Repeater4" runat="server">
							 <ItemTemplate>
								<li><a href="BlogDetay.aspx?Id=<%#Eval("Id") %>"><%# Eval("Baslik") %></a></li>
							 </ItemTemplate>
						 </asp:Repeater>

					 
					 </ul>
				 </div>
				 <div class="comments">
					 <h3>Son Yorumlar</h3>
					 <ul>
						 <asp:Repeater ID="Repeater5" runat="server">
							 <ItemTemplate>
									<li><a href="#"><%#Eval("Name") %> </a> - <a href="#"><%#Eval("Baslik") %></a></li>
							 </ItemTemplate>
						 </asp:Repeater>
					 
					 
					 </ul>
				 </div>
				 <div class="clearfix"></div>
				 <div class="archives">
					 <h3>Tür</h3>
					 <ul>
						 <asp:Repeater ID="Repeater6" runat="server">
							 <ItemTemplate>
								  <li><a href="Tür.aspx?Id=<%#Eval("Id") %>"><%# Eval("Turad") %></a></li>
							 </ItemTemplate>
						 </asp:Repeater>
					
					 
					 </ul>
				 </div>
				 <div class="categories">
					 <h3>Kategoriler</h3>
					 <ul>
						 <asp:Repeater ID="Repeater3" runat="server">
							 <ItemTemplate>
								  <li><a href="Kategori.aspx?Id=<%#Eval("Id") %>"><%#Eval("KateogriAd") %></a></li>
							 </ItemTemplate>
						 </asp:Repeater>
					
					 
					 </ul>
				 </div>
				 <div class="clearfix"></div>
			  </div>
			  <div class="clearfix"></div>
		  </div>
		</div>
	<div class="footer">
	 <div class="container">
	 <p>Copyrights © 2015 Blog All rights reserved | Template by <a href="http://w3layouts.com/">W3layouts</a></p>
	 </div>
</div>
</asp:Content>
