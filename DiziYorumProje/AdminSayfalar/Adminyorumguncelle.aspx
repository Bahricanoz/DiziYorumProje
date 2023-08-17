<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminyorumguncelle.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.Adminyorumguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:20px;">
        <h2>Yorum Güncelleme Sayfası</h2>
    </div>
    <form runat="server" class="form-group">
        <div style="margin-top:20px;">
            <label>Yorum Ad</label>
            <asp:TextBox ID="txtyorunmad" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Mail</label>
            <asp:TextBox ID="txtmail" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>İçerik</label>
            <asp:TextBox ID="txticerik" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Blog</label>
            <asp:TextBox ID="txtblog" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <asp:Button ID="btngüncelle" runat="server" Text="Yorum Güncelle" CssClass="btn btn-success" OnClick="btngüncelle_Click" />
        </div>
    </form>
</asp:Content>
