﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="Urgencias.aspx.cs" Inherits="WebHospital.Vista.Urgencias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form  runat="server">

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
                    <asp:TextBox ID="txtbuscar" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Buscar Paciente</label>
                   <span class="mdl-textfield__error">Porfavor verifique el buscar del paciente!</span>
                    <!-- botones -->
                </div>
                <div class="form-submit">
                    <asp:Button ID="butonBuscar" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Buscar" OnClick="butonBuscar_Click" ></asp:Button>
                </div>
                <!-- datagriv -->
                 <asp:GridView ID="gvPacientes" runat="server" class="mdl-textfield__input" ></asp:GridView>
               
                
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="txtfechaingreso" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Fecha de Ingreso</label>
                   <span class="mdl-textfield__error">Porfavor verifique su fecha de ingreso!</span>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="Textfechafinal" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Fecha de final</label>
                   <span class="mdl-textfield__error">Porfavor verifique su fecha final!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="Textmotivo" runat="server" class="mdl-textfield__input" ></asp:TextBox>
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
                    <asp:DropDownList ID="cmdtriage" runat="server" class="mdl-textfield__input" ></asp:DropDownList>
                   <label class="mdl-textfield__label" for="appointment-name">Triage</label>
                   <span class="mdl-textfield__error">Porfavor verifique su triage!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <%--<i class="fa fa-user-o"></i>--%>
                    <asp:DropDownList ID="cmbpaciente" runat="server" class="mdl-textfield__input" ></asp:DropDownList>
                   <label class="mdl-textfield__label" for="appointment-name">Paciente</label>
                   <span class="mdl-textfield__error">Porfavor verifique su paciente!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                  <asp:DropDownList ID="cmbMedico" runat="server" class="mdl-textfield__input" ></asp:DropDownList>
                  <label class="mdl-textfield__label" for="appointment-name">Medico</label>
                     <span class="mdl-textfield__error">Porfavor verifique su medico!</span>
                </div>
                
                <div class="form-submit">
                    <asp:Button ID="btnRegistrar" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Registrar Urgencia" OnClick="btnRegistrar_Click" ></asp:Button>
                    
                </div>
               
            </div>

        </div>
    </div><!-- End Register Section -->
</form>
</asp:Content>
