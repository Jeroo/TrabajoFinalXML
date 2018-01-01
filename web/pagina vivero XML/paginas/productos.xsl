<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
   <xsl:output method="html"/>
   <xsl:param name="group-size" select="3"/>
   <xsl:template match="/productos">
      <xsl:if test="count(//producto) &gt; 0">
         <xsl:apply-templates select="producto"/>
      </xsl:if>
   </xsl:template>
   <xsl:template match="producto">
      <xsl:if test="position() mod $group-size = 1">
          <div class="fl_right" id="latest">
             <ul> 
                <xsl:apply-templates select=".|following-sibling::producto[position() &lt; $group-size]" mode="list"/>
             </ul>
             <br class="clear" />
          </div>
      </xsl:if>
   </xsl:template>
    <xsl:template match="producto" mode="list">
      <li class="{position()}">         
        <h2 align="center">
                 <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="nombre/@urlNombre"/> 
                    </xsl:attribute>
                     <xsl:value-of select="nombre"/>
                </a>
        </h2>
        <p class="imgholder">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="imagen/@urlImg"/>
                </xsl:attribute>
                <xsl:attribute name="alt">
                </xsl:attribute>
            </img>
        </p>
        <p>
            <xsl:value-of select="descripcion"/>
        </p>
      </li>
   </xsl:template> 
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
                            <xsl:attribute name="src"><xsl:value-of select="paginaProductos/imagenes/imagenCabecera/@imagenUri"/></xsl:attribute>
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
                <li>
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
                    <xsl:attribute name="src"><xsl:value-of select="paginaProductos/imagenes/imagenCarruse/@imagenUri"/></xsl:attribute>
                    <xsl:attribute name="alt"></xsl:attribute>
               </img>
            </div>
          </div>
         <!-- 1º Fila productos --> 
        <div class="wrapper col4">               
            <xsl:for-each select="paginaProductos/productos/producto"> 
                <!-- position()º Fila productos -->  
                <xsl:if test="position() mod $group-size = 1">
                    <div class="fl_right" id="latest">
                       <ul> 
                          <xsl:apply-templates select=".|following-sibling::producto[position() &lt; $group-size]" mode="list"/>
                       </ul>
                       <br class="clear" />
                    </div>
                </xsl:if>   
              </xsl:for-each>       
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
                        <p class="last"><xsl:value-of select="paginaProductos/dirección/calle/nombre"/> - <xsl:value-of select="paginaProductos/dirección/calle/referencia2"/><br />
                                 <xsl:value-of select="paginaProductos/dirección/sector"/>, <xsl:value-of select="paginaProductos/dirección/localidad"/>, <xsl:value-of select="paginaProductos/dirección/códigoPostal"/><br />
                                 tel: <xsl:value-of select="paginaProductos/teléfono"/><br />
                                 fax: <xsl:value-of select="paginaProductos/teléfono"/><br />
                                 Correo electrónico:  <a href="mailto:{paginaProductos/correosElectrónicos/correoElectronicoPiePagina}">
                                    <xsl:value-of select="paginaProductos/correosElectrónicos/correoElectronicoPiePagina"/>
                                 </a><br />

                                 <iframe width="200" 
                                         height="250" 
                                         frameborder="0" 
                                         scrolling="no" 
                                         marginheight="0" 
                                         marginwidth="0">
                                     <xsl:attribute name="src">
                                        <xsl:value-of select="paginaProductos/iframeUrl/@url"/>
                                    </xsl:attribute>
                                </iframe>

                        </p> 
        </div>
        <!-- ####################################################################################################### -->
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
