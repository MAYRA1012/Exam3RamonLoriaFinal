<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Regular.aspx.cs" Inherits="FinalRamon_Loria.Regular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="RegUsua">
    <Columns>
        <asp:BoundField DataField="Clave_Articulo" HeaderText="Clave_Articulo" SortExpression="Clave_Articulo" />
        <asp:BoundField DataField="Descripcion_Articulo" HeaderText="Descripcion_Articulo" SortExpression="Descripcion_Articulo" />
        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
        <asp:BoundField DataField="Precio_Articulo" HeaderText="Precio_Articulo" SortExpression="Precio_Articulo" />
        <asp:BoundField DataField="Costo_Articulo" HeaderText="Costo_Articulo" SortExpression="Costo_Articulo" />
        <asp:BoundField DataField="Total Ventas" HeaderText="Total Ventas" ReadOnly="True" SortExpression="Total Ventas" />
        <asp:BoundField DataField="Total Costo" HeaderText="Total Costo" ReadOnly="True" SortExpression="Total Costo" />
        <asp:BoundField DataField="Ganancias" HeaderText="Ganancias" ReadOnly="True" SortExpression="Ganancias" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="RegUsua" runat="server" ConnectionString="<%$ ConnectionStrings:UHPRESUPUESTOConnectionString4 %>" SelectCommand="reporteGanancias" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </asp:Content>
