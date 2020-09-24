<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="Ambulancias.aspx.cs" Inherits="WebHospital.Vista.Ambulancias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
    <body>
        <form id="form1" runat="server">
            <div class="page-ttl">
                <div class="layer-stretch">
                    <div class="page-ttl-container">
                        <h1>AMBULANCIAS</h1>
                        <p><a href="#">ADMINISTRADOR</a> &#8594; <span>Bienvenido AMBULANCIAS</span></p>
                    </div>
                </div>
                </div>
                <div>
                    <asp:GridView ID="gvAmbulancias" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="IdAmbulancia"
                        ShowHeaderWhenEmpty="true"
                        OnRowCommand="gvPhoneBook_RowCommand" OnRowEditing="gvPhoneBook_RowEditing" OnRowCancelingEdit="gvPhoneBook_RowCancelingEdit"
                        OnRowUpdating="gvPhoneBook_RowUpdating" OnRowDeleting="gvPhoneBook_RowDeleting"
                        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="dropdown" style="width: 495px; height: 189px; top: 22px; left: 307px">
                        <%-- Theme Properties --%>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />

                        <Columns>
                            <asp:TemplateField HeaderText="Codigo">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Codigo") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtCodigo" Text='<%# Eval("Codigo") %>' runat="server" />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtCodigoFooter" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Placa">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Placa") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPlaca" Text='<%# Eval("Placa") %>' runat="server" />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtPlacaFooter" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Conductor">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Coductor") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtConductor" Text='<%# Eval("Coductor") %>' runat="server" />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtConductorFooter" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Estado">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("Estado") %>' runat="server" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEstado" Text='<%# Eval("Estado") %>' runat="server" />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtEstadoFooter" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ImageUrl="~/Vista/Template/images/editar.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                                    <asp:ImageButton ImageUrl="~/Vista/Template/images/eliminar.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:ImageButton ImageUrl="~/Vista/Template/images/guardar.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                                    <asp:ImageButton ImageUrl="~/Vista/Template/images/cancelar.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:ImageButton ImageUrl="~/Vista/Template/images/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px" />
                                </FooterTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <br />
                    <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" Font-Size="12px"/>
                    <br />
                    <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />

                </div>
        </form>
    </body>
    </html>

   </asp:Content>
