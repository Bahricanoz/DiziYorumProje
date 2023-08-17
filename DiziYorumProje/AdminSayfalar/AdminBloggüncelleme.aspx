<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBloggüncelleme.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.AdminBloggüncelleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:20px;">
        <h2>Blog Güncelleme Sayfası</h2>
    </div>
    <form class="form-group" runat="server">
        <div style="margin-top:20px;">
            <label>Blog Id</label>
            <asp:TextBox ID="txtıd" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Blog Ad</label>
            <asp:TextBox ID="txtblogad" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Blog Resim</label>
            <asp:TextBox ID="txtresim" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Blog İçerik</label>
            <asp:TextBox ID="txticeirk" runat="server" CssClass="form-control" required="" TextMode="MultiLine" Height="200"></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Blog Kategori</label>
            <%--<asp:TextBox ID="txtkat" runat="server" CssClass="form-control" required=""></asp:TextBox>--%>
            <asp:DropDownList ID="DropDownListkat" runat="server" CssClass="form-control" required="" DataTextField="KateogriAd" DataValueField="Id"></asp:DropDownList>
        </div>
        <div style="margin-top:20px;">
            <label>Blog Tür</label>
            <%--<asp:TextBox ID="txttür" runat="server" CssClass="form-control" required="" ></asp:TextBox>--%>
            <asp:DropDownList ID="DropDownListtür" runat="server" CssClass="form-control" required="" DataValueField="Id" DataTextField="Turad"></asp:DropDownList>
        </div>
        <div style="margin-top:20px;">
            <label>Tarih</label>
            <asp:TextBox ID="txttarih" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <asp:Button ID="btnguncelle" runat="server" Text="Blog Güncelle"  CssClass="btn btn-success" OnClick="btnguncelle_Click"/>
        </div>
    </form>
</asp:Content>
