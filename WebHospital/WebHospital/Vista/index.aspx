<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterInicial.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebHospital.Vista.CitasMedicas1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <from runat="server">

    <!-- cuerpo de la pagina-->

    <div id="slider" class="slider-height">
        <div class="flexslider slider-wrapper">
            <ul class="slides">
                <li>
                    <div class="slider-info">
                        <h1 class="animated fadeInDown">Hospital de Paz de ariporo</h1>
                        <p class="animated fadeInDown">RED SALUD CASANARE E.S.E, es la institución que presta servicios de salud de primer Nivel de atención de forma íntegra y humanizada, con seguridad, calidad, pertinencia y compromiso con el bienestar de la comunidad en 16 municipios del Departamento de Casanare . #twitterhash, @facebooktag</p>
                    </div>
                    <img src="Template/images/descargar.jpg" alt="" />
                    <div class="slider-button slider-appointment">
                        <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect animated fadeInUp">Haga su Cita<i class="fa fa-flag-checkered"></i></a>
                    </div>
                </li>
                <li>
                    <div class="slider-info">
                        <h2>Nuestra Identidad Nuestra Responsabilidad</h2>
                        <p>RED SALUD CASANARE E.S.E., para el año 2020, se consolidará en el ámbito Departamental, como una empresa moderna, altamente competitiva y auto sostenible, que brinde servicios integrales de Salud en los niveles I y II ambulatorio, con calidad, eficiencia y eficacia. elit#twitterhash, @facebooktag</p>
                    </div>
                    <img src="Template/images/hospital2.jpg" alt="" />
                    <div class="slider-button slider-appointment">
                        <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect animated fadeInUp">Mas informacion <i class="fa fa-external-link"></i></a>
                    </div>
                </li>
                <li>
                    <div class="slider-info">
                        <h2>Servicio las 24/7</h2>
                        <p>A esta hora, los Funcionarios Administrativos de Red Salud Casanare E.S.E realizan la jornada laboral desde el Hospital Local de Paz de Ariporo, como iniciativa para conocer y observar el funcionamiento de la IPS. Además, las necesidades de los usuarios, colaboradores y de la comunidad en general #twitterhash, @facebooktag</p>
                    </div>
                    <img src="Template/images/hospiatal23.jpg" alt="" />
                    <div class="slider-button slider-appointment">
                        <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect animated fadeInUp">About Us<i class="fa fa-chevron-right"></i></a>
                    </div>
                </li>
            </ul>

        </div>
    </div>
    <!-- End Slider Section -->
    <!-- Start Service Section -->
    <div id="hm-service" class="layer-stretch">
        <div class="layer-wrapper">
            <div class="layer-ttl">
                <h3>QUE HACEMOS?</h3>
            </div>
            <div class="layer-container row">
                <div class="hm-service-left col-md-5">
                    <img src="Template/images/hospital3.jpg" alt="Klinical Health care">
                </div>
                <div class="hm-service-right col-md-7">
                    <p class="paragraph-medium paragraph-black">
                        La labor del Hospital de la Paz de ariporo desde su creación ha sido el desarrollo de la medicina en la ciudad, formando más de tres mil médicos y más de 600 especialistas altamente calificados, prestando una atención integral en servicios de salud a nuestros pacientes.
