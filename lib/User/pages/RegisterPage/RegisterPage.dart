import "package:flutter/material.dart";
import "package:gohealing/User/pages/ListWisata.dart";
import "package:gohealing/User/pages/LoginPage/LoginPage.dart";

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
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
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
              onPressed: () {
                print("mengklik tombol");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListWisata(),
                    ));
              },
              child: Text(
                "KE HALAMAN LIST WISATA",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )),
        ],
      )),
    );
  }
}
