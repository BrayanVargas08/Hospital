<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="Ambulancias.aspx.cs" Inherits="WebHospital.Vista.Ambulancias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form  runat="server">

   <!-- Start Page Title Section -->
    <div class="page-ttl">
        <div class="layer-stretch">
            <div class="page-ttl-container">
                <h1>AMBULANCIAS</h1>
                <p><a href="#">ADMINISTRADOR</a> &#8594; <span>Bienvenido AMBULANCIAS</span></p>
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
                    <asp:TextBox ID="txtCodigo" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Codigo</label>
                   <span class="mdl-textfield__error">Porfavor verifique su codigo!</span>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="TxtPlaca" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Placa</label>
                   <span class="mdl-textfield__error">Porfavor verifique su Placa!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="TxtConductor" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Conductor</label>
                   <span class="mdl-textfield__error">Porfavor verifique Conductor!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:RadioButtonList ID="RdbEstado" runat="server">
                        <asp:ListItem Text="Disponible"  Value="0"></asp:ListItem>
                        <asp:ListItem Text="No Disponible" Value="1"></asp:ListItem>
                       </asp:RadioButtonList>
                    
                </div>
               
                <div class="form-submit">
                    <asp:Button ID="btnRegistrarAmb" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Registrar Ambulancias" OnClick="btnRegistrarAmb_Click" ></asp:Button>
                    
                </div>
               
            </div>

        </div>
    </div><!-- End Register Section -->
</form>
</asp:Content>
