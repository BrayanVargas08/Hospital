<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="Traslado.aspx.cs" Inherits="WebHospital.Vista.Traslado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        // ver datos de abulanciaas
   
   <!-- Start Page Title Section -->
        <div class="page-ttl">
            <div class="layer-stretch">
                <div class="page-ttl-container">
                    <h1>TRANSLADO</h1>
                    <p><a href="#">ADMINISTRADOR</a> &#8594; <span>Bienvenido TRANSLADO</span></p>
                </div>
            </div>
        </div>
        <!-- End Page Title Section -->

        <!-- Start Register Section -->
        <div class="layer-stretch">

            <div class="layer-wrapper">
                <asp:Button class="close" data-dismiss="modal">&times;</asp:Button>
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
                <div class="form-container">

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:TextBox ID="txtFechaHTraslado" runat="server" class="mdl-textfield__input" onfocus="(this.type='date')" onblur="(this.type='text')"></asp:TextBox>
                            <label class="mdl-textfield__label" for="appointment-name">Fecha de Traslado</label>
                            <span class="mdl-textfield__error">Porfavor verifique su fecha de traslado!</span>
                        </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="TxtDescripcion" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Descripcion</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Descripcion!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="TxtDestino" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Destino</label>
                        <span class="mdl-textfield__error">Porfavor verifique su destino!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:DropDownList ID="cmbAmbulancia" runat="server" class="mdl-textfield__input"></asp:DropDownList>
                        <label class="mdl-textfield__label" for="appointment-name">Ambulancia</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Ambulancia!</span>
                    </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtHospitalizacion" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Hospitalizacion</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Hospializacion!</span>
                    </div>
                    

                    <div class="form-submit">
                        <asp:Button ID="btnRegistrarTralado" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Registrar Traslado" OnClick="btnRegistrarTralado_Click"></asp:Button>

                    </div>

                </div>

            </div>
        </div>
        <!-- End Register Section -->
    </form>
</asp:Content>
