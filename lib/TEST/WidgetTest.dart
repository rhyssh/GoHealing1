
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
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.amber,
          child: Text(
            "lalalalalaldfdfffdfdfdfdf"
          ),
        ),
      ),
    );
  }
}