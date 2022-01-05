<?php
mysql_connect("localhost","root","");
mysql_select_db("scolarite");

$a=$_POST['num'];
$b=$_POST['nom'];
$c=$_POST['adresse'];
$d=$_POST['num_tel'];
$e=$_POST['choix'];
;

$req1="INSERT INTO eleve VALUES ('$a','$b','$c','$d','$e')";
mysql_query($req1);

echo"<p> L'enregistrement effectuer</p>";

mysql_close()

?>