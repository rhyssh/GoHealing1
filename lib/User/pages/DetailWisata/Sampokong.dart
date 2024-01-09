import "package:flutter/material.dart";

class Sampokong extends StatefulWidget {
  const Sampokong({super.key});

  @override
  State<Sampokong> createState() => _SampokongState();
}

class _SampokongState extends State<Sampokong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Sampokong"),
      ),
    );
  }
}