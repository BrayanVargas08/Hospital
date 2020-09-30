<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterUsuarios.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="WebHospital.Vista.Lista" %>

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
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbHospitalPazConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbHospitalPazConnectionString1.ProviderName %>" SelectCommand="SELECT Hospitalizacion.IdHospitalizacion, Hospitalizacion.FechaHIngreso, Hospitalizacion.FechaHSalida, Hospitalizacion.Motivo, Hospitalizacion.Descripcion, Hospitalizacion.Observaciones, Paciente.IdPaciente, Paciente.Nombre, Paciente.Apellido, Paciente.Documento FROM Hospitalizacion INNER JOIN Paciente ON Hospitalizacion.IdPaciente = Paciente.IdPaciente"></asp:SqlDataSource>
                <div class="form-container">

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtFechaHTraslado" runat="server" class="mdl-textfield__input" onfocus="(this.type='date')" onblur="(this.type='text')"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Fecha Traslado</label>
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
                        <span class="mdl-textfield__error">Porfavor verifique su destino!</span>
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
