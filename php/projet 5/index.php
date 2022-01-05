<?php
mysql_connect("localhost","root","");
mysql_select_db("gestion_client");

$a=$_POST['nom'];
$b=$_POST['prenom'];
$c=$_POST['adresse'];
$d=$_POST['mdp'];
$e=$_POST['mdp2'];
$f=$_POST['num_cin'];
 
if($e==$d)
{

$req1="INSERT INTO client VALUES ('$a','$b','$c','$d','$f')";
mysql_query($req1);

echo"<p> L'enregistrement effectuer</p>";

}


else
{
echo"<p>mot de passe different</p>";
}
mysql_close();
?>