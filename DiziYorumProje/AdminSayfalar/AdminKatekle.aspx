<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKatekle.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.AdminKatekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:20px 0px;">
        <h2>Kategori Ekleme Sayfası</h2>
    </div>
    <form class="form-group" runat="server">
        <div>
            <label>Kategori Ad</label>
            <asp:TextBox ID="txtkatad" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px">
            <asp:Button ID="btnkaydet" runat="server" Text="Kategori Ekle" CssClass="btn btn-primary" OnClick="btnkaydet_Click" />
        </div>
    </form>
</asp:Content>
