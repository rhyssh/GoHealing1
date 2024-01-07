import "package:gohealing/Developer/DeveloperPage.dart";
import "package:flutter/material.dart";
import "package:firebase_core/firebase_core.dart";
import "package:gohealing/User/pages/ListWisata.dart";
import "package:gohealing/User/pages/LoginPage/LoginPage.dart";
import "package:gohealing/firebase_options.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
