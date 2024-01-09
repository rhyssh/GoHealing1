import "package:flutter/material.dart";

class Borobudur extends StatefulWidget {
  const Borobudur({super.key});

  @override
  State<Borobudur> createState() => _BorobudurState();
}

class _BorobudurState extends State<Borobudur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("BOROBUDUR"),
      ),
    );
  }
}