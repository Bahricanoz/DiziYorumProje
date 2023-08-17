<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkımda.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.Hakkımda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group" style="margin-top:20px;">
        <div  style="margin-top:20px">
            <label>Başlık</label>
            <asp:TextBox ID="txtbaslik" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
         <div  style="margin-top:20px">
            <label>Resim</label>
            <asp:TextBox ID="txtresim" runat="server" CssClass="form-control" required=""></asp:TextBox>
        </div>
         <div  style="margin-top:20px">
            <label>İçerik 1</label>
            <asp:TextBox ID="txticerik1" runat="server" CssClass="form-control" required="" Height="100" TextMode="MultiLine"></asp:TextBox>
        </div>
         <div  style="margin-top:20px">
            <label>İçerik 2</label>
            <asp:TextBox ID="txticerik2" runat="server" CssClass="form-control" required="" TextMode="MultiLine" Height="100"></asp:TextBox>
        </div>
         <div  style="margin-top:20px">
            <label>İçerik 3</label>
            <asp:TextBox ID="txticerik3" runat="server" CssClass="form-control" required="" TextMode="MultiLine" Height="100"></asp:TextBox>
        </div>
         <div  style="margin-top:20px">
            <label>İçerik 4</label>
            <asp:TextBox ID="txticerik4" runat="server" CssClass="form-control" required="" TextMode="MultiLine" Height="100"></asp:TextBox>
        </div>
        <div style="margin-top:20px">
            <asp:Button ID="btngüncelle" runat="server" Text="Hakkımda Güncelle"  CssClass="btn btn-warning" OnClick="btngüncelle_Click"/>
        </div>
    </form>
</asp:Content>
