<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterMedico.Master" AutoEventWireup="true" CodeBehind="Procedimiento.aspx.cs" Inherits="WebHospital.Vista.Procedimiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- Start Page Title Section -->
        <div class="page-ttl">
            <div class="layer-stretch">
                <div class="page-ttl-container">
                    <h1>PROCEDIMIENTOS</h1>
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
                <asp:Button ID="butonBuscar" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Buscar" OnClick="butonBuscar_Click"></asp:Button>
                &nbsp;<br />
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
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
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbHospitalPazConnectionString1 %>" DeleteCommand="DELETE FROM [Hospitalizacion] WHERE [IdHospitalizacion] = @IdHospitalizacion" InsertCommand="INSERT INTO [Hospitalizacion] ([FechaHIngreso], [FechaHSalida], [Motivo], [Descripcion], [Observaciones], [IdPaciente], [IdUrgencia]) VALUES (@FechaHIngreso, @FechaHSalida, @Motivo, @Descripcion, @Observaciones, @IdPaciente, @IdUrgencia)" ProviderName="<%$ ConnectionStrings:dbHospitalPazConnectionString1.ProviderName %>" SelectCommand="SELECT Hospitalizacion.IdHospitalizacion, Hospitalizacion.FechaHIngreso, Hospitalizacion.FechaHSalida, Hospitalizacion.Motivo, Hospitalizacion.Descripcion, Hospitalizacion.Observaciones, Paciente.Nombre, Paciente.Apellido, Paciente.Documento FROM Hospitalizacion INNER JOIN Paciente ON Hospitalizacion.IdPaciente = Paciente.IdPaciente" UpdateCommand="UPDATE [Hospitalizacion] SET [FechaHIngreso] = @FechaHIngreso, [FechaHSalida] = @FechaHSalida, [Motivo] = @Motivo, [Descripcion] = @Descripcion, [Observaciones] = @Observaciones, [IdPaciente] = @IdPaciente, [IdUrgencia] = @IdUrgencia WHERE [IdHospitalizacion] = @IdHospitalizacion">
                    <DeleteParameters>
                        <asp:Parameter Name="IdHospitalizacion" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FechaHIngreso" Type="DateTime" />
                        <asp:Parameter Name="FechaHSalida" Type="DateTime" />
                        <asp:Parameter Name="Motivo" Type="String" />
                        <asp:Parameter Name="Descripcion" Type="String" />
                        <asp:Parameter Name="Observaciones" Type="String" />
                        <asp:Parameter Name="Documento" Type="Int32" />
                        <asp:Parameter Name="IdUrgencia" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FechaHIngreso" Type="DateTime" />
                        <asp:Parameter Name="FechaHSalida" Type="DateTime" />
                        <asp:Parameter Name="Motivo" Type="String" />
                        <asp:Parameter Name="Descripcion" Type="String" />
                        <asp:Parameter Name="Observaciones" Type="String" />
                        <asp:Parameter Name="Documento" Type="Int32" />
                        <asp:Parameter Name="IdUrgencia" Type="Int32" />
                        <asp:Parameter Name="IdHospitalizacion" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </div>
            <!-- datagriv -->
            <asp:GridView ID="gvPacientes" runat="server" class="mdl-textfield__input"></asp:GridView>
            <div class="layer-wrapper">
                <asp:Button class="close" data-dismiss="modal">&times;</asp:Button>
                <div class="form-container">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtDescripcion" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Descripcion</label>
                        <span class="mdl-textfield__error">Porfavor verifique su descripcion!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtObservaciones" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Observaciones</label>
                        <span class="mdl-textfield__error">Porfavor verifique su observacion!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:TextBox ID="txtfechaproceso" runat="server" class="mdl-textfield__input" onfocus="(this.type='date')" onblur="(this.type='text')"></asp:TextBox>
                            <label class="mdl-textfield__label" for="appointment-name">Fecha del Proceso</label>
                            <span class="mdl-textfield__error">Porfavor verifique su fecha del proceso!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:TextBox ID="txtHospitalizacion" runat="server" class="mdl-textfield__input"></asp:TextBox>
                            <label class="mdl-textfield__label" for="appointment-name">Hospitalizacion</label>
                            <span class="mdl-textfield__error">Porfavor verifique su Hospitalizacion!</span>
                        </div>
                        <div class="form-submit">
                            <asp:Button ID="btnRegistrar" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Registrar Procedimiento" OnClick="btnRegistrar_Click" Style="left: 35px; bottom: -30px"></asp:Button>
                        </div>


                    </div>
                </div>
            </div>
            <!-- End Register Section -->
</asp:Content>
