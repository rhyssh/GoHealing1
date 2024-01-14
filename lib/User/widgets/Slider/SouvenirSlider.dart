import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';

class SouvenirSlider extends StatelessWidget {
  final String namasouvenir1;
  final String terjual1;
  final String gambar1;
  final String harga1;

  final String namasouvenir2;
  final String terjual2;
  final String gambar2;
  final String harga2;

  final String namasouvenir3;
  final String terjual3;
  final String gambar3;
  final String harga3;

  SouvenirSlider({
    required this.namasouvenir1,
    required this.terjual1,
    required this.harga1,
    required this.gambar1,
    required this.namasouvenir2,
    required this.terjual2,
    required this.harga2,
    required this.gambar2,
    required this.namasouvenir3,
    required this.terjual3,
    required this.harga3,
    required this.gambar3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 250,
            viewportFraction: 0.7,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 4),
            enlargeCenterPage: true,
          ),
          items: [
            SouvenirSlide(
              gambar: gambar1,
              namasouvenir: namasouvenir1,
              terjual: terjual1,
              harga: harga1,
            ),
            SouvenirSlide(
              gambar: gambar2,
              namasouvenir: namasouvenir2,
              terjual: terjual2,
              harga: harga2,
            ),
            SouvenirSlide(
              gambar: gambar3,
              namasouvenir: namasouvenir3,
              terjual: terjual3,
              harga: harga3,
            ),
          ],
        ),
      ],
    );
  }
}

class SouvenirSlide extends StatelessWidget {
  const SouvenirSlide({
    Key? key,
    required this.namasouvenir,
    required this.terjual,
    required this.harga,
    required this.gambar,
  }) : super(key: key);

  final String namasouvenir;
  final String terjual;
  final String harga;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return SlideContainer(
      content: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 135,
              child: Image.network(
                gambar,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 135,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Flexible(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      namasouvenir,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(" $terjual terjual"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "HARGA",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Rp. 20.000"
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SlideContainer extends StatelessWidget {
  final Widget content;

  const SlideContainer({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Color(0xFFBFC4F0),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: content,
      ),
    );
  }
}
