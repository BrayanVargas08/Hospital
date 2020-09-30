<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterMedico.Master" AutoEventWireup="true" CodeBehind="ProcesoGeneral.aspx.cs" Inherits="WebHospital.Vista.ProcesoGeneral" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Start Page Title Section -->
        <div class="page-ttl">
            <div class="layer-stretch">
                <div class="page-ttl-container">
                    <h1>PROCESOS</h1>
                    <p><a href="indexadministrador.aspx">Home</a> &#8594; <span>Bienvenido a Procedimientos</span></p>
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
                <%--<asp:Button ID="butonBuscar" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Buscar" OnClick="butonBuscar_Click"></asp:Button>--%>
                &nbsp;<br />
                <%--<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <Columns>
                        <asp:CommandField SelectText="AGREGAR" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>--%>
                <br />
                <br />
            </div>
            <!-- datagriv -->
            <div class="layer-wrapper">
                <asp:Button class="close" data-dismiss="modal">&times;</asp:Button>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="IdPaciente" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="IdPaciente" HeaderText="IdPaciente" ReadOnly="True" SortExpression="IdPaciente" Visible="False" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" Visible="False" />
                        <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" Visible="False" />
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" Visible="False" />
                        <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" SortExpression="FechaNacimiento" Visible="False" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" Visible="False" />
                        <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" Visible="False" />
                        <asp:BoundField DataField="IdEps" HeaderText="IdEps" SortExpression="IdEps" Visible="False" />
                        <asp:CommandField SelectText="Agregar" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
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
                <div class="form-container">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtDiagnostico" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Diagnostico</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Diagnostico!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtValoracion" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Valoracion</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Valoracion!</span>
                    </div>
                     <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtPaciente" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Paciente</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Paciente!</span>
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
                        <div class="form-submit">
                            <asp:Button ID="btnRegistrar" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Registrar Proceso" OnClick="btnRegistrar_Click" Style="left: 35px; bottom: -30px"></asp:Button>
                        </div>


                    </div>
                </div>
            </div>
            <!-- End Register Section -->
</asp:Content>
