<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMesaj.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.AdminMesaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered"  style="margin-top:20px;">
        <tr>
            <th>Id</th>
            <th>Kullanıcı Adı</th>
            <th>Konu</th>
            <th>İçerik</th>
            <th>Detay</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Id") %></td>
                        <td><%#Eval("Name") %></td>
                        <td><%#Eval("Konu") %></td>
                        <td><%#Eval("Mesaj").ToString().Substring(0,20) %></td>
                        <td><asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success" NavigateUrl='<%#"Adminmesajdetay.aspx?Id="+ Eval("Id") %>'>Mesaj Detay</asp:HyperLink></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
