<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKategori.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.AdminKategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:20px 0px;">
        <a href="AdminKatekle.aspx" class="btn btn-info">Kategori Ekle</a>
    </div>
    <table class="table table-bordered">
        <tr>
            <th>Id</th>
            <th>Kategori Ad</th>
            <th>Güncelle</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Id") %></td>
                        <td><%#Eval("KateogriAd") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass=" btn btn-warning" NavigateUrl='<%#"AdminKategoriGüncelle.aspx?Id=" +Eval("Id ") %>'>Kategori Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
