import "package:flutter/material.dart";

class WidgetTest extends StatefulWidget {
  const WidgetTest({super.key});

  @override
  State<WidgetTest> createState() => _WidgetTestState();
}

class _WidgetTestState extends State<WidgetTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            color: Colors.white, // Memberikan latar belakang putih
            padding: EdgeInsets.all(10), // Memberikan jarak padding
            child: Text(
              "yayaya",
              style: TextStyle(
                  // Teks style jika diperlukan
                  ),
            ),
          ),
        ));
  }
}
