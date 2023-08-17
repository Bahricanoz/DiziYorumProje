<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEkle.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.AdminEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:20px 0px;">
        <h2>Admin Ekleme Sayfası</h2>
    </div>
    <form runat="server" class="form-group">
        <div>
            <label>İsim</label>
            <asp:TextBox ID="txtisim" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Kullanıcı Adı</label>
            <asp:TextBox ID="txtkullaniciadi" runat="server"  CssClass="form-control" required=""></asp:TextBox>
        </div>
         <div style="margin-top:20px;">
            <label>Şifre</label>
            <asp:TextBox ID="txtsifre" runat="server"  CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <asp:Button ID="btnkaydet" runat="server" Text="Admin Ekle"  CssClass="btn btn-primary" OnClick="btnkaydet_Click"/>
        </div>
    </form>
</asp:Content>
