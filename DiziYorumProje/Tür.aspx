<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Tür.aspx.cs" Inherits="DiziYorumProje.Tür" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
		 <div class="content-grids">
					 <div class="col-md-8 content-main">
						 <asp:Repeater ID="Repeater1" runat="server">
				 <ItemTemplate>
					<div class="content-grid">					 
					 <div class="content-grid-info">
						 <img src="<%#Eval("Resim") %>" alt="" style="width:600px; height:300px;" />
						 <div class="post-info">
						 <h4><a href="BlogDetay.aspx?Id=<%#Eval("Id") %>"><%#Eval("Baslik") %></a> <%#Eval("Tarih","{0:dd.MM.yyyy}") %></h4>
						 <p><%#Eval("İcerik").ToString().Substring(0,100) %></p>
						 <a href="BlogDetay.aspx?Id=<%#Eval("Id") %>"><span></span>Devamını Oku</a>
						 </div>
					 </div>
				 </div>
					 </ItemTemplate>
			 </asp:Repeater>
			  </div>
			
				 
			 
			  <div class="col-md-4 content-right">
				 <div class="recent">
					 <h3>Son Bloglar</h3>
					 <ul>
						 <asp:Repeater ID="Repeater2" runat="server">
							 <ItemTemplate>
								 <li><a href="BlogDetay.aspx?Id=<%# Eval("Id") %>"><%#Eval("Baslik") %></a></li>
							 </ItemTemplate>
						 </asp:Repeater>
					 </ul>
				 </div>
				 <div class="comments">
					 <h3>Son Yorumlar</h3>
					 <ul>
						 <asp:Repeater ID="Repeater4" runat="server">
							 <ItemTemplate>
									<li><a href="#"><%#Eval("Name") %> </a> - <a href="#"><%# Eval("Baslik") %></a></li>
							</ItemTemplate>
						 </asp:Repeater> 
					 </ul>
				 </div>
				 <div class="clearfix"></div>
				 <div class="archives">
					 <h3>Tür</h3>
					 <ul>
						 <asp:Repeater ID="Repeater5" runat="server">
							 <ItemTemplate>
								  <li><a href="Tür.aspx?Id=<%#Eval("Id") %>"><%#Eval("Turad") %></a></li>
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
