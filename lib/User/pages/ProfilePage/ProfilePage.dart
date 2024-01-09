import "package:flutter/material.dart";
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:gohealing/User/pages/Home/HomePage.dart';
import 'package:gohealing/User/pages/ListWisataPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currIndex = 4;

  @override
   List<Widget> widgets = [
    Center(
      child: Text("Menu Souvenir"),
    ),
    ListWisataPage(),
    HomePage(),
    Center(
      child: Text("Menu Keranjang"),
    ),
    ProfilePage()
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Gantilah dengan widget yang sesuai untuk halaman profil Anda
        child: Text('Halaman Profil'),
      ),
      bottomNavigationBar: Container(
        child: ConvexAppBar(
          initialActiveIndex: currIndex,
          backgroundColor: Color(0xFF18227B),
          height: 70,
          color: Colors.white,
          items: [
            TabItem(icon: Icons.card_giftcard_rounded, title: 'Souvenir'),
            TabItem(icon: Icons.search, title: 'Wisata'),
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.list_alt_sharp, title: 'Keranjang'),
            TabItem(icon: Icons.person, title: 'Profile'),
          ],
          onTap: (int i) {
            setState(() {
              print("sekarang di = $i");
              currIndex = i;
            });
          },
        ),
      ),
    );
  }
}
