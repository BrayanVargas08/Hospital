<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterMedico.Master" AutoEventWireup="true" CodeBehind="Medicacion.aspx.cs" Inherits="WebHospital.Vista.Medicacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">


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

                <br />
                <br />

                <div class="form-container">

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtHoraMedicacion" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Hora Medicacion</label>
                        <span class="mdl-textfield__error">Porfavor verifique su fecha de traslado!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtCantidad" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Cantidad</label>
                        <span class="mdl-textfield__error">Porfavor verifique su destino!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtMetodoAplicacion" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Metodo de Aplicacion</label>
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

                    <asp:Button ID="btnRegistroMedicacion" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Registro de Medicacion" OnClick="btnRegistroMedicacion_Click"></asp:Button>

                    <div class="form-submit">
                    </div>

                </div>

            </div>
        </div>
        <!-- End Register Section -->
    </form>
</asp:Content>
