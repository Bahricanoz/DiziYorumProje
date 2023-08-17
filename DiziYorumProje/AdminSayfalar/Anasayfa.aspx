<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered" style="margin-top:20px">
        <tr>
            <td>
              Toplam Blog Sayısı:  <asp:Label ID="labelblog" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
             Film Sayısı:  <asp:Label ID="labelfilm" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
             Dizi Sayısı:  <asp:Label ID="labeldizi" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
             Toplam Yorum Sayısı:  <asp:Label ID="labelyorum" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
             Aksiyon Dizi && Film Sayısı:  <asp:Label ID="labelaksiyon" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
             Animasyon Sayısı : <asp:Label ID="labelanimasyon" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
