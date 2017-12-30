<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : contacto.xsl
    Created on : December 30, 2017, 1:04 AM
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
<title>Vivero UAH | Productos </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="../estilos/layout.css" type="text/css" />
</head>

<body id="top">
<div class="wrapper col1">
  <div id="header">
      <p align="left">
		<img src="../imagenes/Cabecera.jpg" alt="" width="100%" height="100%" /> 
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
      <img src="../imagenes/Carrusel4.jpg" alt="" />
    </div>
  </div>
<!-- Contacto -->

<div id="datos">

          <h1>Formulario de contacto</h1><br/>
          <p>Rellene el formulario y contactaremos con usted lo antes posible.</p>
          <p><strong>Centro de jardinería y exposición:</strong></p>
          <p>Carretera de Barcelona - Autovía A2 Km.16 sentido Madrid<br/>San Fernando de Henares, 28830</p>
          <p><strong>Información  de contacto:</strong></p>
          <p>tel: +34 91 555 55 55
           <br/>fax: +34  91 555 55 55
           <br/>correo electrónico: <a href="mailto:info@viverospena.com">info@viverospena.com</a></p>
		   
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
								<input required="required" type="checkbox" name="condiciones" value="condiciones" /> He leído y acepto las <a href ="aviso_legal.php">Condiciones Generales</a>
							</p>
							<p>
								<input type="submit" name="submit" value="Enviar mensaje" />
							</p>
						</fieldset>
					</form>

</div>

<!-- Leyenda -->
<hr width = "90%" color="#008F54"/>
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
