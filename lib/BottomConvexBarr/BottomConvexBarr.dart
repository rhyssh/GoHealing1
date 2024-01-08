import 'dart:math';

import "package:flutter/material.dart";
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:gohealing/User/pages/Home/HomePage.dart';
import 'package:gohealing/User/pages/ListWisataPage.dart';

class BottomConvexBarr extends StatefulWidget {
  const BottomConvexBarr({super.key});

  @override
  State<BottomConvexBarr> createState() => _BottomConvexBarrState();
}

class _BottomConvexBarrState extends State<BottomConvexBarr> {
  int currIndex = 2;

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
    Center(
      child: Text("Menu Profile"),
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        body: widgets[currIndex],
        bottomNavigationBar: Container(
          
          child: ConvexAppBar( 
            
            initialActiveIndex: currIndex,
            backgroundColor: Color(0xFF18227B),
            height: 70,
            color: Colors.white,
            items: [
              TabItem(icon: Icons.card_giftcard_rounded, title: 'Souvenir'),
              TabItem(icon: Icons.search, title: 'Wisata'),
              TabItem(icon: Icons.home,  title: 'Home' ),
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
        ));
  }
}
