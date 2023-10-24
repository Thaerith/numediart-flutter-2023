# numediart-flutter-2023

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
