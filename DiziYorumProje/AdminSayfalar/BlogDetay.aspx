<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.BlogDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:20px;">
        <h2>Blog Detay Sayfası</h2>
    </div>
    <form runat="server" class="form-group">
        <div style="margin-top:20px;">
            <label>Blog Ad</label>
            <asp:TextBox ID="txtblog" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>İçerik</label>
            <asp:TextBox ID="txticerik" runat="server" CssClass="form-control" ReadOnly="true" TextMode="MultiLine" Height="200"></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Blog Tür</label>
            <asp:TextBox ID="txttür" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Blog Kategori</label>
            <asp:TextBox ID="txtkat" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Blog Tarih</label>
            <asp:TextBox ID="txttarih" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
    </form>
</asp:Content>
