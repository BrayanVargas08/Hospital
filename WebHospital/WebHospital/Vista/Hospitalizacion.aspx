<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="Hospitalizacion.aspx.cs" Inherits="WebHospital.Vista.Hospitalizacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">


        <!-- Start Page Title Section -->
        <div class="page-ttl">
            <div class="layer-stretch">
                <div class="page-ttl-container">
                    <h1>HOSPITALIZACION</h1>
                    <p><a href="#">ADMINISTRADOR</a> &#8594; <span>Bienvenido HOSPITALIZACION</span></p>
                </div>
            </div>
        </div>
        <!-- End Page Title Section -->


        <!-- Start Register Section -->
        <div class="layer-stretch">

            <div class="layer-wrapper">
                <asp:Button class="close" data-dismiss="modal">&times;</asp:Button>

                <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField SelectText="AGREGAR" ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbHospitalPazConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbHospitalPazConnectionString1.ProviderName %>" SelectCommand="SELECT Urgencia.IdUrgencia, Urgencia.FechaHIngreso, Urgencia.FechaHSalida, Urgencia.Descripcion, Urgencia.Motivo, Paciente.Nombre, Paciente.Apellido, Paciente.Documento, Paciente.IdPaciente FROM Paciente INNER JOIN Urgencia ON Paciente.IdPaciente = Urgencia.IdPaciente"></asp:SqlDataSource>

                <br />
                <br />

                <div class="form-container">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtFechaHingreso" runat="server" class="mdl-textfield__input" onfocus="(this.type='date')" onblur="(this.type='text')"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Fecha Ingreso</label>
                        <span class="mdl-textfield__error">Porfavor verifique su fecha de ingreso!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtFechaHSalida" runat="server" class="mdl-textfield__input" onfocus="(this.type='date')" onblur="(this.type='text')"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Fecha Salida</label>
                        <span class="mdl-textfield__error">Porfavor verifique su fecha de ingreso!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="TxtMotivo" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Motivo</label>
                        <span class="mdl-textfield__error">Porfavor verifique su destino!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="TxtDescripcion" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Descripcion</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Ambulancia!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="TxtObservaciones" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Observaciones</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Ambulancia!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="TxtPaciente" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Paciente</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Ambulancia!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txturgencia" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Urgencia</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Ambulancia!</span>
                    </div>

                    <asp:Button ID="btnRegistroHospitalizacion" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Registro de Hospitalizacion" OnClick="btnRegistroHospitalizacion_Click"></asp:Button>

                    <div class="form-submit">
                    </div>

                </div>

            </div>
        </div>
        <!-- End Register Section -->
    </form>
</asp:Content>
