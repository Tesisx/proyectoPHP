<?php
include 'conexion.php';

$r=$_POST['r'];
$con=conexion();

$res=mysql_query("select * from componentecriterio where id_comp=".$r."",$con);

?>

<select id="componentecriterio">

<option value="">Seleccione</option>
<?php while($fila=mysql_fetch_array($res)){ ?>
 <option value="<?php echo $fila['id_comp']; ?>"><?php echo $fila['nombre']; ?></option>
<?php } ?>

</select>

