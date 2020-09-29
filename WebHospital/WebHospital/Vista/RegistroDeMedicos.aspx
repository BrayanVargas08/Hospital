<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="RegistroDeMedicos.aspx.cs" Inherits="WebHospital.Vista.RegistroDeMedicos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat ="server">
        <!-- Start Page Title Section -->
            <div class="page-ttl">
                <div class="layer-stretch">
                    <div class="page-ttl-container">
                        <h1>Registrarse</h1>
                        <p><a href="#">Home</a> &#8594; <span>Register</span></p>
                    </div>
                </div>
            </div>
            <!-- End Page Title Section -->
            <!-- Start Register Section -->
            <div class="layer-stretch">
                <div class="layer-wrapper">
                    <div class="form-container">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                            <asp:TextBox ID="txtNombre" class="mdl-textfield__input" pattern="[A-Z,a-z, ]*" runat="server"></asp:TextBox>
                            <label class="mdl-textfield__label" for="register-name">Nombre <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                            <asp:TextBox ID="txtApellido" class="mdl-textfield__input" pattern="[A-Z,a-z, ]*" runat="server"></asp:TextBox>
                            <label class="mdl-textfield__label" for="register-name">Apellido <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                            <asp:TextBox ID="txtDocumento" class="mdl-textfield__input" runat="server"></asp:TextBox>
                            <label class="mdl-textfield__label" for="register-name">Documento <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                        </div>
                         <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                            <asp:TextBox ID="txtTelefono" class="mdl-textfield__input" runat="server"></asp:TextBox>
                            <label class="mdl-textfield__label" for="register-name">Telefono <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-envelope-o"></i>
                            <!--<input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="register-email">  -->
                            <asp:TextBox ID="txtUsuario" class="mdl-textfield__input" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" runat="server"></asp:TextBox>
                            <label class="mdl-textfield__label" for="register-email">email <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                            <asp:TextBox ID="txtDireccion" class="mdl-textfield__input" runat="server"></asp:TextBox>
                            <label class="mdl-textfield__label" for="register-name">Direccion <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                        </div>
                       
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-calendar-o"></i>
                                <asp:TextBox ID="txtFecha" runat="server" class="mdl-textfield__input" onfocus="(this.type='date')" onblur="(this.type='text')"></asp:TextBox>
                                <label class="mdl-textfield__label" for="appointment-date">Fecha Nacimiento</label>
                                <span class="mdl-textfield__error">Please Enter Valid Date Number!</span>
                            </div>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-key"></i>
                            <!--<input class="mdl-textfield__input" type="password" id="register-password">-->
                            <asp:TextBox ID="txtContraseña" class="mdl-textfield__input" runat="server"></asp:TextBox>
                            <label class="mdl-textfield__label" for="register-password">Contraseña <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Password(Min 6 Character)!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                                  <asp:DropDownList ID="cmbEspecialidad" class="mdl-textfield__input" runat="server"></asp:DropDownList>
                        </div>

                            <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                        </div>


                        <div class="login-condition">
                            By clicking Creat Account you agree to our<br />
                            <a href="#">terms &#38; condition</a>
                        </div>
                        <div class="form-submit">
                            <!--<button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Create Account</button>-->
                            <asp:Button ID="btnRegistrar" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" runat="server" Text="Crear Cuenta" OnClick="btnRegistrar_Click" />
                        </div>
                        <div class="or-using">Or Using</div>
                        <div class="social-login">
                            <a href="https://www.facebook.com/" class="social-facebook"><i class="fa fa-facebook"></i>Facebook</a>
                            <a href="https://accounts.google.com/" class="social-google"><i class="fa fa-google"></i>Google</a>
                        </div>
                        <div class="login-link">
                            <span class="paragraph-small">Already have an account?</span>
                            <a href="#" class="">Login Now</a>
                        </div>
                    </div>

                </div>
            </div>
            <!-- End Register Section -->




    </form>
                





</asp:Content>
