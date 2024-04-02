<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        <html lang="es">
            
            <head>
                <title>diego_fercri portfolio</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
                
                <!-- Custom CSS -->
                <link rel="stylesheet" href="css/style.css" />
                
                <link rel="stylesheet" href="css/style-colors.css" />
                
                <link rel="stylesheet" href="css/navbar.css" />
                
                <!-- Font Awesome -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
            </head>
            
            <body class="bg-c1">
                <nav id="navbar2" class="navbar2">
                    <div id="toggle-menu__open" class="toggle-menu toggle-menu__open">
                        <i class="fa fa-bars" aria-hidden="true"></i>
                    </div>
                    <div id="toggle-menu__close" class="toggle-menu toggle-menu__close">
                        <i class="fa fa-close" aria-hidden="true"></i>
                    </div>
                    <img src="./assets/logo.svg" alt="diego_fercri logo" id="navbar2-logo" class="navbar2-logo" />
                    <ul id="main-menu" class="main-menu d-flex flex-column list-unstyled m-0">
                        <li class="d-flex">
                            <a href="./index.html#start" class="color-ed nav-link toggle-menu__close">
                                <div class="d-flex align-items-center" data-i18n="home">
                                    <i class="fa fa-home" aria-hidden="true"></i>
                                    <xsl:value-of select="es/nav/home"/>
                                </div>
                            </a>
                        </li>
                        <li class="d-flex">
                            <a href="#contact" class="color-ed nav-link toggle-menu__close">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-address-book" aria-hidden="true"></i>
                                    Contacto
                                </div>
                            </a>
                        </li>
                        <li class="d-flex">
                            <a id="toggle-menu__close-3" href="./pages/tickets/tickets.html" class="color-ed nav-link">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-ticket" aria-hidden="true"></i>
                                    Entradas
                                </div>
                            </a>
                        </li>
                        <li class="dropdown2 nav-link">
                            <a id="dropdown2-toggle0" class="dropdown2-toggle d-flex nav-link">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-trophy" aria-hidden="true"></i>
                                    Eventos
                                </div>
                                <i class="fa fa-angle-down dropdown2-arrow" aria-hidden="true"></i>
                            </a>
                            <div id="dropdown2-list0" class="dropdown2-list">
                                <ul class="list-unstyled">
                                    <li class="d-flex text-end">
                                        <a href="./pages/events/planned/planned-events.html"
                                           class="color-ed dropdown2__link nav-link">Planificados</a>
                                    </li>
                                    <li class="d-flex text-end">
                                        <a href="./pages/events/in-progress/in-progress-events.html"
                                           class="color-ed dropdown2__link nav-link">En Progreso</a>
                                    </li>
                                    <li class="d-flex text-end">
                                        <a href="./pages/events/ended/ended-events.html"
                                           class="color-ed dropdown2__link nav-link">Terminados</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="dropdown2 nav-link">
                            <a id="dropdown2-toggle1" class="dropdown2-toggle d-flex nav-link">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                    Inscripciones
                                </div>
                                <i class="fa fa-angle-down dropdown2-arrow" aria-hidden="true"></i>
                            </a>
                            <div id="dropdown2-list1" class="dropdown2-list">
                                <ul class="list-unstyled">
                                    <li class="dropdown2__item d-flex text-end">
                                        <a href="./pages/registrations/players.html"
                                           class="color-ed dropdown2__link nav-link">Jugadores</a>
                                    </li>
                                    <li class="dropdown2__item d-flex text-end">
                                        <a href="./pages/registrations/teams.html"
                                           class="color-ed dropdown2__link nav-link">Equipos</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </nav>
                
                <main>
                    <section id="start">
                        <div class="container my-5 py-lg-5 d-flex justify-content-center">
                            <div class="p-2 d-flex justify-content-center">
                                <img src="img/fotoDiego.webp" alt="Diego" />
                            </div>
                        </div>
                    </section>
                    <section id="aboutme">
                        <div class="container my-5 d-flex justify-content-center">
                            <p class="col-6 text-center fs-5 ft-sono fw-bolder">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat qui officiis veritatis vel, sit
                                vero magnam in quae ex quasi voluptatibus dolorum harum maxime deserunt ut quidem illo laboriosam
                                nobis!
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat qui officiis veritatis vel, sit
                                vero magnam in quae ex quasi voluptatibus dolorum harum maxime deserunt ut quidem illo laboriosam
                                nobis!
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat qui officiis veritatis vel, sit
                                vero magnam in quae ex quasi voluptatibus dolorum harum maxime deserunt ut quidem illo laboriosam
                                nobis!
                            </p>
                        </div>
                    </section>
                </main>
                
                <footer>
                    <!-- place footer here -->
                </footer>
                
                <!-- Bootstrap JavaScript Libraries -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                        crossorigin="anonymous"></script>
                
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
                        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
                        crossorigin="anonymous"></script>
                
                <!-- Custom JavaScript -->
                <script src="js/navbar.js"></script>
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>