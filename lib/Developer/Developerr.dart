
import "package:flutter/material.dart";
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:gohealing/Developer/DevSouvenirPage.dart';
import 'package:gohealing/Developer/DevWisataPage.dart';


class Developerr extends StatefulWidget {
  const Developerr({super.key});

  @override
  State<Developerr> createState() => _DeveloperrState();
}

class _DeveloperrState extends State<Developerr> {
  int currIndex = 0;

  @override
  List<Widget> widgets = [
    DevSouvenirPage(),
    DevWisataPage(),
  
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
              TabItem(icon: Icons.umbrella, title: 'Wisata'),
              TabItem(icon: Icons.travel_explore, title: 'Souvenir'),
             
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