Nuestro compromiso es con la comunidad y con el país, por ello el ser Universitarios es el mejor testimonio que nuestra labor de investigación y actualización médica es permanente, siendo generadores del saber científico, obteniendo reconocimientos a nivel nacional por distintas Asociaciones Médicas y Sociedades Científicas, gracias a los diferentes trabajos desarrollados por los residentes e instructores del Hospital, quienes de la mano del capital administrativo calificado trabajan arduamente para que usted y los suyos reciban un servicio con calidad y calidez, sintiendo siempre que trabajamos unidos por su bienestar.
                    </p>
                    <div class="hm-service">
                        <div class="hm-service-block">
                            <i class="fa fa-stethoscope"></i>
                            <span>Centro Cardiovascular</span>
                        </div>
                        <div class="hm-service-block">
                            <i class="fa fa-child"></i>
                            <span>Centro de Parto</span>
                        </div>
                        <div class="hm-service-block">
                            <i class="fa fa-certificate"></i>
                            <span>Mamografia</span>
                        </div>
                        <div class="hm-service-block">
                            <i class="fa fa-h-square"></i>
                            <span>Dermatologia</span>
                        </div>
                        <div class="hm-service-block">
                            <i class="fa fa-stethoscope"></i>
                            <span>Paediatria</span>
                        </div>
                        <div class="hm-service-block">
                            <i class="fa fa-bullhorn"></i>
                            <span>Centro de Radiografia</span>
                        </div>
                    </div>
                    <div class="hm-service-view text-center">
                        <a  class="button-icon">
                            <span>Ver todos los servicios</span>
                            <i class="fa fa-eye"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Service Section -->
    <!-- Start About Section -->
    <div id="hm-about" class="colored-background">
        <div class="layer-stretch">
            <div class="layer-wrapper">
                <div class="layer-ttl layer-ttl-white">
                    <h3>Quienes SOMOS</h3>
                </div>
                <div class="row">
                    <div class="col-md-7">
                        <div class="hm-about-block">
                            <div class="tbl-cell hm-about-icon"><i class="fa fa-user-md"></i></div>
                            <div class="tbl-cell hm-about-number">
                                <span class="counter">10</span>
                                <p>Doctores</p>
                            </div>
                        </div>
                        <div class="hm-about-block">
                            <div class="tbl-cell hm-about-icon"><i class="fa fa-ambulance"></i></div>
                            <div class="tbl-cell hm-about-number">
                                <span class="counter">2</span>
                                <p>Ambulancias</p>
                            </div>
                        </div>
                        <div class="hm-about-block">
                            <div class="tbl-cell hm-about-icon"><i class="fa fa-calendar"></i></div>
                            <div class="tbl-cell hm-about-number">
                                <span class="counter">40</span>
                                <p>Año de experiencia (s)</p>
                            </div>
                        </div>
                        <div class="hm-about-block">
                            <div class="tbl-cell hm-about-icon"><i class="fa fa-clock-o"></i></div>
                            <div class="tbl-cell hm-about-number">
                                <span class="counter">168</span>
                                <p>Horario de apertura por semana</p>
                            </div>
                        </div>
                        <div class="hm-about-paragraph">
                            <p class="paragraph-medium paragraph-white">
                                <span class="theme-dropcap color-white">E</span>l Hospital de paz de ariporo es una organización prestadora de servicios de salud, interesada en el desarrollo,
motivación y compromiso de su recurso humano, que ofrece a sus pacientes un servicio de calidad y
seguridad a través de equipo médico de alta tecnología y sobre todo calidez humana”..
                            </p>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <img class="img-thumbnail" src="Template/images/hospital6.jpeg" alt="">
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- End About Section -->

    <!-- Start Feature Section -->
    <div id="hm-feature" class="layer-stretch">
        <div class="layer-wrapper layer-bottom-10">
            <div class="layer-ttl">
                <h3>Por qué elegirnos</h3>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="hm-feature-block-1">
                        <div class="theme-img theme-img-scalerotate">
                            <img src="Template/images/hospital8.jpg" alt="">
                        </div>
                        <span>Departamento de emergencia</span>
                        <p class="paragraph-small paragraph-black">departamento de emergencias ( ED ), también conocido como un accidente y de emergencia departamento ( A & E ), la sala de emergencia ( ER ), sala de urgencias ( EW ) o servicio de urgencias , es un centro de tratamiento médico especializado en medicina de emergencia , la aguda atención de los pacientes que presente sin cita previa; ya sea por sus propios medios o por la de una ambulancia . El servicio de urgencias se encuentra generalmente en el hospital, u otra atención primaria central.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="hm-feature-block-1">
                        <div class="theme-img theme-img-scalerotate">
                            <img src="template/images/hospital7.jpg" alt="">
                        </div>
                        <span>24 horas de servicio</span>
                        <p class="paragraph-small paragraph-black">El Servicio de Urgencias 24 horas del Centro Médico red salud brinda una atención  oportuna con calidad y calidez, en la cual las acciones médico – asistenciales están caracterizadas por la prudencia, la pericia, la experiencia, la capacitación técnica.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="hm-feature-block-1">
                        <div class="theme-img theme-img-scalerotate">
                            <img src="template/images/tecnologias.jpg" alt="">
                        </div>
                        <span>Tecnologia avanzada</span>
                        <p class="paragraph-small paragraph-black">
                            Los hospitales son el objetivo de muchas empresas de alta tecnología y de emprendedores innovadores que aportan su talento para generar nuevas tecnologías que ayuden a médicos a realizar mejor su trabajo y a los pasientes hacer su estancia en esos lugares más confortable.
