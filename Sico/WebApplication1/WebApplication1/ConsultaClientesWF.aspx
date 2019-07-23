﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ConsultaClientesWF.aspx.cs" Inherits="WebApplication1.ConsultaClientesWF" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-9 col-sm-9 col-xs-9">
        <div>
            <div class="row">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-9">
                    <div class="row">

                        <div class="form-group">
                            <asp:GridView ID="gvClientes" runat="server" Align="center" AllowPaging="true" AllowSorting="True"
                                SkinID="grilla" PageSize="15" AutoGenerateColumns="False" BackColor="White" BorderWidth="1px"
                                Width="100%" DataKeyNames="idCliente" OnRowCommand="gvClientes_RowCommand"
                                OnPageIndexChanging="gvClientes_PageIndexChanging">
                                <Columns>
                                    <asp:BoundField DataField="IdCliente" HeaderText="Nro.Identificador">
                                        <HeaderStyle CssClass="header_grilla" HorizontalAlign="Center" Width="200px" />
                                        <ItemStyle BorderColor="Black" CssClass="item_grilla" HorizontalAlign="left" Width="200px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="NombreRazonSocial" HeaderText="Nombre/Razón Social">
                                        <HeaderStyle CssClass="header_grilla" HorizontalAlign="Center" Width="1000px" />
                                        <ItemStyle BorderColor="Black" CssClass="item_grilla" HorizontalAlign="left" Width="200px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Cuit" HeaderText="Cuit">
                                        <HeaderStyle CssClass="header_grilla" HorizontalAlign="Center" Width="200px" />
                                        <ItemStyle BorderColor="Black" CssClass="item_grilla" HorizontalAlign="left" Width="200px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Actividad" HeaderText="Actividad">
                                        <HeaderStyle CssClass="header_grilla" HorizontalAlign="Center" Width="500px" />
                                        <ItemStyle BorderColor="Black" CssClass="item_grilla" HorizontalAlign="left" Width="200px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Ver">
                                        <HeaderStyle CssClass="header_grilla" HorizontalAlign="Center" Width="40px" />
                                        <ItemStyle BorderColor="Black" HorizontalAlign="Center" Width="40px" />
                                        <ItemTemplate>
                                            <asp:ImageButton ID="btnVer" runat="server" CommandArgument="<%# Container.DataItemIndex %>"
                                                CommandName="Ver" ImageUrl="App_Themes/imagenes/lupa.png" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Editar">
                                        <HeaderStyle CssClass="header_grilla" HorizontalAlign="Center" Width="40px" />
                                        <ItemStyle BorderColor="Black" HorizontalAlign="Center" Width="40px" />
                                        <ItemTemplate>
                                            <asp:ImageButton ID="btnEditar" runat="server" CommandArgument="<%# Container.DataItemIndex %>"
                                                CommandName="Editar" ImageUrl="App_Themes/imagenes/editar.png" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <div id="totales" class="total">
                                <asp:Label ID="Label3" runat="server" CssClass="total" Text="Total:"></asp:Label>
                                <asp:Label ID="lblTotalRegistros" runat="server" CssClass="total" Text="0"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
