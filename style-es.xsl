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
                    <img src="img/profilePicture.webp" alt="diego_fercri logo" id="navbar2-logo" class="navbar2-logo" style="border-radius: 500px"/>
                    <ul id="main-menu" class="main-menu d-flex flex-column list-unstyled m-0">
                        <li class="d-flex">
                            <a href="./index.html#start" class="color-ed nav-link toggle-menu__close">
                                <div class="d-flex align-items-center" data-i18n="home">
                                    <i class="fa fa-home" aria-hidden="true"></i>
                                    <xsl:value-of select="es/nav/home" />
                                </div>
                            </a>
                        </li>
                        <li class="d-flex">
                            <a href="#contact" class="color-ed nav-link toggle-menu__close">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-address-book" aria-hidden="true"></i>
                                    <xsl:value-of select="es/nav/contact" />
                                </div>
                            </a>
                        </li>
                        <li class="d-flex">
                            <a href="#contact" class="color-ed nav-link toggle-menu__close">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-book" aria-hidden="true"></i>
                                    <xsl:value-of select="es/nav/educations" />
                                </div>
                            </a>
                        </li>
                        <li class="d-flex">
                            <a href="#contact" class="color-ed nav-link toggle-menu__close">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-code" aria-hidden="true"></i>
                                    <xsl:value-of select="es/nav/projects" />
                                </div>
                            </a>
                        </li>
                    </ul>
                </nav>
                
                <main class="d-flex row row-cols-1 row-cols-xxl-2 m-0">
                    <div class="d-flex align-content-end justify-content-end position-absolute p-0" style="right: 15px; top: 15px; gap: 15px;">
                        <a href="index.xml">
                            <div class="d-flex align-items-center gap-2 fs-5">
                                <img src="/img/en-bw.webp" alt="english" style="border-radius: 50px; height: 30px;"/>
                                Inglés
                            </div>
                        </a>
                        <a href="index-es.xml">
                            <div class="d-flex align-items-center gap-2 fs-5">
                                <img src="/img/es.webp" alt="spanish" style="border-radius: 50px; height: 30px;"/>
                                Español
                            </div>
                        </a>
                    </div>
                    <section id="start"
                             class="col-xxl-12 d-flex flex-column flex-lg-row vh-100 align-items-center justify-content-evenly">
                        <div class="mx-5 d-flex justify-content-center">
                            <div class="p-2 d-flex justify-content-center">
                                <img src="./img/diegoPicture.webp" alt="Diego" />
                            </div>
                        </div>
                        <div class="d-flex flex-column justify-content-center">
                            <a class="fs-1 fw-bold"><xsl:value-of select="es/portfolio/name" /></a>
                            <a class="fs-3"><xsl:value-of select="es/portfolio/label" /></a>
                            <a class=""><xsl:value-of select="es/portfolio/summary" /></a>
                        </div>
                    </section>
                    <section id="contact" class="col-xxl-12 d-flex flex-column flex-lg-row py-5">
                        <div>
                            <a class="fs-3"><xsl:value-of select="es/portfolio/contacts/@text" /></a>
                            <ul class="list-unstyled mt-1">
                                <li class="fs-5 d-flex gap-2 align-items-center">
                                    <div class="d-flex align-items-center justify-content-center" style="width: 20px;">
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                    </div>
                                    <a href="mailto:{en/portfolio/contacts/email}" target="_blank">
                                        <xsl:value-of select="es/portfolio/contacts/email" />
                                    </a>
                                </li>
                                <xsl:for-each select="es/portfolio/contacts/profiles/profile">
                                    <li class="fs-5 d-flex gap-2 align-items-center">  
                                        <div class="d-flex align-items-center justify-content-center" style="width: 20px;">
                                            <i class="fa fa-{network}" aria-hidden="true"></i>
                                        </div>
                                        <a href="{url}" target="_blank">
                                            <xsl:value-of select="username" />
                                        </a>
                                    </li>
                                </xsl:for-each>
                                <li class="fs-5 d-flex gap-2 align-items-center">
                                    <div class="d-flex align-items-center justify-content-center" style="width: 20px;">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    </div>
                                    <a href="{en/portfolio/contacts/location/url}" target="_blank">
                                        <xsl:value-of select="es/portfolio/contacts/location/region" />, 
                                        <xsl:value-of select="es/portfolio/contacts/location/countryCode" />
                                    </a>
                                </li>
                                <li class="fs-6 mt-4">
                                    <a><xsl:value-of select="es/portfolio/contacts/privacy/@text" />
                                        <a><xsl:value-of select="es/portfolio/contacts/privacy" />: </a>
                                        <a href="mailto:{en/portfolio/contacts/email}" target="_blank"><xsl:value-of select="es/portfolio/contacts/email" /></a>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div>
                            
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