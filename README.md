# numediart-flutter-2023

## Dart

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
