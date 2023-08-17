<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKategoriGüncelle.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.AdminKategoriGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:20px;">
        <h2>Kategori Güncelleme Sayfası</h2>
    </div>
    <form runat="server" class="form-group">
        <div style="margin-top:20px;">
            <label>Kategori Id</label>
            <asp:TextBox ID="txtkatıd" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Kategori Ad</label>
            <asp:TextBox ID="txtkatadd" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <asp:Button ID="btnguncelle" runat="server" Text="Kategori Güncelle" CssClass="btn btn-success" OnClick="btnguncelle_Click"/>
        </div>
    </form>
</asp:Content>
