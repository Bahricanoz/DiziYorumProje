<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYorum.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.AdminYorum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered" style="margin-top:20px;">
        <tr>
            <th>Id</th>
            <th>Kullanıcı Adı</th>
            <th>Mail</th>
            <th>İçerik</th>
            <th>Blog</th>
            <th>Sil</th>
            <th>Güncelle</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Id") %></td>
                        <td><%#Eval("Name") %></td>
                        <td><%#Eval("Mail") %></td>
                        <td><%#Eval("İcerik") %></td>
                        <td><%#Eval("Baslik") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl='<%#"Adminyorumsilme.aspx?Id="+ Eval("Id") %>'>Sil</asp:HyperLink>

                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-warning" NavigateUrl='<%#"Adminyorumguncelle.aspx?Id="+ Eval("Id") %>'>Yorum Güncelle</asp:HyperLink>
                        </td>
                        
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