Conoce las 10 tecnologías  más avanzadas que están innovando los procesos clínicos y quirurgicos en hospitales de todo el mundo.
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="hm-feature-block-1">
                        <div class="theme-img theme-img-scalerotate">
                            <img src="template/images/ambulancia.jpg" alt="">
                        </div>
                        <span>Ambulancia</span>
                        <p class="paragraph-small paragraph-black">
                            Contamos con un parque de 2 ambulancias, 1 medicalizadas y 1 básicas habilitadas con la última
resolución del ministerio.

Ambulancia medicalizada Nissan Frontier 4×4 modelo 2014, habilitada con equipos de última tecnología, especial para zonas rurales de difícil acceso en la topografía de nuestra región.
Ambulancia Volkswagen Crafter 35 modelo 2008 tipo vans, de fácil maniobrabilidad para médicos y
paramédicos. Dotada con equipos de alta tecnologí.
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="hm-feature-block-1">
                        <div class="theme-img theme-img-scalerotate">
                            <img src="template/images/primerosauxilios.jpg" alt="">
                        </div>
                        <span>Primeros auxilios</span>
                        <p class="paragraph-small paragraph-black">
                            En la vida, nos podemos encontrar frente a situaciones donde debemos auxiliar a otra persona. Es por esa razón que debemos tener los conocimientos básicos para realizar los primeros auxilios y ayudar a una persona en situación de accidente o enfermedad repentina, de manera de preservarle la vida y evitar así que su estado empeore.

Antes que todo, debemos verificar que la persona a la que vamos a asistir esté consciente, respire y tenga pulso.

Es fundamental, frente a una situación como ésta, siempre evitar el pánico, como así también no cambiar de posición a la persona hasta que se determine la naturaleza del proceso.

Existen procedimientos, en caso de emergencias, que es conveniente seguir, para que la ayuda resulte realmente eficaz.
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="hm-feature-block-1">
                        <div class="theme-img theme-img-scalerotate">
                            <img src="template/images/farmacia.jpg" alt="">
                        </div>
                        <span>Farmacias y droguerías</span>
                        <p class="paragraph-small paragraph-black">
                            El servicio de farmacia se encarga de garantizar una terapia farmacológica exitosa con calidad en el cuidado y atención de los pacientes, con el mínimo riesgo.
                            Farmacia hospitalaria: El área de preparación y dispensación de medicamentos del servicio de farmacia se encarga del suministro de medicamentos y dispositivos médicos a las diferentes unidades asistenciales
                            Farmacia clínica:
                            Farmacia ambulatoria:Servicios de gestión:
