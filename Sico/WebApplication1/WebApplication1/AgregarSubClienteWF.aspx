﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AgregarSubClienteWF.aspx.cs" Inherits="WebApplication1.AgregarSubClienteWF" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-9 col-sm-9 col-xs-9" style="margin-left: 100px">
        <div>
            <div class="row">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                            </div>
                        </div>
                        <div class="col-sm-2" style="margin-left: 250px">
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="Sub-Cliente" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <%--    Datos Cliente--%>
                <div class="row">
                    <div class="col-sm-3">
                    </div>
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label3" runat="server" Text="Nombre o Razón Social:" Font-Size="Large" ForeColor="SteelBlue"></asp:Label>
                                    <asp:Label ID="lblCliente" runat="server" Text="Hola Mundo" Font-Size="Large" ForeColor="SteelBlue"></asp:Label>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <asp:Label ID="Label5" runat="server" Text="Cuit:" Font-Size="Large" ForeColor="SteelBlue"></asp:Label>
                                    <asp:Label ID="lblCuit" runat="server" Text="Hola Mundo" Font-Size="Large" ForeColor="SteelBlue"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--    Filtros--%>
                <div class="row">
                    <div class="col-sm-3">
                    </div>
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <asp:Label ID="lblDni" runat="server" Text="Dni:" Font-Size="Large" ForeColor="SteelBlue"></asp:Label>
                                    <asp:TextBox class="form-control" ID="txtDni" runat="server" MaxLength="8" TextMode="Number" CharacterCasing="Upper"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <asp:Label ID="lblApellido" runat="server" Text="Apellido:" Font-Size="Large" ForeColor="SteelBlue"></asp:Label>
                                    <asp:TextBox class="form-control" ID="txtApellido" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <asp:Button ID="btnBuscar" class="btn btn-primary" Style="display: inline-block;" Width="80px" Height="60px" runat="server" Text="Buscar" Font-Size="Small" OnClick="btnBuscar_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="col-sm-9">
                    <div class="row">
                        <div class="form-group" style="margin-left: 450px">
                            <asp:GridView ID="gvSubClientes" runat="server" Align="center" AllowPaging="true" AllowSorting="True"
                                SkinID="grilla" PageSize="10" AutoGenerateColumns="False" BackColor="White" BorderWidth="1px"
                                Width="100%" DataKeyNames="idSubCliente" OnRowCommand="gvSubClientes_RowCommand"
                                OnPageIndexChanging="gvSubClientes_PageIndexChanging" Visible="false">
                                <Columns>
                                    <asp:BoundField DataField="idSubCliente" HeaderText="Nro.Identificador">
                                        <HeaderStyle CssClass="header_grilla" HorizontalAlign="Center" Width="100px" />
                                        <ItemStyle BorderColor="Black" CssClass="item_grilla" HorizontalAlign="left" Width="200px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ApellidoNombre" HeaderText="Sub Cliente">
                                        <HeaderStyle CssClass="header_grilla" HorizontalAlign="Center" Width="200px" />
                                        <ItemStyle BorderColor="Black" CssClass="item_grilla" HorizontalAlign="left" Width="300px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Dni" HeaderText="Dni">
                                        <HeaderStyle CssClass="header_grilla" HorizontalAlign="Center" Width="80px" />
                                        <ItemStyle BorderColor="Black" CssClass="item_grilla" HorizontalAlign="left" Width="100px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Ver">
                                        <HeaderStyle CssClass="header_grilla" HorizontalAlign="Center" Width="40px" />
                                        <ItemStyle BorderColor="Black" HorizontalAlign="Center" Width="40px" />
                                        <ItemTemplate>
                                            <asp:ImageButton ID="btnVer" runat="server" CommandArgument="<%# Container.DataItemIndex %>"
                                                CommandName="Ver" ImageUrl="App_Themes/imagenes/lupa.png" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <div id="totales" class="total">
                                <asp:Label ID="lblTotal" runat="server" CssClass="total" Text="Total:" Visible="false"></asp:Label>
                                <asp:Label ID="lblTotalRegistros" runat="server" CssClass="total" Text="0" Visible="false"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <%--    Mensaje Rojo--%>
                <div class="col-sm-9">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <asp:Label ID="lblMensaje" runat="server" Text="No se encontraron resultados para los parametros seleccionados." Font-Size="Large" ForeColor="Red" Visible="false" Width="600px"></asp:Label>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div style="padding-left: 580px">
                <asp:Button ID="btnNuevo" class="btn btn-primary" Style="display: inline-block;" Width="130px" Height="61px" runat="server" Text="Nuevo Sub-Cliente" Font-Size="Small" OnClick="btnNuevo_Click" />
            </div>
            <div class="row" style="margin-left: 580px;">
                <div class="col-sm-4">
                    <div class="form-group">
                    </div>
                </div>
            </div>
            <div class="row" style="margin-left: 520px;">
                <div class="col-sm-4">
                    <div class="form-group">
                        <asp:Label ID="lblNuevoSubCliente" runat="server" Text="Nuevo Sub-Cliente" Font-Size="XX-Large" ForeColor="Black" Visible="false" Width="600px"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-left: 100px;">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-9">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <asp:Label ID="lblDniNuevo" runat="server" CssClass="total" Text="DNI(*):" Visible="false"></asp:Label>
                                <asp:TextBox class="form-control" ID="txtDniNuevo" runat="server" MaxLength="8" Visible="false" TextMode="Number" CharacterCasing="Upper"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <asp:Label ID="lblApellidoNombreNuevo" runat="server" CssClass="total" Text="Apellido y Nombre(*):" Visible="false"></asp:Label>
                                <asp:TextBox class="form-control" ID="txtApellidoNombreNuevo" runat="server" Visible="false" Style="text-transform: uppercase"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <asp:Label ID="lblCalleNuevo" runat="server" CssClass="total" Text="Calle(*):" Visible="false"></asp:Label>
                                <asp:TextBox class="form-control" ID="txtCalle" runat="server" Visible="false" Style="text-transform: uppercase"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <asp:Label ID="lblAlturaNuevo" runat="server" CssClass="total" Text="Altura(*):" Visible="false"></asp:Label>
                                <asp:TextBox class="form-control" ID="txtAltura" runat="server" Visible="false" TextMode="Number" Style="text-transform: uppercase"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <asp:Label ID="lblObservacionesNuevo" runat="server" CssClass="total" Text="Observaciones(*):" Visible="false"></asp:Label>
                                <asp:TextBox class="form-control" ID="txtObservaciones" runat="server" Visible="false" Height="100px" Width="550px" TextMode="MultiLine" Style="text-transform: uppercase"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="padding-left: 450px">
                    <asp:Button ID="btnLimpiar" class="btn btn-primary" Style="display: inline-block;" Width="110px" Height="61px" runat="server" Text="Limpiar" Font-Size="Small" Visible="false" />
                    <asp:Button ID="btnGuardar" class="btn btn-primary" Style="display: inline-block;" Width="110px" Height="61px" runat="server" Text="Guardar" Font-Size="Small" Visible="false" OnClick="btnGuardar_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>


