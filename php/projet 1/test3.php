<?php 
$a=$_REQUEST['t1'];
$b=$_REQUEST['t2'];
$s=$a+$b;
$p=$a*$b;
$r=$a%$b;
$d=$a/$b;

echo 'voila la somme: '. $s.'<br>';
echo 'voila le produit: '. $p.'<br>';
echo 'voila le reste de la division: '. $r.'<br>';
echo 'voila la division: '. $d.'<br>';

if ($a<$b)
	echo $a.' est plus petit que '.$b;
else 
	echo $a.'est plus grand que'.$b;


?>

