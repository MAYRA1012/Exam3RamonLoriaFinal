<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Consultas.aspx.cs" Inherits="FinalRamon_Loria.Consultas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>REPORTES</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Calculos">
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
    <asp:SqlDataSource ID="Calculos" runat="server" ConnectionString="<%$ ConnectionStrings:UHPRESUPUESTOConnectionString2 %>" InsertCommand="  insert into Mae_Articulo (Clave_Articulo , Descripcion_Articulo , Codigo_Tipo,Precio_Articulo,Costo_Articulo,Cantidad) values (@Clave_Articulo, @Descripcion_Articulo, @Codigo_Tipo,@Precio,@Costo,@Cantidad)" SelectCommand="reporteGanancias" SelectCommandType="StoredProcedure" DeleteCommand="delete Mae_Articulo where Clave_Articulo=@Clave_Articulo" UpdateCommand=" update Mae_Articulo set Descripcion_Articulo=@Descripcion_Articulo,Codigo_Tipo=@Codigo_Tipo,Precio_Articulo=@Precio,Costo_Articulo=@Costo,Cantidad=@Cantidad
  where Clave_Articulo=@Clave_Articulos">
        <DeleteParameters>
            <asp:ControlParameter ControlID="tcod" Name="Clave_Articulo" PropertyName="Text" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="tcod" Name="Clave_Articulo" PropertyName="Text" />
            <asp:ControlParameter ControlID="tnombre" Name="Descripcion_Articulo" PropertyName="Text" />
            <asp:ControlParameter ControlID="tCatego" Name="Codigo_Tipo" PropertyName="Text" />
            <asp:ControlParameter ControlID="tprecio" Name="Precio" PropertyName="Text" />
            <asp:ControlParameter ControlID="tcosto" Name="Costo" PropertyName="Text" />
            <asp:ControlParameter ControlID="tcant" Name="Cantidad" PropertyName="Text" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="tnombre" Name="Descripcion_Articulo" PropertyName="Text" />
            <asp:ControlParameter ControlID="tprecio" Name="Precio" PropertyName="Text" />
            <asp:ControlParameter ControlID="tcosto" Name="Costo" PropertyName="Text" />
            <asp:ControlParameter ControlID="tcant" Name="Cantidad" PropertyName="Text" />
            <asp:ControlParameter ControlID="tcod" Name="Clave_Articulos" PropertyName="Text" />
            <asp:ControlParameter ControlID="tCatego" Name="Codigo_Tipo" PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" Class="label" runat="server" Text="Codigo"></asp:Label>
    <asp:TextBox ID="tcod" runat="server"></asp:TextBox>
<asp:Label ID="Cedula" Class="label" runat="server" Text="Cantidad"></asp:Label>
&nbsp;<asp:TextBox ID="tcant" runat="server"></asp:TextBox>
    <br />
<asp:Label ID="Nombre" Class="label" runat="server" Text="Nombre"></asp:Label>
<asp:TextBox ID="tnombre" runat="server" Width="178px"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Text="Categoria"></asp:Label>
    <asp:TextBox ID="tCatego" runat="server"></asp:TextBox>
    <br />
<asp:Label ID="Apellido" Class="label" runat="server" Text="Precio"></asp:Label>
<asp:TextBox ID="tprecio" runat="server"></asp:TextBox>
<asp:Label ID="Label4" Class="label" runat="server" Text="Costo"></asp:Label>
<asp:TextBox ID="tcosto" runat="server"></asp:TextBox>
    &nbsp;&nbsp;<br />
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button2"  class= "button" runat="server" Text="Registra" OnClick="Button2_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="bborra" class= "button" runat="server" Text="Borrar" OnClick="bborra_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="bmodif" class= "button" runat="server" Text="Modificar" OnClick="bmodif_Click" />
<br />
<br />
<br />
<br />
</asp:Content>
