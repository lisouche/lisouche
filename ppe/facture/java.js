function calculate() {
	// Prix
	var p1 = Number(document.getElementById('p1').value);
	var p2 = Number(document.getElementById('p2').value);
	var p3 = Number(document.getElementById('p3').value);
	var p4 = Number(document.getElementById('p4').value);
	var p5 = Number(document.getElementById('p5').value);
	var p6 = Number(document.getElementById('p6').value);
	var p7 = Number(document.getElementById('p7').value);
	var p8 = Number(document.getElementById('p8').value);
	var p9 = Number(document.getElementById('p9').value);
	var p10 = Number(document.getElementById('p10').value);
	const prix = p1+p2+p3+p4+p5+p6+p7+p8+p9+p10;
	// Quantité
	var q1 = Number(document.getElementById('q1').value);
	var q2 = Number(document.getElementById('q2').value);
	var q3 = Number(document.getElementById('q3').value);
	var q4 = Number(document.getElementById('q4').value);
	var q5 = Number(document.getElementById('q5').value);
	var q6 = Number(document.getElementById('q6').value);
	var q7 = Number(document.getElementById('q7').value);
	var q8 = Number(document.getElementById('q8').value);
	var q9 = Number(document.getElementById('q9').value);
	var q10 = Number(document.getElementById('q10').value);
	const qte = q1+q2+q3+q4+q5+q6+q7+q8+q9+q10;
	// Total
	var t1 = Number(document.getElementById('t1').value=p1*q1);
	var t2 = Number(document.getElementById('t2').value=p2*q2);
	var t3 = Number(document.getElementById('t3').value=p3*q3);
	var t4 = Number(document.getElementById('t4').value=p4*q4);
	var t5 = Number(document.getElementById('t5').value=p5*q5);
	var t6 = Number(document.getElementById('t6').value=p6*q6);
	var t7 = Number(document.getElementById('t7').value=p7*q7);
	var t8 = Number(document.getElementById('t8').value=p8*q8);
	var t9 = Number(document.getElementById('t9').value=p9*q9);
	var t10 = Number(document.getElementById('t10').value=p10*q10);
    const total = t1+t2+t3+t4+t5+t6+t7+t8+t9+t10; 

	// Remise
	const remise = Number(document.getElementById('r1').value);
	// Sous-Total
	const sousTotal = Number(document.getElementById('st1').value=prix*qte);
	// Sous-Total moins les remises
	const sTr = Number(document.getElementById('str1').value=sousTotal-(remise/100));
	// Taux d'impots
	const tauxImpots = Number(document.getElementById('ti1').value);
	// Taxe totale
	const totalTaxe = Number(document.getElementById('tt1').value=Math.round(sousTotal*(tauxImpots/100)));
	// Solde
	const solde = Number(document.getElementById('solde').value=sT_r+totalTaxe);
    // Frais exp
    const fraisexp = Number(document.getElementById('em1').value);
}

var actuel=new Date();
	var jour=actuel.getDate();
	var mois=actuel.getMonth()+1;
	var annee=actuel.getFullYear();
	var actuel= (jour + "/" + mois + "/" + annee)

	document.write('<input type="text" readonly class="i4" value="' + actuel + '" />');



function access() {
	var pseudo = prompt("Identifiant", "");
	var mdp = prompt("Mot de passe", "");

	if (pseudo === "Admin_GSB" && mdp === "admin") {
		document.location.href="lien.html";
	}
}
