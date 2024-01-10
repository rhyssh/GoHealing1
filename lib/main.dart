import "package:flutter/material.dart";
import "package:firebase_core/firebase_core.dart";
import "package:gohealing/BottomConvexBarr/BottomConvexBarr.dart";
import "package:gohealing/Developer/DevLangsungAllSouvenir.dart";
import "package:gohealing/Developer/DevLangsungAllWisata.dart";
import "package:gohealing/Developer/DevSouvenirPage.dart";
import 'package:gohealing/Developer/DevWisataPage.dart';
import "package:gohealing/TEST/WidgetTest.dart";
import "package:gohealing/User/pages/ListWisataPage.dart";
import "package:gohealing/User/pages/LoginPage/LoginPage.dart";
import "package:gohealing/User/widgets/WidgetCardSouvenir.dart";
import "package:gohealing/YangDuluMas/LoginPageReiki.dart";
import "package:gohealing/firebase_options.dart";
// Semisal dari Reiki menambah di baris ini
//  INI ADA TIDAK

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
      // home: BottomConvexBarr(),
      home: BottomConvexBarr(),
    );
  }
}
