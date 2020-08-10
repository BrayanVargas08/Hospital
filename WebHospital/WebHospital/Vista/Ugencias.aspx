<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="Ugencias.aspx.cs" Inherits="WebHospital.Vista.Ugencias" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <!-- Start Page Title Section -->
    <div class="page-ttl">
        <div class="layer-stretch">
            <div class="page-ttl-container">
                <h1>URGENCIAS</h1>
                <p><a href="#">Home</a> &#8594; <span>Bienvenido a Urgencias</span></p>
            </div>
        </div>
    </div><!-- End Page Title Section -->
    <!-- Start Register Section -->
    <div class="layer-stretch">
        <div class="layer-wrapper">
             <asp:Button class="close" data-dismiss="modal">&times;</asp:Button>
            <div class="form-container">
                
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    
                    <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name">
                     <asp:TextBox ID="txtfechaingreso" runat="server" class="mdl-textfield__input" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"></asp:TextBox>
                    <span class="mdl-textfield__error">¡Por favor introduzca una fecha de inicio valida!!</span>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-ingreso">
                    <label class="mdl-textfield__label" for="register-name">Fecha de salida <em> *</em></label>
                    <span class="mdl-textfield__error">¡Por favor introduzca una fecha final  valida!!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-motivio">
                    <label class="mdl-textfield__label" for="register-name">Motivo <em> *</em></label>
                    <span class="mdl-textfield__error">¡Por favor introduzca un motivo  valida!!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-descripcion">
                    <label class="mdl-textfield__label" for="register-name">Descripcion<em> *</em></label>
                    <span class="mdl-textfield__error">¡Por favor introduzca una descripcion valida!!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-triage">
                    <label class="mdl-textfield__label" for="register-name">triage <em> *</em></label>
                    <span class="mdl-textfield__error">¡Por favor introduzca una fecha fina  valida!!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-paciente">
                    <label class="mdl-textfield__label" for="register-name">paciente <em> *</em></label>
                    <span class="mdl-textfield__error">¡Por favor introduzca un paciente valido!!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-medico">
                    <label class="mdl-textfield__label" for="register-name">medico <em> *</em></label>
                    <span class="mdl-textfield__error">¡Por favor introduzca un medico  valida!!</span>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-envelope-o"></i>
                    <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="register-email">
                    <label class="mdl-textfield__label" for="register-email">E <em> *</em></label>
                    <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-key"></i>
                    <input class="mdl-textfield__input" type="password" id="register-password">
                    <label class="mdl-textfield__label" for="register-password">Password <em> *</em></label>
                    <span class="mdl-textfield__error">Please Enter Valid Password(Min 6 Character)!</span>
                </div>
                <div class="form-submit">
                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">registrar urgencia</button>
                </div>
               
            </div>

        </div>
    </div><!-- End Register Section -->
</asp:Content>
