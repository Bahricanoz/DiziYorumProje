<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBlog.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:20px 0px;">
        <a href="/AdminSayfalar/AdminBlogekle.aspx/" class="btn btn-info">Blog Ekle</a>
    </div>
    <table class="table table-bordered">
        <tr>
            <th>Id</th>
            <th>Blog Ad</th>
            <th>İçerik</th>
            <th>Resim</th>
            <th>Kategori</th>
            <th>Tür</th>
            <th>Tarih</th>
            <th>Sil</th>
            <th>Güncelle</th>
            <th>Detay</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Id") %></td>
                        <td><%#Eval("Baslik") %></td>
                        <td><%#Eval("İcerik").ToString().Substring(0,20) %></td>
                        <td><%#Eval("Resim") %></td>
                        <td><%#Eval("KateogriAd") %></td>
                        <td><%#Eval("Turad") %></td>
                        <td><%#Eval("Tarih","{0: dd.MM.yyy}") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl='<%#"Adminblogsil.aspx?Id="+ Eval("Id") %>'>Sil</asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-warning" NavigateUrl='<%#"AdminBloggüncelleme.aspx?Id="+ Eval("Id") %>'>Blog Güncelle</asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-success" NavigateUrl='<%#"BlogDetay.aspx?Id="+Eval("Id") %>'>Detay</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
