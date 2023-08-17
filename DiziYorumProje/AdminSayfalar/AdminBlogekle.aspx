<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBlogekle.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.AdminBlogekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  style="margin-top:20px;">
        <h2>Blog Ekleme Sayfası</h2>
    </div>
    <form runat="server" class="form-group">
        <div style="margin-top:20px;">
           <label>Blog Adı</label>
           <asp:TextBox ID="txtblogad" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Blog İçerik</label>
            <asp:TextBox ID="txtblogicerik" runat="server" CssClass="form-control" required="" TextMode="MultiLine" Height="200"></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Blog Resim</label>
            <asp:TextBox ID="txtblogresim" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Blog Kategori</label>
            <%--<asp:TextBox ID="txtblogkategori" runat="server" CssClass="form-control" required=""></asp:TextBox>--%>
            <asp:DropDownList ID="DropDownListkat" runat="server" CssClass="form-control" required="" DataValueField="Id" DataTextField="KateogriAd"></asp:DropDownList>
        </div>
        <div style="margin-top:20px;">
            <label>Blog Türü</label>
            <%--<asp:TextBox ID="txtblogtür" runat="server" CssClass="form-control" required=""></asp:TextBox>--%>
            <asp:DropDownList ID="DropDownListtür" runat="server" CssClass="form-control" required="" DataTextField="Turad" DataValueField="Id"></asp:DropDownList>
        </div>
        <div style="margin-top:20px;">
            <label>Tarih</label>
            <asp:TextBox ID="txttarih" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <asp:Button ID="btnkayder" runat="server" Text="Blog Ekle" CssClass="btn btn-primary" OnClick="btnkayder_Click" />
        </div>
    </form>
</asp:Content>
