﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="Urgencias.aspx.cs" Inherits="WebHospital.Vista.Urgencias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

        <!-- Start Page Title Section -->
        <div class="page-ttl">
            <div class="layer-stretch">
                <div class="page-ttl-container">
                    <h1>URGENCIAS</h1>
                    <p><a href="indexadministrador.aspx">Home</a> &#8594; <span>Bienvenido a Urgencias</span></p>
                </div>
            </div>
        </div>
        <!-- End Page Title Section -->
        <!-- Start Register Section -->
        <div class="layer-stretch">


            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                <i class="fa fa-user-o"></i>
                <asp:TextBox ID="txtbuscar" runat="server" class="mdl-textfield__input"></asp:TextBox>
                <label class="mdl-textfield__label" for="appointment-name">Buscar Paciente</label>
                <span class="mdl-textfield__error">Porfavor verifique el buscar del paciente!</span>
                <!-- botones -->
            </div>
            <div class="form-submit">
                <asp:Button ID="butonBuscar" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Buscar" OnClick="butonBuscar_Click"></asp:Button>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbHospitalPazConnectionString1 %>" DeleteCommand="DELETE FROM [Paciente] WHERE [IdPaciente] = @IdPaciente" InsertCommand="INSERT INTO [Paciente] ([Nombre], [Apellido], [Documento], [email], [Direccion], [Telefono], [FechaNacimiento], [Password], [Genero], [IdEps]) VALUES (@Nombre, @Apellido, @Documento, @email, @Direccion, @Telefono, @FechaNacimiento, @Password, @Genero, @IdEps)" ProviderName="<%$ ConnectionStrings:dbHospitalPazConnectionString1.ProviderName %>" SelectCommand="SELECT [IdPaciente], [Nombre], [Apellido], [Documento], [email], [Direccion], [Telefono], [FechaNacimiento], [Password], [Genero], [IdEps] FROM [Paciente]" UpdateCommand="UPDATE [Paciente] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Documento] = @Documento, [email] = @email, [Direccion] = @Direccion, [Telefono] = @Telefono, [FechaNacimiento] = @FechaNacimiento, [Password] = @Password, [Genero] = @Genero, [IdEps] = @IdEps WHERE [IdPaciente] = @IdPaciente">
                    <DeleteParameters>
                        <asp:Parameter Name="IdPaciente" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Documento" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Telefono" Type="Int64" />
                        <asp:Parameter DbType="Date" Name="FechaNacimiento" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Genero" Type="String" />
                        <asp:Parameter Name="IdEps" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Documento" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Telefono" Type="Int64" />
                        <asp:Parameter DbType="Date" Name="FechaNacimiento" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Genero" Type="String" />
                        <asp:Parameter Name="IdEps" Type="Int32" />
                        <asp:Parameter Name="IdPaciente" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPaciente" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Style="width: 522px; height: 133px; left: 15px; top: 81px" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" PageSize="7">
                    <Columns>
                        <asp:BoundField DataField="IdPaciente" HeaderText="IdPaciente" ReadOnly="True" SortExpression="IdPaciente" Visible="False" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" SortExpression="FechaNacimiento" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" Visible="False" />
                        <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
                        <asp:BoundField DataField="IdEps" HeaderText="IdEps" SortExpression="IdEps" Visible="False" />
                        <asp:CommandField SelectText="AGREGAR" ShowSelectButton="True" DeleteText="ELIMINAR" EditText="EDITAR" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <br />
                <br />
            </div>
            <!-- datagriv -->
            <asp:GridView ID="gvPacientes" runat="server" class="mdl-textfield__input"></asp:GridView>
            <div class="layer-wrapper">
                <asp:Button class="close" data-dismiss="modal">&times;</asp:Button>
                <div class="form-container">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:TextBox ID="txtfechaingreso" runat="server" class="mdl-textfield__input" onfocus="(this.type='date')" onblur="(this.type='text')"></asp:TextBox>
                            <label class="mdl-textfield__label" for="appointment-name">Fecha de Ingreso</label>
                            <span class="mdl-textfield__error">Porfavor verifique su fecha de ingreso!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:TextBox ID="txtfechasalida" runat="server" class="mdl-textfield__input" onfocus="(this.type='date')" onblur="(this.type='text')"></asp:TextBox>
                            <label class="mdl-textfield__label" for="appointment-name">Fecha de final</label>
                            <span class="mdl-textfield__error">Porfavor verifique su fecha final!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:TextBox ID="Textmotivo" runat="server" class="mdl-textfield__input"></asp:TextBox>
                            <label class="mdl-textfield__label" for="appointment-name">Motivio</label>
                            <span class="mdl-textfield__error">Porfavor verifique su motivo!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:TextBox ID="Textdescripcion" runat="server" class="mdl-textfield__input"></asp:TextBox>
                            <label class="mdl-textfield__label" for="appointment-name">Descripcion</label>
                            <span class="mdl-textfield__error">Porfavor verifique su descripcion!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:DropDownList ID="cmdtriage" runat="server" class="mdl-textfield__input"></asp:DropDownList>
                            <label class="mdl-textfield__label" for="appointment-name">Triage</label>
                            <span class="mdl-textfield__error">Porfavor verifique su triage!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:TextBox ID="TxtPaciente" runat="server" class="mdl-textfield__input"></asp:TextBox>
                            <label class="mdl-textfield__label" for="appointment-name">Paciente</label>
                            <span class="mdl-textfield__error">Porfavor verifique su paciente!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <i class="fa fa-hospital-o"></i>
                            <%--<asp:DropDownList ID="cmbEspecialidad" runat="server" class="mdl-textfield__input"></asp:DropDownList>--%>
                           <asp:DropDownList ID="dropEspecialidad" runat="server" class="mdl-selectfield__select" AutoPostBack="true" OnSelectedIndexChanged="EspecialidadSeleccionada"></asp:DropDownList>
                            <label class="mdl-textfield__label" for="appointment-name">Especialidad</label>
                            <span class="mdl-textfield__error">Porfavor verifique su Especialidad!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-md"></i>
                            <%--<asp:DropDownList ID="cmbMedico" runat="server" class="mdl-textfield__input"></asp:DropDownList>--%>
                           <asp:DropDownList ID="dropEspecialista" runat="server" class="mdl-selectfield__select" AutoPostBack="true"></asp:DropDownList>
                            <label class="mdl-textfield__label" for="appointment-name">Medico</label>
                            <span class="mdl-textfield__error">Porfavor verifique su medico!</span>
                        </div>
                        <%--      <div class="col-md-6">
                            <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                                <i class="fa fa-hospital-o"></i>
                                <asp:DropDownList ID="dropEspecialidad" runat="server" class="mdl-selectfield__select" AutoPostBack="true" OnSelectedIndexChanged="EspecialidadSeleccionada"></asp:DropDownList>
                                <label class="mdl-selectfield__label" for="appointment-department">Selecione Especialidad</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                                <i class="fa fa-user-md"></i>
                                <asp:DropDownList ID="dropEspecialista" runat="server" class="mdl-selectfield__select" AutoPostBack="true"></asp:DropDownList>
                                <select class="mdl-selectfield__select" id="appointment-doctor">
                                </select>
                                <label class="mdl-selectfield__label" for="appointment-doctor">Seleccione Un Especialista</label>
                            </div>
                        </div>--%>
                        <div class="form-submit">
                            <asp:Button ID="btnRegistrar" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Registrar Urgencia" OnClick="btnRegistrar_Click" Style="left: 35px; bottom: -30px"></asp:Button>

                        </div>




                    </div>
                </div>
            </div>
            <!-- End Register Section -->
    
</asp:Content>
