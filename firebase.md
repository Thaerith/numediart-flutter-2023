# S'authentifier avec Firebase

Dans ce chapitre, nous allons intégrer Firebase à notre application Flutter pour ajouter une fonctionnalité d'authentification robuste. Nous commencerons par configurer Firebase, puis nous passerons à la mise en œuvre de l'authentification par e-mail/mot de passe. À la fin de ce chapitre, les utilisateurs seront capables de s'inscrire pour créer un nouveau compte et de se connecter à l'application.

Dans la continuité de notre parcours d'apprentissage, nous allons également explorer l'interface de Firebase, aussi connue sous le nom de Firebase Console. Cet outil en ligne est essentiel pour gérer et surveiller les aspects de votre application liés à Firebase, comme l'authentification des utilisateurs, la gestion de la base de données, les règles de sécurité, et plus encore. En maîtrisant l'utilisation de la Firebase Console, nous pourrons efficacement administrer les fonctionnalités backend de notre application Flutter, offrant ainsi une expérience riche et sécurisée à nos utilisateurs.

## Qu'est-ce que Firebase ?

Firebase est une plateforme de développement d'applications mobiles et web développée par Google. Elle propose une variété de services et d'outils qui aident les développeurs à construire des applications de haute qualité, à les tester, à les gérer et à les faire évoluer. Voici quelques éléments clés :

Firebase Authentication: Offre une solution complète d'identification des utilisateurs, y compris des fonctionnalités prêtes à l'emploi pour l'authentification via des emails, des comptes Google, Facebook, Twitter, et bien plus.

Firebase Realtime Database & Firestore: Ce sont des bases de données NoSQL hébergées dans le cloud qui permettent de stocker et de synchroniser les données entre les utilisateurs en temps réel. Firestore est la nouvelle version de la Realtime Database avec une meilleure structure de requête et des fonctionnalités de mise à l'échelle.

Firebase Cloud Messaging (FCM): Permet d'envoyer des notifications et des messages à des utilisateurs sur différentes plateformes.

Firebase Storage: Offre un espace de stockage sécurisé pour les fichiers téléchargés par les utilisateurs, comme les images, les vidéos, etc.

Firebase Hosting: Permet de déployer des applications web rapidement et de les héberger sur une infrastructure globale sécurisée.

Firebase Analytics: Fournit des analyses détaillées sur le comportement des utilisateurs et l'utilisation de l'application.

L'intégration de Firebase dans une application Flutter peut considérablement accélérer le développement, car elle réduit le besoin de développer une infrastructure backend complexe. Firebase fournit des SDK et des bibliothèques qui se synchronisent bien avec Flutter, ce qui permet une intégration transparente.

## Installer Firebase

### Installer un package Flutter

### Manuellement

Pour ajouter une bibliothèque à un projet Flutter, vous devez suivre quelques étapes simples. Voici un guide de base pour l'intégration d'une bibliothèque :

