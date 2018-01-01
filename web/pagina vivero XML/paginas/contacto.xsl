<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" omit-xml-declaration="yes"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
        <title>Vivero UAH | Productos </title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" href="../estilos/layout.css" type="text/css" />
        </head>
        <body id="top">
        <div class="wrapper col1">
          <div id="header">
              <p align="left">                
                        <img>
                            <xsl:attribute name="src"><xsl:value-of select="paginaContactos/imagenes/imagenCabecera/@imagenUri"/></xsl:attribute>
                            <xsl:attribute name="alt"></xsl:attribute>                    
                            <xsl:attribute name="width">100%</xsl:attribute>
                            <xsl:attribute name="height">100%</xsl:attribute>
                        </img>
              </p>  
         </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col2">
          <div id="topbar">
            <div id="topnav">
              <ul>
                <li >
                  <div align="center"><a href="../index.xml" class="Estilo1">Inicio</a></div>
                </li>
                <li color="#564647"><a href="productos.xml">Productos</a></li>
                <li><a href="localizacion.xml">Dónde estamos</a></li>
                <li><a href="contacto.xml">Contacto</a></li>
              </ul>
            </div>
            <br class="clear" />
          </div>
        </div>
        <!-- ####################################################################################################### -->

        <div class="wrapper col3">
          <div id="featured_slide">
              <img>
                            <xsl:attribute name="src"><xsl:value-of select="paginaContactos/imagenes/imagenCarruse/@imagenUri"/></xsl:attribute>
                            <xsl:attribute name="alt"></xsl:attribute>
               </img>
            </div>
          </div>
        <!-- Contacto -->

        <div id="datos">

                  <h1>Formulario de contacto</h1><br/>
                  <p>Rellene el formulario y contactaremos con usted lo antes posible.</p>
                  <p><strong><xsl:value-of select="paginaContactos/dirección/nombreLugar"/>:</strong></p>
                  <p><xsl:value-of select="paginaContactos/dirección/calle/nombre"/> - <xsl:value-of select="paginaContactos/dirección/calle/referencia"/>
                  <br/>
                  <xsl:value-of select="paginaContactos/dirección/sector"/>, <xsl:value-of select="paginaContactos/dirección/códigoPostal"/>
                  </p>
                  <p><strong>Información  de contacto:</strong></p>
                  <p>tel: <xsl:value-of select="paginaContactos/teléfono"/>
                  <br/>fax:<xsl:value-of select="paginaContactos/fax"/>
                  <br/>correo electrónico: 
                  <a href="mailto:{paginaContactos/correosElectrónicos/correoElectronicoCentroPagina}">
                    <xsl:value-of select="paginaContactos/correosElectrónicos/correoElectronicoCentroPagina"/>
                  </a>          
                  </p>

        </div>

        <div id="formulario">

                                                <form  name="contacto" enctype="multipart/form-data" method="POST">
                                                        <fieldset>
                                                                <p>
                                                                        Nombre: *<br/>
                                                                        <input type="text" id="name" name="name" required="required" size="30px"  value="" />
                                                                </p>
                                                                <p>
                                                                        Correo electrónico: *<br/>
                                                                        <input required="required"  size="30px" type="text" id="email" name="email" value="" />
                                                                </p>
                                                                <p>
                                                                        Asunto: *<br/>
                                                                        <input required="required"  size="30px" type="text" id="subject" name="subject" value=""  />
                                                                </p>
                                                                <p>
                                                                        Mensaje: <br/>
                                                                        <textarea required="required"  size="40px" name="message" rows="3" cols="40"></textarea>
                                                                </p>
                                                                <p>
                                                                        <input required="required" type="checkbox" name="condiciones" value="condiciones" /> He leído y acepto las 
                                                                        <a href ="aviso_legal.php">Condiciones Generales</a>
                                                                </p>
                                                                <p>
                                                                        <input type="submit" name="submit" value="Enviar mensaje" />
                                                                </p>
                                                        </fieldset>
                                                </form>

        </div>

        <!-- Leyenda --> 
        <hr class="clsHr"/>          
    
        <div id="leyenda1">
                <h2>Vivero UAH</h2>
                        <ul>
                                <li><a href="../index.xml">Inicio</a></li>
                                <li><a href="productos.xml">Productos</a></li>
                                <li><a href="localizacion.xml">Dónde estamos</a></li>
                                <li><a href="contacto.xml">Contacto </a></li>
                        </ul>
        </div>
      
        <div id="leyenda2">
                <h2>Contacto</h2>
                        <p class="last"><xsl:value-of select="paginaContactos/dirección/calle/nombre"/> - <xsl:value-of select="paginaContactos/dirección/calle/referencia2"/><br />
                                 <xsl:value-of select="paginaContactos/dirección/sector"/>, <xsl:value-of select="paginaContactos/dirección/localidad"/>, <xsl:value-of select="paginaContactos/dirección/códigoPostal"/><br />
                                 tel: <xsl:value-of select="paginaContactos/teléfono"/><br />
                                 fax: <xsl:value-of select="paginaContactos/teléfono"/><br />
                                 Correo electrónico:  <a href="mailto:{paginaContactos/correosElectrónicos/correoElectronicoPiePagina}">
                                    <xsl:value-of select="paginaContactos/correosElectrónicos/correoElectronicoPiePagina"/>
                                 </a><br />

                                 <iframe width="200" 
                                         height="250" 
                                         frameborder="0" 
                                         scrolling="no" 
                                         marginheight="0" 
                                         marginwidth="0">
                                     <xsl:attribute name="src">
                                        <xsl:value-of select="paginaContactos/iframeUrl/@url"/>
                                    </xsl:attribute>
                                </iframe>

                        </p> 
        </div>
        <!-- ####################################################################################################### -->
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