Comprenden la evaluación de nuevos medicamentos, evaluación del uso de medicamentos, educación continua, información de medicamentos e investigación clínica
La Farmacia ambulatoria presta servicio a pacientes dados de alta del Hospital Pablo Tobón Uribe y público en general.
Se encuentra ubicada en el primer piso en el hall principal, accediendo por la puerta principal.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Feature Section -->
    <!-- Start Doctor Section -->
    <div class="colored-background">
        <div class="layer-stretch">
            <div class="layer-wrapper">
                <div class="layer-ttl layer-ttl-white">
                    <h3>Nuestro equipo</h3>
                </div>
                <div class="layer-container">
                    <div id="hm-doctor-slider" class="owl-carousel owl-theme theme-owl-dot">
                        <div class="hm-doctor">
                            <img class="img-responsive" src="template/images/medico1.jpg" alt="">
                            <h6>Dr. Daniel miguel</h6>
                            <p>Ginecologo</p>
                        </div>
                        <div class="hm-doctor">
                            <img class="img-responsive" src="template/images/medico2.jpg" alt="">
                            <h6>Dr. Melisa silva</h6>
                            <p>Ginecologo</p>
                        </div>
                        <div class="hm-doctor">
                            <img class="img-responsive" src="template/images/medico3.jpg" alt="">
                            <h6>Dr. Cheri Aria</h6>
                            <p>Dermatologo</p>
                        </div>
                        <div class="hm-doctor">
                            <img class="img-responsive" src="template/images/medico4.jpg" alt="">
                            <h6>Steve gonzalez</h6>
                            <p>Odontologia</p>
                        </div>
                        <div class="hm-doctor">
                            <img class="img-responsive" src="template/images/medico5.jpg" alt="">
                            <h6>Barbara sigua</h6>
                            <p>Pediatra</p>
                        </div>
                        <div class="hm-doctor">
                            <img class="img-responsive" src="template/images/medico6.jpg" alt="">
                            <h6>Linda gutierez</h6>
                            <p>Medicina general</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Doctor Section -->
    <!-- Start Blog Section -->
    <div id="hm-blog" class="layer-stretch">
        <div class="layer-wrapper layer-bottom-10">
            <div class="layer-ttl">
                <h3>Ultimas publicaciones</h3>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="blog-list-block">
                        <div class="blog-list-picture">
                            <div class="theme-img theme-img-scalerotate">
                                <img src="template/images/intoxicacion.jpg" alt="">
                            </div>
                        </div>
                        <div class="blog-list-ttl">
                            <h3><a href="#">¿Por qué ocurrió la intoxicación alimentaria y cómo? - Remedio casero</a></h3>
                        </div>
                        <div class="blog-list-meta">
                            <p>Publicado por Ryan J. Brogan, DO On 07 Jul 2020</p>
                        </div>
                        <div class="blog-list-post">
                            <p class="paragraph-medium paragraph-black">
                                <span>Las intoxicaciones alimentarias están causadas por bacterias y, a veces, por virus u otros gérmenes. Pueden entrar en los alimentos que comemos y en los líquidos que bebemos. No lo podemos notar con el gusto, oler ni ver esos gérmenes (por lo menos, sin un microscopio). Pero, aunque sean diminutos, pueden tener un gran efecto en nuestro cuerpo.

Cuando los gérmenes que causan intoxicaciones alimentarias entran en nuestro organismo, pueden segregar toxinas. Estas toxinas son tóxicas (de ahí el nombre "intoxicación alimentaria"), y pueden causar diarrea y vómitos.

Por lo general, los médicos usan la expresión "intoxicación alimentaria" para describir una enfermedad que se desarrolla deprisa después de ingerir un alimento contaminado. La gente suele tener diarrea o empezar a vomitar a las pocas horas de haberse infectado. Lo bueno es que las intoxicaciones alimentarias también suelen remitir por sí solas en poco tiempo. La mayoría de la gente se recupera en un par de días y no tiene ningún tipo de secuela.</span>
                                <a href="https://kidshealth.org/es/teens/food-poisoning-esp.html">(leer mas)</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="blog-list-block">
                        <div class="blog-list-picture">
                            <div class="theme-img theme-img-scalerotate">
                                <img src="template/images/corona.jpeg" alt="">
                            </div>
                        </div>
                        <div class="blog-list-ttl">
                            <h3><a href="#">Todo lo que necesitas saber sobre el coronavirus en colombia, ¿es bueno o malo?</a></h3>
                        </div>
                        <div class="blog-list-meta">
                            <p>Publicado por OMS On 29 Jul 2020</p>
                        </div>
                        <div class="blog-list-post">
                            <p class="paragraph-medium paragraph-black">
                                <span>Manténgase al día de la información más reciente sobre el brote de COVID-19, a la que puede acceder en el sitio web de la OMS y a través de las autoridades de salud pública pertinentes a nivel nacional y local. La mayoría de las personas que se infectan padecen una enfermedad leve y se recuperan, pero en otros casos puede ser más grave. Cuide su salud y proteja a los demás a través de las siguientes medidas:

