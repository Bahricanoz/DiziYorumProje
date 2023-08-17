<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admintürekleme.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.Admintürekleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:20px 0px; ">
        <h2>Tür Ekleme Sayafası</h2>
    </div>
    <form runat="server" class="form-group">
        <div>
            <label>Tür Adı</label>
            <asp:TextBox ID="txtturad" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
        <div style="margin-top:20px;">
            <asp:Button ID="btnkaydet" runat="server" Text="Tür Ekle"  CssClass="btn btn-primary" OnClick="btnkaydet_Click1"/>
        </div>
    </form>
</asp:Content>
