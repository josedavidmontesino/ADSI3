<!doctype html>
<html>
  <head>
    <title>Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">   
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="miscss/estilos.css" rel="stylesheet"/>
    <script src="js/bootstrap.js"></script>
  </head>
  <body>
    <div id="div1" class="container">
       <br>
       <div id="div2">
          <img src="IMAGENES/banner.png " class="img-responsive">
          <div id="div3">
              <form id="formulario" method="post" action="menu.php"> 
                 <br>
                 <strong class="lgris"> usuario y contraseña para iniciar sesión</strong>
                 <br>
	              <label class="lgris">Nombre de Usuario:</label>
	              <br>
                 <input  style="text-transform: uppercase;" type="text" name="usuario" value="" required/>
	              <br>
                <label class="lgris">Contraseña:</label>
	              <br>
                 <input   type="password" name="clave" value="" required/> 
	              <br><br>
	              <input class="btn btn-danger" type="submit" value="Iniciar sesión" >
                 <br><br>
               </form>
           </div>
        </div>   
     </div>  
     <br><br>
  </body>
</html> 