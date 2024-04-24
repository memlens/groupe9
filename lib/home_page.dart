
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Politics",
                  style: TextStyle(
                    color: Colors.green, // Couleur verte
                    fontSize: 15, // Taille de police petite
                  ),
                ),
                Text(
                  "Nouveau code électoral: une casse tête",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, // Texte en gras
                    fontSize: 30, // Taille de police grande
                    color: Colors.black, // Couleur noire
                  ),
                ),
                Text(
                  "30/04/2023",
                  style: TextStyle(
                    fontSize: 12, // Taille de police petite
                    color: Colors.blueGrey, // Couleur bleu gris
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Image.asset(
                "assets/images/girl2.jpg",
                width: 250,
                fit: BoxFit.cover, // Redimensionne l'image pour couvrir toute la largeur
                alignment: Alignment.centerLeft,
              ),
            ),
          ),

          Container(
            child: Text("Eh bien, un byte code (il existe plusieurs types de byte code, mais nous parlons ici de celui créé par Java) n'est rien d'autre qu'un code intermédiaire entre votre code Java et le code machine. Ce code particulier se trouve dans les fichiers précompilés de vosprogrammes ; en Java, un fichier source a pour extension .java et un fichier précompilé a l'extension .class : c'est dans cedernier que vous trouverez du byte code. Je vous invite à examiner un fichier .class à la fin de cette partie (vous en aurez aumoins un), mais je vous préviens, c'est illisible !Par contre, vos fichiers .java sont de simples fichiers texte dont l'extension a été changée. Vous pouvez donc les ouvrir, lescréer ou encore les mettre à jour avec le Bloc-notes de Windows, par exemple. Cela implique que, si vous le souhaitez, vouspouvez écrire des programmes Java avec le Bloc-notes ou encore avec Notepad++.Reprenons. Vous devez savoir que tous les programmes Java sont composés d'au moins une classe. Elle doit contenir uneméthode appelée main : ce sera le point de démarrage de notre programme.Une méthode est une suite d'instructions à exécuter. C'est un morceau de logique de notre programme. Une méthode contient :un en-tête : celui-ci va être en quelque sorte la carte d'identité de la méthode ;un corps : le contenu de la méthode, délimité par des accolades ;une valeur de retour : le résultat que la méthode va retourner.",

    style: TextStyle(

            ),)
          ),
          
        ],
      ),
    );
  }
}
