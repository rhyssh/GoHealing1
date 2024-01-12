import 'package:flutter/material.dart';

class WidgetCardWisata extends StatelessWidget {
  const WidgetCardWisata({
    Key? key,
    required this.onTap,
    required this.namaTempat,
    required this.lokasi,
    required this.harga,
    required this.jarak,
    required this.rating,
    required this.gambar,
  }) : super(key: key);

  final VoidCallback onTap;
  final String namaTempat;
  final String lokasi;
  final String harga;
  final String jarak;
  final String rating;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * (0.86),
        height: 140,
        decoration: BoxDecoration(
          color: Color(0xFFBFC4F0),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 140,
                height: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    gambar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * (0.4),
                      height: 30,
                      child: Text(
                        namaTempat,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Text(
                      lokasi,
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "Rp. $harga",
                      style: TextStyle(fontSize: 12),
                    ),
                    Row(
                      children: List.generate(
                        int.parse(rating),
                        (index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      jarak,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
