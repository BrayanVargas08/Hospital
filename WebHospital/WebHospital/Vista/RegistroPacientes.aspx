<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterInicial.Master" AutoEventWireup="true" CodeBehind="RegistroPacientes.aspx.cs" Inherits="WebHospital.Vista.RegistroPacientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Start Page Title Section -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
        <div class="page-ttl">
            <div class="layer-stretch">
                <div class="page-ttl-container">
                    <h1>Registro de Paciente</h1>
                    <p><a href="index.aspx">Home</a> &#8594; <span>Registro Paciente</span></p>
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
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                        <asp:TextBox ID="txtTelefono" class="mdl-textfield__input" runat="server"></asp:TextBox>
                        <label class="mdl-textfield__label" for="register-name">Telefono <em>*</em></label>
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
                        <asp:TextBox ID="txtContraseña" class="mdl-textfield__input" runat="server" TextMode="Password"></asp:TextBox>
                        <label class="mdl-textfield__label" for="register-password">Contraseña <em>*</em></label>
                        <span class="mdl-textfield__error">Please Enter Valid Password(Min 6 Character)!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                        <div class="text-justify">
                            <strong>
                                <label for="register-name"><em>*</em>Genero</label>
                                <asp:RadioButtonList ID="RadioButtonGenero" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>Masculino</asp:ListItem>
                                    <asp:ListItem>Femenino</asp:ListItem>
                                </asp:RadioButtonList>
                            </strong>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:DropDownList ID="cmbEps" class="mdl-textfield__input" runat="server"></asp:DropDownList>
                            <label class="mdl-textfield__label" for="appointment-date">Su Eps</label>
                        </div>

                        <span class="mdl-textfield__error">Introduzca un nombre válido.</span>
                    </div>


                    <div class="login-condition">
                        Al hacer clic en Crear cuenta, aceptas nuestro<br />
                        <a href="PoliticasdePrivacidad.aspx">terminos y &#38; conndicion</a>
                    </div>
                    <div class="form-submit">
                        <!--<button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Create Account</button>-->
                        <asp:Button ID="btnRegistrar" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" runat="server" Text="Crear Cuenta" OnClick="btnRegistrar_Click" />
                    </div>

                    
                  
                </div>

            </div>
        </div>
        <!-- End Register Section -->
        
        <!-- End Emergency Section -->
      
        <!-- End Make an Appointment Modal -->
        <!-- Start Login Modal -->
        <div id="loginpopup" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h5 class="modal-title">Login Now</h5>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body text-center">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-envelope-o"></i>
                            <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="loginpopup-email">
                            <label class="mdl-textfield__label" for="loginpopup-email">Email <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-key"></i>
                            <input class="mdl-textfield__input" type="password" id="loginpopup-password">
                            <label class="mdl-textfield__label" for="loginpopup-password">Password <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Password!</span>
                            <div class="forgot-pass">Forgot Password?</div>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon form-bot-check">
                            <i class="fa fa-question"></i>
                            <input class="mdl-textfield__input" type="number" id="loginpopup-bot">
                            <label class="mdl-textfield__label" for="loginpopup-bot">What is 7 plus 1 = <em>* </em></label>
                            <span class="mdl-textfield__error">Please Enter Correct Value!</span>
                        </div>
                        <div class="form-submit">
                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Login Now</button>
                        </div>
                        <div class="or-using">Or Using</div>
                        <div class="social-login">
                            <a href="#" class="social-facebook"><i class="fa fa-facebook"></i>Facebook</a>
                            <a href="#" class="social-google"><i class="fa fa-google"></i>Google</a>
                        </div>
                        <div class="login-link">
                            <span class="paragraph-small">Don't have an account?</span>
                            <a href="#" class="">Register as New User</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Login Modal -->
        <!-- Start Register Modal -->
        <div id="registerpopup" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h5 class="modal-title">Register as New User</h5>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body text-center">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="registerpopup-name">
                            <label class="mdl-textfield__label" for="registerpopup-name">Name <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-envelope-o"></i>
                            <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="registerpopup-email">
                            <label class="mdl-textfield__label" for="registerpopup-email">Email <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-key"></i>
                            <input class="mdl-textfield__input" type="password" id="registerpopup-password">
                            <label class="mdl-textfield__label" for="registerpopup-password">Password <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Password(Min 6 Character)!</span>
                        </div>
                        <div class="login-condition">By clicking Creat Account you agree to our <a href="#">terms &#38; condition</a></div>
                        <div class="form-submit">
                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Create Account</button>
                        </div>
                        <div class="or-using">Or Using</div>
                        <div class="social-login">
                            <a href="#" class="social-facebook"><i class="fa fa-facebook"></i>Facebook</a>
                            <a href="#" class="social-google"><i class="fa fa-google"></i>Google</a>
                        </div>
                        <div class="login-link">
                            <span class="paragraph-small">Already have an account?</span>
                            <a href="#" class="">Login Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
