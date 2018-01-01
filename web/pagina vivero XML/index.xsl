<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Vivero UAH</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="estilos/layout.css" type="text/css" />

</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
      <p align="left">
                <img>
                    <xsl:attribute name="src"><xsl:value-of select="paginaIndex/imagenes/imagenCabecera/@imagenUri"/></xsl:attribute>
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
          <div align="center"><a href="index.xml" class="Estilo1">Inicio</a>
          </div>
        </li>
        <li color="#564647"><a href="paginas/productos.xml">Productos</a></li>
        <li><a href="paginas/localizacion.xml">Dónde estamos</a></li>
        <li><a href="paginas/contacto.xml">Contacto</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="featured_slide">
      <img>
        <xsl:attribute name="src"><xsl:value-of select="paginaIndex/imagenes/imagenCarruse/@imagenUri"/></xsl:attribute>
        <xsl:attribute name="alt"></xsl:attribute>   
      </img>

    </div>
  </div>
  <div id="texto_inferior">
      <p>
          <xsl:value-of select="paginaIndex/descripcionCentral"/>
      </p>
  </div>

<!-- ####################################################################################################### -->
        <!-- Leyenda --> 
        <hr class="clsHr"/>          
    
        <div id="leyenda1">
                <h2>Vivero UAH</h2>
                        <ul>
                                <li><a href="index.xml">Inicio</a></li>
                                <li><a href="paginas/productos.xml">Productos</a></li>
                                <li><a href="paginas/localizacion.xml">Dónde estamos</a></li>
                                <li><a href="paginas/contacto.xml">Contacto </a></li>
                        </ul>
        </div>
      
        <div id="leyenda2">
                <h2>Contacto</h2>
                        <p class="last"><xsl:value-of select="paginaIndex/dirección/calle/nombre"/> - <xsl:value-of select="paginaIndex/dirección/calle/referencia2"/><br />
                                 <xsl:value-of select="paginaIndex/dirección/sector"/>, <xsl:value-of select="paginaIndex/dirección/localidad"/>, <xsl:value-of select="paginaIndex/dirección/códigoPostal"/><br />
                                 tel: <xsl:value-of select="paginaIndex/teléfono"/><br />
                                 fax: <xsl:value-of select="paginaIndex/teléfono"/><br />
                                 Correo electrónico:  <a href="mailto:{paginaIndex/correosElectrónicos/correoElectronicoPiePagina}">
                                    <xsl:value-of select="paginaIndex/correosElectrónicos/correoElectronicoPiePagina"/>
                                 </a><br />

                                 <iframe width="200" 
                                         height="250" 
                                         frameborder="0" 
                                         scrolling="no" 
                                         marginheight="0" 
                                         marginwidth="0">
                                     <xsl:attribute name="src">
                                        <xsl:value-of select="paginaIndex/iframeUrl/@url"/>
                                    </xsl:attribute>
                                </iframe>

                        </p> 
        </div>
        <!-- ####################################################################################################### -->
   
<!-- ####################################################################################################### -->
</body>
</html>
    </xsl:template>

</xsl:stylesheet>