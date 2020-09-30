<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterMedico.Master" AutoEventWireup="true" CodeBehind="RegistroMedico.aspx.cs" Inherits="WebHospital.Vista.RegistroMedico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start Page Title Section -->
    <form runat="server">
        <div class="page-ttl">
            <div class="layer-stretch">
                <div class="page-ttl-container">
                    <h1>Registro de Medico</h1>
                    <p><a href="#">Home</a> &#8594; <span>Registrar</span></p>
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
                            <asp:TextBox ID="txtFechaNacimiento" runat="server" class="mdl-textfield__input" onfocus="(this.type='date')" onblur="(this.type='text')"></asp:TextBox>
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
                        <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <asp:DropDownList ID="cmbEspecialidad" class="mdl-textfield__input" runat="server"></asp:DropDownList>
                            <label class="mdl-textfield__label" for="appointment-date">Su Especialidad</label>
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
                    <div class="or-using">
                        8/5000
O usando
                    </div>
                    <div class="social-login">
                        <a href="https://www.facebook.com/" class="social-facebook"><i class="fa fa-facebook"></i>Facebook</a>
                        <a href="https://accounts.google.com/" class="social-google"><i class="fa fa-google"></i>Google</a>
                    </div>
                    <div class="login-link">
                        <span class="paragraph-small">¿Ya tienes una cuenta?</span>
                        <a href="#" class="">Inicia sesión ahora</a>
                    </div>
                </div>

            </div>
        </div>
        <!-- End Register Section -->
        <!-- Start Emergency Section -->
        <div id="emergency">
            <div class="layer-stretch">
                <div class="layer-wrapper">
                    <div class="layer-ttl">
                        <h3>On Emergency</h3>
                    </div>
                    <div class="layer-container">
                        <div class="paragraph-medium paragraph-black">
                            At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas.
                        </div>
                        <div class="emergency-number">Call : 3016706105</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Emergency Section -->
        <!-- Start Make an Appointment Modal -->
        <div id="appointment" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h5 class="modal-title">Make An Appointment</h5>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="appointment-error"></div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-user-o"></i>
                                    <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="appointment-name">
                                    <label class="mdl-textfield__label" for="appointment-name">Name</label>
                                    <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-envelope-o"></i>
                                    <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="appointment-email">
                                    <label class="mdl-textfield__label" for="appointment-email">Email</label>
                                    <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-phone"></i>
                                    <input class="mdl-textfield__input" type="text" pattern="[0-9]*" id="appointment-mobile">
                                    <label class="mdl-textfield__label" for="appointment-mobile">Mobile Number</label>
                                    <span class="mdl-textfield__error">Please Enter Valid Mobile Number!</span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                                    <i class="fa fa-hospital-o"></i>
                                    <select class="mdl-selectfield__select" id="appointment-department">
                                        <option value="">&nbsp;</option>
                                        <option value="1">Gynaecology</option>
                                        <option value="2">Orthology</option>
                                        <option value="3">Dermatologist</option>
                                        <option value="4">Anaesthesia</option>
                                        <option value="5">Ayurvedic</option>
                                    </select>
                                    <label class="mdl-selectfield__label" for="appointment-department">Choose Department</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                                    <i class="fa fa-user-md"></i>
                                    <select class="mdl-selectfield__select" id="appointment-doctor">
                                        <option value="">&nbsp;</option>
                                        <option value="1">Dr. Daniel Barnes</option>
                                        <option value="2">Dr. Steve Soeren</option>
                                        <option value="3">Dr. Barbara Baker</option>
                                        <option value="4">Dr. Melissa Bates</option>
                                        <option value="5">Dr. Linda Adams</option>
                                    </select>
                                    <label class="mdl-selectfield__label" for="appointment-doctor">Choose Doctor</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-calendar-o"></i>
                                    <input class="mdl-textfield__input" type="text" id="appointment-date" onfocus="(this.type='date')" onblur="(this.type='text')">
                                    <label class="mdl-textfield__label" for="appointment-date">Date</label>
                                    <span class="mdl-textfield__error">Please Enter Valid Date Number!</span>
                                </div>
                            </div>
                        </div>
                        <div class="text-center pt-4">
                            <button class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised button button-primary button-lg make-appointment">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
    </form>
</asp:Content>
