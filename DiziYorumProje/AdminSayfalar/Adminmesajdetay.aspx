<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminmesajdetay.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.Adminmesajdetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:20px;">
        <h2>Mesaj Detay Sayfası</h2>
    </div>
    <form runat="server" class="form-group">
        <div style="margin-top:20px;">
            <label>Kullancı Adı</label>
            <asp:TextBox ID="txtname" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
         <div style="margin-top:20px;">
            <label>Mail</label>
            <asp:TextBox ID="txtmail" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
         <div style="margin-top:20px;">
            <label>Telefon</label>
            <asp:TextBox ID="txttelefon" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
         <div style="margin-top:20px;">
            <label>Konu</label>
            <asp:TextBox ID="txtkonu" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
         <div style="margin-top:20px;">
            <label>Konu</label>
            <asp:TextBox ID="txtmesaj" runat="server" CssClass="form-control" ReadOnly="true" TextMode="MultiLine" Height="100"></asp:TextBox>
        </div>
    </form>
</asp:Content>
