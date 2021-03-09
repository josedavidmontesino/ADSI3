<?php
try {
  $con = new PDO('mysql:host=localhost;dbname=sena_bd', 'root', '1234');
  $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  $stmt = $con->prepare('SELECT * FROM tiposprograma');
  $stmt->execute();

  while( $datos = $stmt->fetch() )
    echo $datos[0] ."   ".$datos[1].'<br/>';

   

} catch(PDOException $e) {
  echo 'Error: ' . $e->getMessage();
}
?>