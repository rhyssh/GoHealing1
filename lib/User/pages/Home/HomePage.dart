import "package:flutter/material.dart";
import "package:gohealing/BottomConvexBarr/BottomConvexBarr.dart";
import 'package:gohealing/Developer/Manual/DevSouvenirPage.dart';
import 'package:gohealing/Developer/Manual/DevWisataPage.dart';
import 'package:gohealing/Developer/Manual/Developerr.dart';
import "package:gohealing/User/pages/ListWisataPage.dart";
import "package:gohealing/User/pages/LoginPage/LoginPage.dart";
import "package:gohealing/User/pages/RegisterPage/RegisterPage.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color textColor = Colors.blue;

  void changeColor() {
    setState(() {
      textColor = Colors.red;
    });

    // Delay 1 detik dan kembalikan warna ke biru
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        textColor = Colors.blue;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[700],
        title: Text(
          "ROUTER SEMENTARA",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Developerr(),
                    ));
              },
              icon: Icon(
                Icons.logout,
                color: Colors.amber[900],
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero)),
                onPressed: () {
                  print("mengklik tombol");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                },
                child: Text(
                  "KE HALAMAN LOGIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero)),
                onPressed: () {
                  print("mengklik tombol");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ));
                },
                child: Text(
                  "KE HALAMAN REGISTER ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
            GestureDetector(
              onTap: () {
                // Aksi yang ingin diambil saat teks diklik
                changeColor();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ));
              },
              child: Text(
                'Klik saya!',
                style: TextStyle(
                  color: textColor,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