Lávese las manos frecuentemente
Lávese las manos con frecuencia con un desinfectante de manos a base de alcohol o con agua y jabón.

¿Por qué? Lavarse las manos con un desinfectante a base de alcohol o con agua y jabón mata el virus si este está en sus manos.

Adopte medidas de higiene respiratoria
Al toser o estornudar, cúbrase la boca y la nariz con el codo flexionado o con un pañuelo; tire el pañuelo inmediatamente y lávese las manos con un desinfectante de manos a base de alcohol, o con agua y jabón.

¿Por qué? Al cubrir la boca y la nariz durante la tos o el estornudo se evita la propagación de gérmenes y virus. Si usted estornuda o tose cubriéndose con las manos puede contaminar los objetos o las personas a los que toque.

Mantenga el distanciamiento social
Mantenga al menos 1 metro (3 pies) de distancia entre usted y las demás personas, particularmente aquellas que tosan, estornuden y tengan fiebre.

¿Por qué? Cuando alguien con una enfermedad respiratoria, como la infección por el 2019-nCoV, tose o estornuda, proyecta pequeñas gotículas que contienen el virus. Si está demasiado cerca, puede inhalar el virus.</span>
                                <a href="https://www.who.int/es/emergencies/diseases/novel-coronavirus-2019/advice-for-public?gclid=CjwKCAjw34n5BRA9EiwA2u9k33q7IKyWiD3jYoFvUVzQUHf0C46e4MzWirRVWqO9xrXGpDAJvmI8ChoClcMQAvD_BwE">(leer mas)</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Blog Section -->
    <!-- Start Testimonial Section -->
    <div id="testimonial" class="colored-background">
        <div class="layer-stretch">
            <div class="layer-wrapper">
                <div class="layer-ttl layer-ttl-white">
                    <h3>Lo que dice la gente</h3>
                </div>
                <div class="layer-container">
                    <div id="testimonial-slider" class="owl-carousel owl-theme theme-owl-dot">
                        <div class="testimonial-block">
                            <img  class="img-responsive"  src="Template/images/imagesssssss.jpg" />
                          <div class="paragraph-medium paragraph-white">
                                <i class="fa fa-quote-left"></i>
                               Gracias por el remedio. Siento que ha estado funcionando en un nivel sutil más profundo. Un ver interior. He tenido la sensación de un derretimiento por dentro y una gran sensación de paz y rectitud. Experimenté esto antes con su percepción y tratamiento, así que muchas gracias.
                            </div>
                            <a>Granados Ana</a>
                        </div>
                       </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Testimonial Section -->
    <!-- Start Emergency Section -->
    <div id="emergency">
        <div class="layer-stretch">
            <div class="layer-wrapper">
                <div class="layer-ttl">
                    <h3>En emergencia</h3>
                </div>
                <div class="layer-container">
                    <div class="paragraph-medium paragraph-black">
                        Número de emergencia puedes llamar las 24 horas a cualquier hora los 7 dias de la semana.

                    </div>
                    <div class="emergency-number">: 57 098 6373537</div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Emergency Section -->



    <!-- Fixed Appointment Button at Bottom -->
    <div id="appointment-button" class="animated fadeInUp">
        <button id="appointment-now" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-button--raised"><i class="fa fa-plus"></i></button>
        <div class="mdl-tooltip mdl-tooltip--top" data-mdl-for="appointment-now">Make An Appointment</div>
    </div>
    <!-- End Fixed Appointment Button at Bottom -->

</from>
</asp:Content>
