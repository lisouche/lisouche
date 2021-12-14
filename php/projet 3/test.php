<?php 
$a=$_REQUEST['t1'];
$b=$_REQUEST['t2'];
$c=$_REQUEST['t3'];
$d=$_REQUEST['t4'];
$e=$_REQUEST['t5'];

$r=($a*2+$b*2+$c*2+$d*3+$e*3)/12;

if ($r<10)
	echo 'refuser';
else if ($r>=10)
	echo 'admis';
elseif ($r>=10)
	echo 'admis avec mention';



?>