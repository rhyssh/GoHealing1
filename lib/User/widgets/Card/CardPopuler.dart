import "package:flutter/material.dart";


class CardPopuler extends StatelessWidget {
  const CardPopuler({
    Key? key,
    required this.Screen,
    required this.jarak,
    required this.gambar,
    required this.harga,
    required this.tempatWisata,
  }) : super(key: key);

  final double Screen;
  final String jarak;
  final String gambar;
  final String harga;
  final String tempatWisata;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      width: Screen * (0.7),
      height: 125,
      child: Container(
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              width: Screen * (0.3),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.network(
                  gambar,
                  fit: BoxFit.cover,
                  height: 125,
                ),
              ),
            ),
            Container(
              width: Screen * (0.4),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text(
                          tempatWisata,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "$jarak Km",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Rp. $harga ",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
