<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterInicial.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="WebHospital.Vista.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start Page Title Section -->
    <div class="page-ttl">
        <div class="layer-stretch">
            <div class="page-ttl-container">
                <h1>Contactete con nosotros</h1>
                <p><a href="#">Home</a> &#8594; <span>Contacta con nosotros</span></p>
            </div>
        </div>
    </div><!-- End Page Title Section -->
    <!-- Start Contact Detail Section -->
    <div id="contact-page" class="layer-stretch">
        <div class="layer-wrapper">
            <div class="row text-center">
                <div class="col-md-6 col-lg-3 contact-info-block">
                    <div class="contact-info-inner">
                        <i class="fa fa-plus-square-o"></i>
                        <span>CITA</span>
                        <p class="paragraph-medium paragraph-black">	
3134593918 </p>
                        <p>	
pazdeariporo @redsaludcasanare.gov.co</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 contact-info-block">
                    <div class="contact-info-inner">
                        <i class="fa fa-phone"></i>
                        <span>Llamenos</span>
                        <p class="paragraph-medium paragraph-black">3115228617</p>
                        <p>3232842840 </p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 contact-info-block">
                    <div class="contact-info-inner">
                        <i class="fa fa-envelope"></i>
                        <span>Correo electrónico</span>
                        <p class="paragraph-medium paragraph-black">contactenos
                                                                    @redsaludcasanare.gov.co</p>
                        <p>Soporte@redsaludcasanare.gov.co </p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 contact-info-block">
                    <div class="contact-info-inner">
                        <i class="fa fa-map-marker"></i>
                        <span>Location</span>
                        <p class="paragraph-medium paragraph-black">Street name, City, State</p>
                        <p class="paragraph-medium paragraph-black">Country, Pincode</p>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Contact Detail Section -->
    <!-- Start Request Form Section -->
    <div id="contact-form" class="layer-stretch">
        <div class="layer-wrapper">
            <div class="layer-ttl"><h3>Hacer una solicitud</h3></div>
            <div class="contact-form row text-center">
                <div class="col-md-4">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <input id="contact-name" class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*">
                        <label class="mdl-textfield__label" for="contact-name">Tu nombre </label>
                        <span class="mdl-textfield__error">Por favor, introduzca un nombre válido!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-envelope-o"></i>
                        <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="contact-email">
                        <label class="mdl-textfield__label" for="contact-email">Tu email</label>
                        <span class="mdl-textfield__error">Por favor introduzca un correo electrónico válido!</span>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-phone"></i>
                        <input class="mdl-textfield__input" type="text" pattern="[0-9]*" id="contact-mobile">
                        <label class="mdl-textfield__label" for="contact-mobile">Tú número de teléfono</label>
                        <span class="mdl-textfield__error">Por favor ingrese un número de teléfono válido</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-rocket"></i>
                        <input class="mdl-textfield__input" type="text" id="contact-subject">
                        <label class="mdl-textfield__label" for="contact-subject">Tu asunto</label>
                        <span class="mdl-textfield__error">¡Ingrese el asunto relacionado con su consulta!</span>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-paper-plane"></i>
                        <textarea class="mdl-textfield__input" id="contact-message"></textarea>
                        <label class="mdl-textfield__label" for="contact-message">Tu petición</label>
                        <span class="mdl-textfield__error">Por favor ingrese su consulta!</span>
                    </div>
                </div>
                <div class="col-md-12 contact-error">

                </div>
                <div class="col-md-12">
                    <div class="form-submit">
                        <button class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised button button-primary contact-submit">Envía tu consulta</button>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Request Form Section -->
    <!-- Start Google Map Section -->
    <div id="map">
        <div class="map-wrapper">
            <div id="map-container"></div>
        </div>
        <div class="map-address">
            <div class="map-icon"><i class="fa fa-map-marker"></i></div>
            <div class="map-address-ttl">Nuestra ubicación</div>
            <div class="paragraph-medium paragraph-black">Paz de Ariporo</div>
        </div>
    </div><!-- End Google Map Section -->
</asp:Content>
