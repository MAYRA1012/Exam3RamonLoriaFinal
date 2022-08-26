<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="FinalRamon_Loria.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Login</h1>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" class="label info" runat="server" Text="Usuario"></asp:Label>
    &nbsp;<asp:TextBox ID="tusuario" runat="server" Width="152px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" class="label info" runat="server" Text="Contraseña"></asp:Label>
    &nbsp;<asp:TextBox ID="tclave2" type="password" runat="server" Width="179px" Height="33px"></asp:TextBox>
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="bingresos"  class= "button" runat="server" Text="Ingreso" OnClick="bingresos_Click1" />
    <br />
<br />
<br />
Si aun no es usuario 
    <a href="Facturas.aspx">registrese</a>
<br />
<br />
<br />
    <br />
    <br />



</asp:Content>



