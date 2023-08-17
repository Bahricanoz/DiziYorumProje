<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkımda.aspx.cs" Inherits="DiziYorumProje.Hakkımda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="about-content">
	 <div class="container">
		 <asp:Repeater ID="Repeater1" runat="server">
			 <ItemTemplate>
				  <img src="<%#Eval("Resim") %>"  style="width:800px; height:400px; margin-left:150px;"/>
		 <div class="about-section">
			 <div class="about-grid">
				 <h3><%#Eval("Baslik") %></h3>
				 <p><%#Eval("İcerik") %></p>
				 <p><%#Eval("İcerik2") %></p>
				 <p><%#Eval("İcerik3") %></p>
				 <p><%#Eval("İcerik4") %></p>
				</div>
			 </div>
			 </ItemTemplate>
		 </asp:Repeater>
		
			 
			 
		  </div>		 
	  </div>

<!---->
<div class="footer">
	 <div class="container">
	 <p>Copyrights © 2015 Blog All rights reserved | Template by <a href="http://w3layouts.com/">W3layouts</a></p>
	 </div>
</div>
</asp:Content>
