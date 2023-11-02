# numediart-flutter-2023

## Table des matières

- [S'authentifier avec Firebase](./firebase.md)

## Flutter

Flutter est un framework qui permet de développer des applications mobiles (Android & iOS) à partir d'un même code, d'un même projet. Au fil des années, l'équipe de développement à ajouter la capacité de créer des applications web et desktop (macOS, Linux & Windows).

Flutter nous permet donc, à partir d'un même projet, de builder 6 applications pour chaque OS. Par le passé, une application native devait être développée pour chaque plateforme, soit 6 projets différents avec chacun son équipe de développement. Flutter par son aspect hybride permet un gain de temps et d'argent.

Pourquoi une application native ne peut pas tourner sur les autres plateformes et une application hybride le peut ? Car chaque OS présente ses spécificités, sa manière de gérer ses applications, sa manière de les exécuter. Flutter gère ces spécificités pour nous. Il est toutefois possible d'ajouter des fonctionnalités ou modifier un visuel selon la plateforme (différence de UI entre web et mobile, Android et iOS...), l'important est que la logique n'a pas à être réécrite dans différents languages. De plus, même si les visuels changent selon les plateformes, il est facile aux développeurs de les modifier car le language est le même.

### Installation

Avant de développer sur Flutter, il doit être téléchargé et installé. La [documentation](https://docs.flutter.dev/get-started/install) explique les étapes à réaliser selon votre système d'exploitation.

## Dart

Dart est le language de programmation utilisé par Flutter. C'est un language orienté objet créé par Google, initialement prévu pour le développement d'applications web. Il est régulièrement mis à jour afin d'apporter des nouvelles fonctionnalités qui facilitent le travail des développeurs (optimisations, nouvelle syntaxe, etc).

### Pour débuter

- [Dart documentation](https://dart.dev/guides) met à disposition les resources techniques nécessaires à la réalisation des projets en Dart mais aussi pour l'apprentissage.
- [DartPad](https://dartpad.dev/?) est un mini IDE en ligne pour apprendre et tester des fonctions en Dart.

<img width="1277" alt="Screenshot 2023-10-19 at 15 42 57" src="https://github.com/Thaerith/numediart-flutter-2023/assets/32436781/ceb19115-9929-47f0-90b1-fdc525ad2e24">

### Comprendre l'exemple de DartPad

```dart
void main() {
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }
}
```

Sur cet exemple, nous pouvons voir 4 lignes:
- `void main() { }`: est la fonction principale et le point d'entrée de tous programme écrit en Dart. Une fonction est un bout de code réutilisable qui peut être 
appelé là où c'est nécessaire.
- `for (int i = 0; i < 5; i++) { }` est la syntaxe d'une boucle. Une boucle permet d'exécuter le code dans son scope (entre `{ }`) tant que la condition (entre `()`
est respectée. Il existe des boucles `for`, `while` et `do while`.
- `print('hello ${i + 1}');` est un appel de fonction qui permet d'afficher sur la console une chaîne de caractère (string). Dans ce cas-ci, on demande
d'afficher "hello" avec un nombre correspondant au nombre de fois où la fonction `print` est appelée (car nous sommes dans une boucle).

### Syntaxe

La documentation de Dart met à disposition un document avec les bases de la syntaxe du language de programmation:
- [Les variables](https://dart.dev/language/variables);
- [Les opérateurs](https://dart.dev/language/operators);
- [Les commentaires](https://dart.dev/language/comments);
- [Les imports](https://dart.dev/language/libraries);

## Android Studio

Android Studio est un IDE (environnement de développement intégré) permettant de créer et gérer des projets Android. Il est proposé par Google depuis 2014, mais il est possible d'utiliser d'autres IDE pour le développement Android. Flutter ne fait pas exception à cette règle, même s'il est facile de créer et gérer un projet Flutter grâce à son plugin qui s'intègre à Android Studio.

### Installation

Android Studio peut être installé sur Windows, Linux & macOS. La [documentation](https://developer.android.com/studio/install) vous explique toutes les étapes. Après l'installation, vous pouvez créer vos projets Android et Flutter.

### Créer un projet Flutter

1. Lancer et sélectionner `New Flutter Project`.
   <img width="801" alt="Screenshot 2023-10-24 at 14 48 52" src="https://github.com/Thaerith/numediart-flutter-2023/assets/32436781/55723940-362a-465c-be21-56e132465482">
   
2. Sélectionner l'emplacement du dossier où se trouve le SDK de Flutter (voir installation de Flutter), le chemin d'accès est sauvegardé pour les projets suivants.
   <img width="802" alt="Screenshot 2023-10-24 at 14 49 37" src="https://github.com/Thaerith/numediart-flutter-2023/assets/32436781/b7aae447-7c46-4ed3-91a0-3ff24f63c18f">
   
3. Introduire les informations du projet et de l'application:
   <img width="802" alt="Screenshot 2023-10-24 at 15 42 36" src="https://github.com/Thaerith/numediart-flutter-2023/assets/32436781/abd66779-2942-4f67-8aaf-0f612ba24207">
   - le nom du projet, en minuscule. les `_` sont autorisés entre les mots qui composent le nom du projet;
   - une description du projet;
   - les plateformes visées;    
  
5. Votre projet est créé avec une application par défaut.
   <img width="1166" alt="Screenshot 2023-10-24 at 15 44 57" src="https://github.com/Thaerith/numediart-flutter-2023/assets/32436781/694f7271-4aed-4676-87f2-246544063f58">

### Créer un fichier

Pour créer un fichier Dart dans Android Studio (ou n'importe quel autre IDE compatible avec Flutter), suivez ces étapes simples :

1. **Ouvrez Android Studio :** Assurez-vous que vous avez Android Studio installé et que le plugin Flutter est configuré.

2. **Ouvrez votre projet Flutter :** Ouvrez votre projet Flutter existant ou créez un nouveau projet si vous n'en avez pas déjà un.

3. **Naviguez vers le dossier lib :** Dans Android Studio, à gauche, vous verrez l'arborescence de votre projet. Trouvez et développez le dossier `lib`. C'est généralement là où vous placez vos fichiers Dart.

4. **Clic droit dans le dossier lib :** Cliquez avec le bouton droit de la souris sur le dossier `lib` (ou appuyez avec le doigt sur le trackpad).

5. **Sélectionnez "New" (Nouveau) :** Une liste contextuelle s'ouvrira. Choisissez "New" (Nouveau) pour créer un nouveau fichier.

6. **Sélectionnez "Dart File" (Fichier Dart) :** Une nouvelle liste contextuelle apparaîtra. Choisissez "Dart File" (Fichier Dart).

7. **Donnez un nom au fichier :** Vous pouvez donner un nom à votre fichier Dart, par exemple, "main.dart" si c'est le point d'entrée de votre application.

8. **Cliquez sur "OK" :** Cliquez sur le bouton "OK" pour créer le fichier Dart.

<img width="807" alt="Screenshot 2023-10-26 at 13 49 15" src="https://github.com/Thaerith/numediart-flutter-2023/assets/32436781/4aa8ec48-6888-47cf-920d-e4658c356e23">

Maintenant, vous avez créé un fichier Dart dans le dossier `lib` de votre projet. Vous pouvez ouvrir le fichier en double-cliquant dessus, puis commencer à écrire votre code Dart. Ce fichier peut contenir des classes, des fonctions et d'autres éléments nécessaires pour développer votre application Flutter.

## Projet Flutter

### Structure d'un projet en Flutter

Un projet Flutter typique suit une structure de dossiers et de fichiers bien définie pour organiser le code, les ressources et les configurations. Voici la structure de base d'un projet Flutter :

```
my_flutter_app/
  ├── android/          # Code spécifique à Android
  ├── ios/              # Code spécifique à iOS
  ├── lib/              # Code source Dart principal de l'application
  │    ├── main.dart    # Point d'entrée principal de l'application
  ├── test/             # Tests unitaires et intégration
  ├── assets/           # Fichiers statiques (images, fichiers JSON, etc.)
  ├── build/            # Fichiers générés et artefacts de construction
  ├── web/              # Code spécifique à la version web (pour Flutter web)
  ├── pubspec.yaml      # Fichier de configuration du projet
  ├── .gitignore        # Liste des fichiers à ignorer lors de la gestion de version (Git)
  ├── README.md         # Documentation du projet
```

Voici une brève explication de ces éléments clés :

1. `android/` : Ce dossier contient le code spécifique à la plateforme Android. Il est utilisé pour personnaliser les fonctionnalités et le comportement de votre application sur Android.

2. `ios/` : Ce dossier contient le code spécifique à la plateforme iOS. Il est utilisé pour personnaliser les fonctionnalités et le comportement de votre application sur iOS.

3. `lib/` : Ce dossier contient le code source Dart principal de votre application. Le fichier `main.dart` est généralement le point d'entrée de votre application.

4. `test/` : Vous pouvez mettre en place des tests unitaires et d'intégration dans ce dossier pour garantir la qualité de votre application.

5. `assets/` : Les fichiers statiques tels que des images, des fichiers JSON, des polices de caractères, etc., peuvent être stockés ici pour être utilisés dans votre application.

6. `build/` : Ce dossier est généré par Flutter et contient des fichiers temporaires et des artefacts de construction. Vous n'avez généralement pas besoin de le modifier manuellement.

7. `web/` : Ce dossier est utilisé dans le contexte de Flutter web pour stocker le code spécifique à la version web de votre application.

8. `pubspec.yaml` : C'est un fichier de configuration crucial qui liste les dépendances du projet, les métadonnées de l'application, les ressources, les scripts, etc.

9. `.gitignore` : Ce fichier liste les fichiers et dossiers à ignorer lors de la gestion de version (avec Git, par exemple). Il est utile pour exclure les fichiers générés et les dépendances inutiles.

10. `README.md` : Un fichier de documentation où vous pouvez fournir des informations sur votre projet, son fonctionnement, et comment le configurer.

La structure de projet Flutter peut varier en fonction des besoins de votre application. Vous pouvez ajouter d'autres dossiers et fichiers en fonction de vos exigences spécifiques. Cependant, la structure de base que j'ai décrite est un bon point de départ pour la plupart des projets Flutter.

### Fonction `main`

La fonction `main` est un point d'entrée fondamental dans de nombreuses applications Flutter, ainsi que dans la plupart des programmes en Dart, le langage de programmation utilisé pour développer des applications Flutter. La fonction `main` est le point de départ de l'exécution de votre application Flutter. Voici une explication de son rôle et de sa structure typique dans une application Flutter :

1. Rôle de la fonction `main` :
   - La fonction `main` est l'endroit où démarre l'exécution de votre application Flutter. Lorsque vous lancez votre application, le système d'exploitation exécute la fonction `main` en premier.

2. Structure typique de la fonction `main` dans une application Flutter :

   ```dart
   void main() {
     runApp(MyApp());
   }
   ```

   - `main()` est une fonction qui ne renvoie rien (`void`), et elle ne prend généralement pas d'argument. C'est la signature standard de la fonction `main` en Dart.
   - `runApp` est une fonction fournie par Flutter qui prend en argument un widget et l'affiche dans l'interface utilisateur de l'application. Le widget `MyApp` est généralement la racine de la hiérarchie des widgets de votre application.

3. MyApp :
   - `MyApp` est généralement un widget qui sert de point de départ à votre application Flutter. Il peut être personnalisé pour configurer la structure générale de votre interface utilisateur, définir des thèmes, gérer la navigation, etc.

En résumé, la fonction `main` est la première fonction exécutée lorsque vous lancez votre application Flutter. Elle initialise l'application en appelant `runApp` avec un widget, qui servira de point de départ pour la construction de l'interface utilisateur de votre application. À partir de là, la structure et le fonctionnement de votre application Flutter sont gérés par les widgets et la logique que vous définissez dans `MyApp` et les autres widgets que vous créez.

La pratique courante de placer la fonction main dans le dossier lib/ dans un fichier appelé main.dart.

### Widget

En Flutter, un widget est un élément de base essentiel qui est utilisé pour construire l'interface utilisateur de votre application. Les widgets sont les blocs de construction de tout ce que vous voyez à l'écran, de la disposition des boutons et des images aux éléments plus complexes comme les barres de navigation et les cartes. Ils décrivent la structure et l'apparence de votre application, et ils peuvent être simples (comme du texte ou une icône) ou complexes (comme un formulaire ou une liste scrollable). Les widgets sont réutilisables, ce qui signifie que vous pouvez les combiner pour créer des interfaces utilisateur complexes.

Il existe deux types principaux de widgets en Flutter :

1. **Widgets Stateless :** Ces widgets sont immuables, ce qui signifie qu'ils ne peuvent pas changer une fois créés. Leur apparence et leur contenu sont généralement statiques. Par exemple, le widget `Text` est un widget Stateless qui affiche du texte à l'écran.

2. **Widgets Stateful :** Ces widgets sont mutables et peuvent changer au fil du temps en réponse aux interactions de l'utilisateur ou à d'autres événements. Par exemple, le widget `TextField` est un widget Stateful qui permet à l'utilisateur de saisir du texte, et son contenu peut changer.

La hiérarchie des widgets dans Flutter est arborescente, ce qui signifie que vous pouvez imbriquer des widgets les uns dans les autres pour créer des interfaces utilisateur complexes. Chaque widget a une méthode `build` qui spécifie comment il doit être rendu à l'écran. Les widgets peuvent également avoir des propriétés (ou des paramètres) qui déterminent leur comportement et leur apparence.

Exemple de code utilisant des widgets en Flutter :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mon Application Flutter'),
        ),
        body: Center(
          child: Text('Bonjour, Flutter!'),
        ),
      ),
    );
  }
}
```

Dans cet exemple, nous utilisons divers widgets pour construire une interface utilisateur simple. Par exemple, `MaterialApp`, `Scaffold`, `AppBar`, et `Text` sont tous des widgets qui décrivent la structure et l'apparence de l'interface utilisateur de l'application. La méthode `build` de chaque widget détermine comment il est rendu à l'écran.

### Le widget Application

MaterialApp et CupertinoApp sont utilisés pour définir des paramètres généraux de l'application, notamment le thème, la navigation et les langues prises en charge, selon le style de design que vous choisissez.

MaterialApp : Ce widget est spécifiquement destiné à la conception de style "Material Design", qui est le style de design recommandé pour les applications Android. Il définit les propriétés globales de l'application, telles que le thème, la langue, et la navigation. Par exemple, vous pouvez définir le thème de votre application avec theme, gérer la navigation avec routes, et spécifier la page d'accueil avec home.

CupertinoApp : Si vous souhaitez créer une application avec le style de design d'iOS, vous utiliserez le widget CupertinoApp. Il est similaire à MaterialApp mais est conçu pour suivre les directives de conception spécifiques d'Apple.

### Le scaffold

Le widget `Scaffold` est l'un des widgets les plus couramment utilisés pour créer une mise en page de base dans une application Flutter. Il fournit une structure de base pour les applications et simplifie la création d'interfaces utilisateur courantes en incluant une barre d'applications (app bar), un contenu principal (body), un tiroir latéral (drawer) et bien d'autres éléments. Voici une explication des composants clés d'un `Scaffold` :

1. **App Bar (Barre d'applications) :** Le widget `AppBar` est généralement placé dans la propriété `appBar` du `Scaffold`. Il s'agit de la barre en haut de l'écran qui affiche le titre de la page, des actions, un bouton de retour, etc. Vous pouvez personnaliser l'apparence de la barre d'applications en définissant son contenu, son arrière-plan, ses actions, etc.

2. **Body (Corps) :** Le contenu principal de votre page est généralement défini dans la propriété `body` du `Scaffold`. Vous pouvez y placer un seul widget ou une structure complexe de widgets pour construire la partie principale de votre interface utilisateur.

3. **Drawer (Tiroir latéral) :** Le widget `Drawer` peut être utilisé pour créer un tiroir latéral que l'utilisateur peut faire glisser depuis le bord de l'écran pour révéler des options de navigation ou d'autres fonctionnalités. Le tiroir latéral est défini dans la propriété `drawer` du `Scaffold`.

4. **Floating Action Button (Bouton d'action flottant) :** Le widget `FloatingActionButton` permet de placer un bouton d'action au bas de l'écran. C'est utile pour des actions contextuelles, comme créer un nouvel élément, et il est défini dans la propriété `floatingActionButton` du `Scaffold`.

5. **Bottom Navigation Bar (Barre de navigation inférieure) :** Le widget `BottomNavigationBar` peut être utilisé pour créer une barre de navigation en bas de l'écran, qui permet à l'utilisateur de basculer entre différentes vues ou sections de l'application. Il est défini dans la propriété `bottomNavigationBar` du `Scaffold`.

6. **Bottom Sheet (Feuille inférieure) :** Vous pouvez également inclure une feuille inférieure en définissant la propriété `bottomSheet`. Cela permet d'afficher du contenu en bas de l'écran qui peut être replié ou déplacé par l'utilisateur.

Voici un exemple simple d'utilisation du widget `Scaffold` :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Mon Application Flutter'),
      ),
      body: Center(
        child: Text('Bonjour, Flutter!'),
      ),
    ),
  ));
}
```

Dans cet exemple, le widget `Scaffold` définit une barre d'applications avec un titre, et le contenu principal est constitué d'un simple texte centré. C'est une structure de base que vous pouvez personnaliser en fonction des besoins de votre application.

Le widget `Scaffold` facilite la création d'une structure d'interface utilisateur cohérente dans vos applications Flutter en fournissant une base commune pour des éléments tels que la barre d'applications, le contenu principal et d'autres fonctionnalités d'interface utilisateur.

### Les layouts

Les "layouts" en Flutter se réfèrent à la manière dont vous organisez et structurez les widgets pour créer la mise en page (layout) de votre interface utilisateur. Flutter propose une variété de widgets pour vous aider à créer des mises en page complexes et réactives. Voici quelques-uns des principaux widgets de mise en page que vous utiliserez fréquemment :

1. **`Container` :** Le widget `Container` est un conteneur générique qui peut contenir d'autres widgets. Il est souvent utilisé pour définir la taille, la couleur de fond, les marges et le rembourrage d'un widget.

2. **`Row` et `Column` :** Les widgets `Row` (ligne) et `Column` (colonne) sont utilisés pour organiser les enfants horizontalement ou verticalement. Ils permettent de créer des mises en page flexibles.

3. **`ListView` :** Le widget `ListView` permet de créer des listes déroulantes ou des listes à défilement. Il est utile pour afficher une liste d'éléments, qu'elle soit de direction verticale ou horizontale.

4. **`Stack` :** Le widget `Stack` permet de superposer des widgets les uns sur les autres. C'est utile lorsque vous avez besoin de placer des widgets les uns par-dessus les autres, comme des boutons ou des images superposées.

5. **`Expanded` :** Le widget `Expanded` est utilisé dans un `Row` ou une `Column` pour permettre à un enfant de prendre autant d'espace que possible dans la direction donnée. Cela est couramment utilisé pour créer des mises en page flexibles et réactives.

6. **`Flexible` :** Le widget `Flexible` est similaire à `Expanded`, mais il offre un contrôle plus fin sur la manière dont l'espace est distribué entre les enfants d'un `Row` ou d'une `Column`.

7. **`GridView` :** Le widget `GridView` vous permet de créer des mises en page de grille, où les éléments sont organisés en lignes et en colonnes. Vous pouvez spécifier le nombre de colonnes, de lignes, et comment les enfants sont alignés.

8. **`Card` :** Le widget `Card` est utilisé pour créer des cartes rectangulaires qui contiennent des informations ou du contenu. Il est souvent utilisé dans des listes de cartes.

9. **`Wrap` :** Le widget `Wrap` est utilisé pour organiser les enfants dans un conteneur en les enveloppant sur plusieurs lignes si nécessaire. C'est utile lorsque vous avez une liste d'éléments qui doit s'adapter dynamiquement à l'écran.

10. **`SingleChildScrollView` :** Ce widget est utilisé pour créer un conteneur qui peut défiler lorsque le contenu est trop grand pour tenir à l'écran. Il est couramment utilisé pour créer des écrans avec beaucoup de contenu déroulant.

Ces widgets de mise en page vous permettent de concevoir des interfaces utilisateur complexes et adaptables. En utilisant ces widgets de manière appropriée et en les imbriquant, vous pouvez créer des mises en page personnalisées pour répondre aux besoins spécifiques de votre application Flutter. La flexibilité de Flutter en matière de mise en page permet de créer des applications réactives pour une variété de plates-formes.
