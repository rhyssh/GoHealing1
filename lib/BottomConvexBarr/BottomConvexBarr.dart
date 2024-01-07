import 'dart:math';

import "package:flutter/material.dart";
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:gohealing/User/pages/Home/HomePage.dart';
import 'package:gohealing/User/pages/ListWisata.dart';

class BottomConvexBarr extends StatefulWidget {
  const BottomConvexBarr({super.key});

  @override
  State<BottomConvexBarr> createState() => _BottomConvexBarrState();
}

class _BottomConvexBarrState extends State<BottomConvexBarr> {
  int currIndex = 2;

  @override
  List<Widget> widgets = [
    ListWisata(),
    Center(
      child: Text("Menu Souvenir"),
    ),
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
          // padding: EdgeInsets.only(bottom: 20, top: 20),
          // color: Colors.teal,
          child: ConvexAppBar( 
            initialActiveIndex: currIndex,
            backgroundColor: Colors.teal,
            height: 70,
            items: [
              TabItem(icon: Icons.map_outlined, title: 'Wisata'),
              TabItem(icon: Icons.source_rounded, title: 'Souvenir'),
              TabItem(icon: Icons.home,  title: 'Home' ),
              TabItem(icon: Icons.shopify_rounded, title: 'Keranjang'),
              TabItem(icon: Icons.people, title: 'Profile'),
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
