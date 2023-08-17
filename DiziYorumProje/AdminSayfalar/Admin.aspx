<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:20px 0px;">
        <a href="#" class="btn btn-info">Admin Ekle</a>
    </div>
    <table class="table table-bordered">
        <tr>
            <th>Id</th>
            <th>İsim</th>
            <th>Kullanıcı Adı</th>
            <th>Şİfre</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Id") %></td>
                        <td><%#Eval("isim") %></td>
                        <td><%#Eval("kullaniciadi") %></td>
                        <td><%#Eval("sifre") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
