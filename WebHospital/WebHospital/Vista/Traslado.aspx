<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="Traslado.aspx.cs" Inherits="WebHospital.Vista.Traslado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form  runat="server">
        // ver datos de abulanciaas
   
   <!-- Start Page Title Section -->
    <div class="page-ttl">
        <div class="layer-stretch">
            <div class="page-ttl-container">
                <h1>TRANSLADO
                <p><a href="#">ADMINISTRADOR</a> &#8594; <span>Bienvenido TRANSLADO
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
                    <asp:TextBox ID="txtFechaHTraslado" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Fecha de Traslado</label>
                   <span class="mdl-textfield__error">Porfavor verifique su fecha de traslado!</span>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="TxtDescripcion" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Descripcion</label>
                   <span class="mdl-textfield__error">Porfavor verifique su Descripcion!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="TxtDestino" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Destino</label>
                   <span class="mdl-textfield__error">Porfavor verifique su destino!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:DropDownList ID="cmbAmbulancia" runat="server" class="mdl-textfield__input" ></asp:DropDownList>
                   <label class="mdl-textfield__label" for="appointment-name">Ambulancia</label>
                   <span class="mdl-textfield__error">Porfavor verifique su Ambulancia!</span>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:DropDownList ID="cmbHospitalizacion" runat="server" class="mdl-textfield__input" ></asp:DropDownList>
                   <label class="mdl-textfield__label" for="appointment-name">Hospitalizacion</label>
                   <span class="mdl-textfield__error">Porfavor verifique su Hospitalizacion!</span>
                </div>
               
                <div class="form-submit">
                    <asp:Button ID="btnRegistrarTralado" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Registrar Traslado" OnClick="btnRegistrarTralado_Click"  ></asp:Button>
                    
                </div>
               
            </div>

        </div>
    </div><!-- End Register Section -->
</form>
</asp:Content>