1. **Trouver la bibliothèque** :
   Allez sur le site web [pub.dev](https://pub.dev/), qui est le répertoire officiel des packages Flutter. Recherchez la bibliothèque que vous souhaitez ajouter à votre application.

2. **Obtenir la dernière version** :
   Sur la page de la bibliothèque, vous trouverez les instructions pour l'ajouter à votre projet. Cela inclut le nom du package et la dernière version disponible.

3. **Mettre à jour le fichier `pubspec.yaml`** :
   Ouvrez le fichier `pubspec.yaml` de votre projet Flutter. Sous `dependencies:`, ajoutez une nouvelle ligne avec le nom de la bibliothèque et la version que vous avez trouvée, comme ceci :

   ```yaml
   dependencies:
     flutter:
       sdk: flutter
     your_package_name: ^latest_version
   ```

4. **Installer la bibliothèque** :
   Une fois que vous avez ajouté la bibliothèque à votre `pubspec.yaml`, exécutez la commande `flutter pub get` dans votre terminal. Cela téléchargera et installera la bibliothèque dans votre projet.

5. **Importer la bibliothèque dans votre code** :
   Enfin, pour utiliser la bibliothèque dans votre application, vous devez l'importer dans les fichiers Dart où vous souhaitez l'utiliser. Ajoutez la ligne suivante en haut du fichier :

   ```dart
   import 'package:your_package_name/your_package_name.dart';
   ```

Et voilà ! La bibliothèque est maintenant intégrée à votre projet Flutter et vous pouvez commencer à utiliser ses fonctionnalités dans votre application.

#### En ligne de commande

Pour installer une bibliothèque Flutter en utilisant la ligne de commande, vous pouvez utiliser la commande `flutter pub add`. Cette commande permet d'ajouter une dépendance au fichier `pubspec.yaml` de votre projet et de télécharger la bibliothèque. Voici comment procéder :

Exécutez la commande suivante dans le terminal, en remplaçant `your_package_name` par le nom de la bibliothèque que vous souhaitez ajouter :

```sh
flutter pub add your_package_name
```

Cela ajoutera la dernière version de la bibliothèque à votre `pubspec.yaml` et exécutera `flutter pub get` pour installer la bibliothèque. Après cela, vous pouvez simplement importer la bibliothèque dans vos fichiers Dart pour commencer à l'utiliser dans votre application.

### Ajouter Firebase Authentication à notre projet

Pour intégrer Firebase Authentication dans un projet Flutter, vous devez suivre une série d'étapes qui préparent votre environnement de développement et configurent votre application pour qu'elle interagisse avec les services Firebase. Voici les étapes à suivre :

1. **Installer le Firebase CLI** :
   Le Firebase Command Line Interface (CLI) permet de gérer vos projets Firebase depuis le terminal. Vous pouvez l'installer en utilisant `npm` qui est le gestionnaire de paquets pour Node.js. Voici la commande pour l'installer :

   ```sh
   npm install -g firebase-tools
   ```

2. **Se connecter au Firebase CLI** :
   Après avoir installé le CLI, vous devez vous connecter à votre compte Firebase en utilisant la commande suivante :

   ```sh
   firebase login
   ```

   Suivez les instructions dans le terminal pour autoriser le CLI à accéder à votre compte.

3. **Installer FlutterFire CLI** :
   FlutterFire est un ensemble de plugins pour Flutter qui connecte votre application Flutter aux services Firebase. Pour une intégration simplifiée, il est recommandé d'utiliser le CLI FlutterFire. Installez-le globalement en utilisant :

   ```sh
   dart pub global activate flutterfire_cli
   ```

4. **Configurer l'application avec FlutterFire** :
   Exécutez la commande `flutterfire configure` dans le répertoire de votre projet Flutter. Cela vous aidera à connecter votre application Flutter à votre projet Firebase, générant automatiquement un fichier de configuration nécessaire.

5. **Installer le package Firebase Authentication** :
   Utilisez le CLI de Flutter pour ajouter `firebase_auth` à votre projet :

   ```sh
   flutter pub add firebase_auth
   ```

   Cela ajoutera le package Firebase Authentication à votre fichier `pubspec.yaml` et installera les dépendances nécessaires.

Après ces étapes, votre application Flutter sera configurée pour utiliser Firebase Authentication, et vous pourrez commencer à intégrer les fonctionnalités d'authentification dans votre application.

## Configurer l'émulateur Firebase

Pour utiliser l'émulateur Firebase pour l'authentification et le configurer, suivez ces étapes :

1. **Initialisez les émulateurs Firebase** :
   Exécutez la commande suivante dans le répertoire de votre projet pour configurer les émulateurs Firebase, y compris celui pour l'authentification :

   ```sh
   firebase init emulators
   ```

   Lorsque vous êtes invité, sélectionnez l'émulateur d'authentification (et tous les autres émulateurs que vous souhaitez utiliser).

2. **Démarrer l'émulateur Firebase** :
   Utilisez cette commande pour démarrer l'émulateur d'authentification ainsi que tout autre émulateur que vous avez configuré :

   ```sh
   firebase emulators:start
   ```

3. **Configurer votre application Flutter** :
   Dans votre code Flutter, configurez votre application pour qu'elle se connecte à l'émulateur d'authentification :

   ```dart
   import 'package:firebase_auth/firebase_auth.dart';

   void connectToFirebaseEmulator() {
     final FirebaseAuth auth = FirebaseAuth.instance;
     auth.useAuthEmulator('localhost', 9099); // Le port par défaut pour l'émulateur d'authentification
   }
   ```

   Assurez-vous que cette configuration est effectuée au démarrage de votre application.

   La fonction est à appeler dans la fonction `main`:

   ```dart
   void main() async {
     WidgetsFlutterBinding.ensureInitialized();
     await Firebase.initializeApp();
     connectToFirebaseEmulator();
     runApp(MyApp());
   }
   ```

Avec ces étapes, vous pourrez simuler les fonctionnalités d'authentification de Firebase dans un environnement local, ce qui est idéal pour le développement et les tests sans impacter les données en production.
