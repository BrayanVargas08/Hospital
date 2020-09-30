<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterMedico.Master" AutoEventWireup="true" CodeBehind="Medicacion.aspx.cs" Inherits="WebHospital.Vista.Medicacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Start Page Title Section -->
        <div class="page-ttl">
            <div class="layer-stretch">
                <div class="page-ttl-container">
                    <h1>MEDICACION</h1>
                    <p><a href="#">MEDICO</a> &#8594; <span>Bienvenido MEDICACION</span></p>
                </div>
            </div>
        </div>
        <!-- End Page Title Section -->


        <!-- Start Register Section -->
        <div class="layer-stretch">

            <div class="layer-wrapper">
                <asp:Button class="close" data-dismiss="modal">&times;</asp:Button>

                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPaciente" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." OnSelectedIndexChanged="GridView2_SelectedIndexChanged" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowPaging="True">
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
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbHospitalPazConnectionString1 %>" DeleteCommand="DELETE FROM [Paciente] WHERE [IdPaciente] = @IdPaciente" InsertCommand="INSERT INTO [Paciente] ([Nombre], [Apellido], [Documento], [email], [Direccion], [Telefono], [FechaNacimiento], [Password], [Genero], [IdEps]) VALUES (@Nombre, @Apellido, @Documento, @email, @Direccion, @Telefono, @FechaNacimiento, @Password, @Genero, @IdEps)" ProviderName="<%$ ConnectionStrings:dbHospitalPazConnectionString1.ProviderName %>" SelectCommand="SELECT [IdPaciente], [Nombre], [Apellido], [Documento], [email], [Direccion], [Telefono], [FechaNacimiento], [Password], [Genero], [IdEps] FROM [Paciente]" UpdateCommand="UPDATE [Paciente] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Documento] = @Documento, [email] = @email, [Direccion] = @Direccion, [Telefono] = @Telefono, [FechaNacimiento] = @FechaNacimiento, [Password] = @Password, [Genero] = @Genero, [IdEps] = @IdEps WHERE [IdPaciente] = @IdPaciente">
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

                <br />
                <br />

                <div class="form-container">

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtHoraMedicacion" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Hora Medicacion</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Hora Medicacion!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtCantidad" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Cantidad</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Cantidad!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtMetodoAplicacion" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Metodo de Aplicacion</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Metodo de Aplicacion!</span>
                    </div>
                     <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:DropDownList ID="cmdProcesoGeneral" runat="server" class="mdl-textfield__input"></asp:DropDownList>
                            <label class="mdl-textfield__label" for="appointment-name">Proceso General</label>
                            <span class="mdl-textfield__error">Porfavor verifique su Proceso General!</span>
                        </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:DropDownList ID="cmbMedicamento" runat="server" class="mdl-textfield__input"></asp:DropDownList>
                            <label class="mdl-textfield__label" for="appointment-name">Medicamento</label>
                            <span class="mdl-textfield__error">Porfavor verifique su Medicamento!</span>
                        </div>
                     <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:DropDownList ID="cmbProcedimiento" runat="server" class="mdl-textfield__input"></asp:DropDownList>
                            <label class="mdl-textfield__label" for="appointment-name">Procedimiento</label>
                            <span class="mdl-textfield__error">Porfavor verifique su Procedimiento!</span>
                        </div>
                     <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtPaciente" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Paciente</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Paciente!</span>
                    </div>

                    <asp:Button ID="btnRegistroMedicacion" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Registro  Medicacion" OnClick="btnRegistroMedicacion_Click"></asp:Button>

                    <div class="form-submit">
                    </div>

                </div>

            </div>
        </div>
        <!-- End Register Section -->
</asp:Content>
