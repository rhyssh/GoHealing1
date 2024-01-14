import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';


class WisataSlider extends StatelessWidget {
  final String tempatWisata1;
  final String jarak1;
  final String gambar1;
  final String harga1;

  final String tempatWisata2;
  final String jarak2;
  final String gambar2;
  final String harga2;

  final String tempatWisata3;
  final String jarak3;
  final String gambar3;
  final String harga3;

  WisataSlider({
    required this.tempatWisata1,
    required this.jarak1,
    required this.harga1,
    required this.gambar1,

    required this.tempatWisata2,
    required this.jarak2,
    required this.harga2,
    required this.gambar2,

    required this.tempatWisata3,
    required this.jarak3,
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
            WisataSlide(
              gambar: gambar1,
              tempatWisata: tempatWisata1,
              jarak: jarak1,
              harga: harga1,
            ),
            WisataSlide(
              gambar: gambar2,
              tempatWisata: tempatWisata2,
              jarak: jarak2,
              harga: harga2,
            ),
            WisataSlide(
              gambar: gambar3,
              tempatWisata: tempatWisata3,
              jarak: jarak3,
              harga: harga3,
            ),
          ],
        ),
      ],
    );
  }
}

class WisataSlide extends StatelessWidget {
  const WisataSlide({
    Key? key,
    required this.tempatWisata,
    required this.jarak,
    required this.harga,
    required this.gambar,
  }) : super(key: key);

  final String tempatWisata;
  final String jarak;
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
                      tempatWisata,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [Text("${jarak} KM")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "HTM",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Rp. ${harga}",
                  style: TextStyle(color: Color(0xFF2839CD), fontWeight: FontWeight.bold),
                )
              ],
            ),
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
