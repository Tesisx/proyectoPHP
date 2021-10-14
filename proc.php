<?php
include 'conexion.php';

$q=$_POST['q'];
$con=conexion();

$res=mysql_query("select * from criterioelemental where id_crit=".$q."",$con);

?>

<select id="criterioelemental" onchange="myFunction2(this.value)"><!--cuando seleccionan un componente de criterio se ejecuta la funcion myFunction2() ubicada en el archivo index.php-->

<option value="">Seleccione</option>
<?php while($fila=mysql_fetch_array($res)){ ?>
 <option value="<?php echo $fila['id_crit']; ?>"><?php echo $fila['nombre']; ?></option>
<?php } ?>

</select>

