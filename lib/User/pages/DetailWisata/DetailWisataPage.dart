// File: DetailWisataPage.dart
import 'package:flutter/material.dart';

class DetailWisataPage extends StatelessWidget {
  final Map<String, dynamic>? tempatWisataData;

  const DetailWisataPage({Key? key, required this.tempatWisataData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tempatWisataData?["tempatWisata"] ?? "Detail Wisata"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lokasi: ${tempatWisataData?["lokasi"] ?? ""}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Harga: ${tempatWisataData?["harga"] ?? ""}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Jarak: ${tempatWisataData?["jarak"] ?? ""}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Rating: ${tempatWisataData?["rating"] ?? ""}",
              style: TextStyle(fontSize: 18),
            ),
            // Tambahkan detail lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}
