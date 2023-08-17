<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminTür.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.AdminTür" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:20px 0px;">
        <a href="Admintürekleme.aspx" class="btn btn-info">Tür Ekle</a>
    </div>
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Tür Adı</th>
            <th>Güncelle</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Id") %></td>
                        <td><%#Eval("TurAd") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-warning" NavigateUrl='<%#"Admintürgüncelle.aspx?Id="  +Eval("Id") %>'>Güncelle</asp:HyperLink></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>  
    </table>
</asp:Content>

