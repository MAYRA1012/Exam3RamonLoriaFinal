<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Usuariosentrar.aspx.cs" Inherits="FinalRamon_Loria.Usuariosentrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Button ID="badmin" class= "button" runat="server" Text="Administrador" OnClick="badmin_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="bregular" class= "button" runat="server" Text="Regular" OnClick="bregular_Click" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
