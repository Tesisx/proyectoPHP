<?php

function conexion(){

 $con = mysql_connect("localhost","root","");

 if (!$con){

  die('Could not connect: ' . mysql_error());
  echo 
 }

 mysql_select_db("crudabc", $con);

 return($con);

}

?>