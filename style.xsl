<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        
        <html lang="{portfolio/@lang}">
            
            <head>
                <title>diego_fercri portfolio</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
                
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
                    <img src="img/diegoPicture.webp" alt="diego_fercri logo" id="navbar2-logo" class="navbar2-logo" style="border-radius: 500px"/>
                    <ul id="main-menu" class="main-menu d-flex flex-column list-unstyled m-0">
                        <li class="d-flex">
                            <a href="#home" class=" toggle-menu__close">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-home" aria-hidden="true" style="width: 1rem"></i>
                                    <xsl:value-of select="portfolio/nav/home" />
                                </div>
                            </a>
                        </li>
                        <li class="d-flex">
                            <a href="#projects" class="nav-link toggle-menu__close">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-code" aria-hidden="true" style="width: 1rem"></i>
                                    <xsl:value-of select="portfolio/nav/projects" />
                                </div>
                            </a>
                        </li>
                        <li class="d-flex">
                            <a href="#educations" class="nav-link toggle-menu__close">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-book" aria-hidden="true" style="width: 1rem"></i>
                                    <xsl:value-of select="portfolio/nav/educations" />
                                </div>
                            </a>
                        </li>
                        <li class="d-flex">
                            <a href="#languages" class="nav-link toggle-menu__close">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-comment" aria-hidden="true" style="width: 1rem"></i>
                                    <xsl:value-of select="portfolio/nav/languages" />
                                </div>
                            </a>
                        </li>
                        <li class="d-flex">
                            <a href="#contact" class="nav-link toggle-menu__close">
                                <div class="d-flex align-items-center">
                                    <i class="fa fa-address-book" aria-hidden="true"></i>
                                    <xsl:value-of select="portfolio/nav/contact" />
                                </div>
                            </a>
                        </li>
                    </ul>
                </nav>
                
                <main class="d-flex row row-cols-1 row-cols-xxl-2 m-3 mt-0">
                    <div class="d-flex align-content-end justify-content-end position-absolute p-0" style="margin: 15px; right: 0; top: 0; gap: 15px;">
                        <xsl:for-each select="portfolio/nav/langs/lang">
                            <a href="{@url}" class="lang">
                                <div class="d-flex align-items-center gap-2 fs-5">
                                    <img src="{@img}" alt="{@text}" style="border-radius: 50px; height: 30px;"/>
                                    <xsl:value-of select="@text" />
                                </div>
                            </a>
                        </xsl:for-each>
                    </div>
                    <section id="home" class="col-xxl-12 d-flex flex-column flex-lg-row vh-100 align-items-center justify-content-evenly">
                        <div class="col-12 col-md-6 d-flex justify-content-center">
                            <div class="p-2 d-flex justify-content-center">
                                <img src="img/diegoPicture.webp" alt="Diego" />
                            </div>
                        </div>
                        <div class="col-12 col-md-6 d-flex flex-column justify-content-center">
                            <h1 class="fs-1 fw-bold"><xsl:value-of select="portfolio/basics/name" /></h1>
                            <h2 class="fs-3"><xsl:value-of select="portfolio/basics/label" /></h2>
                            <a class="me-md-2 me-lg-5"><xsl:value-of select="portfolio/basics/summary" /></a>
                        </div>
                    </section>
                    <hr class="w-75 mx-auto rounded-5 border-3" />
                    <section id="projects" class="col-xxl-12 d-flex flex-column flex-lg-row py-5">
                        <div>
                            <a class="fs-3"><xsl:value-of select="portfolio/projects/@text" /></a>
                            <div class="row">
                                <xsl:for-each select="portfolio/projects/project">
                                    <div class="col-12 col-md-4 col-xxl-3 mt-4">
                                        <div class="card2">
                                            <div class="card2-wrapper">
                                                <div class="card2-banner-image" style="background-image: url({img});"></div>
                                                <h5><xsl:value-of select="name" /></h5>
                                                <p><xsl:value-of select="description" /></p>
                                            </div>
                                            <div class="card2-button-wrapper">
                                                <!--<a href="" class="btn outline">Detalles</a>-->
                                                <a href="{url}" class="btn fill" target="_blank">Sitio Web</a>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </section>
                    <section id="educations" class="col-xxl-12 d-flex flex-column flex-lg-row py-5">
                        <div>
                            <a class="fs-3"><xsl:value-of select="portfolio/educations/@text" /></a>
                            <div class="row">
                                <xsl:for-each select="portfolio/educations/education">
                                    <div class="col-12 col-md-6 mt-4">
                                        <div class="card3">
                                            <div>
                                                <h5><xsl:value-of select="studyType" /></h5>
                                            </div>
                                            <div class="card3-wrapper">
                                                <div>
                                                    <p>Fecha de inicio: <xsl:value-of select="startDate" /></p>
                                                    <p>Fecha de finalización: <xsl:value-of select="endDate" /></p>
                                                    <p>Área de estudio: <xsl:value-of select="area" /></p>
                                                    <p>Centro: <xsl:value-of select="institution" /></p>
                                                    <p>Nota: <xsl:value-of select="score" /></p>
                                                </div>
                                            </div>
                                            <div class="card3-button-wrapper">
                                                <!--<a href="" class="btn outline">Detalles</a>-->
                                                <a href="{url}" class="btn fill" target="_blank">IES Azarquiel</a>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </section>
                    <section id="languages" class="col-xxl-12 d-flex flex-column flex-lg-row py-5">
                        <div>
                            <a class="fs-3"><xsl:value-of select="portfolio/languages/@text" /></a>
                            <div class="row">
                                <xsl:for-each select="portfolio/languages/language">
                                    <div class="col-12 col-md-8 mt-4">
                                        <div class="card border-0">
                                            <div class="card-body d-flex align-items-center justify-content-between">
                                                <div>
                                                    <h5 class="mb-2"><xsl:value-of select="name" /></h5>
                                                    <a><xsl:value-of select="fluency" /></a>
                                                </div>
                                                <div>
                                                    <img src="{img}" alt="{name}" style="border-radius: 50px; height: 80px;" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </section>
                    <section id="contact" class="col-xxl-12 d-flex flex-column flex-lg-row py-5">
                        <div>
                            <a class="fs-3"><xsl:value-of select="portfolio/contacts/@text" /></a>
                            <ul class="list-unstyled mt-1">
                                <li class="fs-5 d-flex gap-2 align-items-center">
                                    <div class="d-flex align-items-center justify-content-center" style="width: 20px;">
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                    </div>
                                    <a href="mailto:{portfolio/contacts/email}" target="_blank" class="lk">
                                        <xsl:value-of select="portfolio/contacts/email" />
                                    </a>
                                </li>
                                <xsl:for-each select="portfolio/contacts/profiles/profile">
                                    <li class="fs-5 d-flex gap-2 align-items-center">  
                                        <div class="d-flex align-items-center justify-content-center" style="width: 20px;">
                                            <i class="fa fa-{network}" aria-hidden="true"></i>
                                        </div>
                                        <a href="{url}" target="_blank" class="lk">
                                            <xsl:value-of select="username" />
                                        </a>
                                    </li>
                                </xsl:for-each>
                                <li class="fs-5 d-flex gap-2 align-items-center">
                                    <div class="d-flex align-items-center justify-content-center" style="width: 20px;">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    </div>
                                    <a href="{portfolio/contacts/location/url}" target="_blank" class="lk">
                                        <xsl:value-of select="portfolio/contacts/location/region" />, 
                                        <xsl:value-of select="portfolio/contacts/location/countryCode" />
                                    </a>
                                </li>
                                <li class="fs-6 mt-4">
                                    <a><xsl:value-of select="portfolio/contacts/privacy/@text" />
                                        <a><xsl:value-of select="portfolio/contacts/privacy" />: </a>
                                        <a href="mailto:{portfolio/contacts/email}" target="_blank" class="lk"><xsl:value-of select="portfolio/contacts/email" /></a>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </section>
                </main>
                
                <!-- Custom JavaScript -->
                <script src="js/navbar.js"></script>
                
                <!-- Bootstrap JavaScript Libraries -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                        crossorigin="anonymous"></script>
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>