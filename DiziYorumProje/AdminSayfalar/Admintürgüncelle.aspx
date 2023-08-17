<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admintürgüncelle.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.Admintürgüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:20px 0px;">
        <h2>Tür Güncelleme Sayfası</h2>
    </div>
    <form runat="server" class="form-group">
        <div>
            <label>Tür Id</label>
            <asp:TextBox ID="txtıd" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <label>Tür Adı</label>
            <asp:TextBox ID="txtad" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <asp:Button ID="btngüncelle" runat="server" Text="Tür Güncelle" CssClass="btn btn-success" OnClick="btngüncelle_Click" />
        </div>
    </form>
</asp:Content>
