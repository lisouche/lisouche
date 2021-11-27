function valider() {
        // Collecter les réponses
        const answers = document.querySelectorAll('.answer');
        var results = new Array();

        for (let i = 0; i <= 9; i++) {
                if (answers[i].checked) {
                        newResults = results.push(1);
                } else {
                        newResults = results.push(2);
                }
        }

        console.log(results);

        // Nombre de bonnes et mauvaises réponses
        let correct = 0;
        let incorrect = 0;

        results.forEach(e => {
                if (e === 1)
                        correct += 1;
                else if (e === 2)
                        incorrect += 1;
        })

        // Afficher le résultat
    const json = {
        "0": "Quel est le langage informatique le plus courant utilisé pour écrire les pages web ?",
        "1": "À quoi est égal 1 octet ?",
        "2": "Combien vaut 1 Mo (mégaoctet) ?",
        "3": "Qu’est-ce qu’une adresse IP ?",
        "4":"Que veut dire FTP ?",
        "5":"Comment s’appelle un logiciel malveillant installé dans un ordinateur dans le but de collecter et transférer des informations sans que l’utilisateur en ait connaissance ?",
        "6":"Qu’est-ce qu’un CPU ?",
        "7":"Comment appelle-t-on les connecteurs utilisés pour brancher les câbles d’un réseau informatique ?",
        "8":"Comment appelle-t-on l´écran de l’ordinateur ?",
        "9":"Comment appelle-t-on un logiciel dont l’utilisateur doit rétribuer l’auteur s’il veut continuer à l’utiliser après une période de gratuité ?",
    };
    document.write(`<link rel="stylesheet" type="text/css" href="index.css">`);
        document.write(`Correction<br><br>`);
        for (let i = 0; i <= results.length - 1; i++) {
                document.write(` ${json[i]} <li>La réponse est ${results[i] == 1 ? 'correct' : 'incorrect'}</li>` + "<br>");
        }
        document.write(`${correct} bonnes réponses <br>${incorrect} mauvaises réponses <br>Score final : ${correct}/${answers.length} => ${correct/10*100}% de bonnes réponses`);
   }
