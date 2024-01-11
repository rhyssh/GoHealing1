import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Color.fromARGB(255, 125, 136, 225)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 1.1
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    // ..maskFilter =
    //     MaskFilter.blur(BlurStyle.normal, 5.0); // Menambahkan efek bayangan

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9986667, size.height * 0.0888571);
    path_0.lineTo(size.width * 0.0007333, size.height * 0.2300000);
    path_0.lineTo(size.width * 0.0015000, size.height * 0.7828571);
    path_0.lineTo(size.width * 0.9983333, size.height * 0.7860000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = Color.fromARGB(255, 125, 136, 225)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..maskFilter =
          MaskFilter.blur(BlurStyle.normal, 6.0); // Menambahkan efek bayangan

    canvas.drawPath(path_0, paint_stroke_0);

    Paint paint_stroke_1 = Paint()
      ..color = Color.fromARGB(255, 125, 136, 225)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    // ..maskFilter =
    //     MaskFilter.blur(BlurStyle.normal, 5.0); // Menambahkan efek bayangan

    canvas.drawPath(path_0, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
