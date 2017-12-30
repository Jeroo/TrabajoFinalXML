<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : index.xsl
    Created on : December 30, 2017, 12:58 AM
    Author     : scuev
    Description:
        Purpose of transformation follows.
-->

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
		<img src="imagenes/Cabecera.jpg" alt="" width="100%" height="100%" /> 
	  </p>
	  	  
 </div>
</div>

<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li>
          <div align="center"><a href="index.xml" class="Estilo1">Inicio</a></div>
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

      <img src="imagenes/gifplanta.gif" alt="" />

    </div>
  </div>
  <div id="texto_inferior">
      <p>Viveros es una empresa familiar creada en 1889, disponemos de 15.000m2 de exposición en nuestro centro de jardinería de Madrid.
	  Contamos con una sólida y dilatada experiencia en este sector, lo que nos permite poner a disposición de nuestros clientes un amplio surtido de especies
	  vegetales.</p>
  </div>


<!-- ####################################################################################################### -->
				<hr width = "90%" color="#008F54"/>
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
		<p class="last">Carretera de Barcelona- Autovía A2 Km. 16,500 sentido Madrid<br />
			 San Fernando de Hernares, Madrid, 2883o<br />
			 tel: +34 91 555 55 55<br />
			 fax: +34 91 555 55 55<br />
			 Correo electrónico: <a href="mailto:info@viverosUAH.com">info@viveroUAH.com</a><br />
			 <iframe width="200" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3033.476855108628!2d-3.3451889999999795!3d40.50895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd424bfc76f087f1%3A0xced3a1e98249a30f!2sUAH+Campus+Cient%C3%ADfico-Tecnol%C3%B3gico+(Externo)!5e0!3m2!1ses!2ses!4v1428406958641"></iframe>
					 
		</p> 
</div>
   
<!-- ####################################################################################################### -->
</body>
</html>
    </xsl:template>

</xsl:stylesheet>
