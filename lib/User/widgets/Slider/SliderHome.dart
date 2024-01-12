import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';
class SliderHome extends StatelessWidget {
  final String tempatWisata;
  final String jarak;
  final String harga;

  SliderHome(
      {required this.tempatWisata, required this.jarak, required this.harga});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 250,
        viewportFraction: 0.7,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 4),
        enlargeCenterPage: true,
      ),
      items: [
        Sliderr(
            gambar:
                "https://backoffice.konstruksiindo.id/images/posts/large/1689666990_bb8391f730ba479baf81.jpeg",
            tempatWisata: "Candi Borobudur",
            jarak: "112",
            harga: harga),
        Sliderr(
            gambar:
                "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/75/9f/a8/2018-02-02-01-34-02-largejpg.jpg?w=500&h=400&s=1",
            tempatWisata: "Gedung Lawang Sewu",
            jarak: "10",
            harga: "50.000"),
        Sliderr(
            gambar:
                "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/76/9a/93/dataran-tinggi-dieng.jpg?w=500&h=400&s=1",
            tempatWisata: "Dieng Plateau",
            jarak: "75",
            harga: "20.000"),
      ],
    );
  }
}

class Sliderr extends StatelessWidget {
  const Sliderr({
    super.key,
    required this.tempatWisata,
    required this.jarak,
    required this.harga,
    required this.gambar,
  });

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
                  style: TextStyle(
                      color: Color(0xFF2839CD), fontWeight: FontWeight.bold),
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
