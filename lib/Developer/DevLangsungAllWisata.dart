import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DevLangsungAllWisata extends StatelessWidget {
  Future<void> _addMultipleData() async {
    final List<Map<String, dynamic>> dataToAdd = [
      {
        "tempatWisata": "Candi Borobudur",
        "lokasi": "Borobudur, Magelang",
        "jarak": "112 KM",
        "harga": "250.000",
        "gambar":
            "https://backoffice.konstruksiindo.id/images/posts/large/1689666990_bb8391f730ba479baf81.jpeg",
        "rating": 5,
        "reviews" : "10.2k",
        "deskripsi":
            "Candi Borobudur adalah sebuah kompleks candi Buddha yang megah dan terkenal, terletak di Magelang, Jawa Tengah, Indonesia. Dibangun pada abad ke-9 oleh dinasti Sailendra, candi ini merupakan salah satu keajaiban arsitektur Buddha dan situs keagamaan terbesar di dunia. Borobudur memiliki struktur bertingkat dengan tujuh tingkat teras dan candi utama di puncaknya. Di dinding-dindingnya terdapat relief yang menceritakan kisah-kisah Buddha dan ajaran-ajaran Buddhis. Candi Borobudur juga telah diakui sebagai Situs Warisan Dunia UNESCO, mencerminkan kejayaan seni dan kepercayaan Buddha pada masa lalu. "
      },
      {
        "tempatWisata": "Gedung Lawang Sewu",
        "lokasi": "Jl. Simongan, Semarang",
        "jarak": "15 KM",
        "harga": "15.000",
        "gambar":
            "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/75/9f/a8/2018-02-02-01-34-02-largejpg.jpg?w=500&h=400&s=1",
        "rating": 4,
        "reviews" : "5k",

        "deskripsi":
            "Candi Borobudur adalah sebuah kompleks candi Buddha yang megah dan terkenal, terletak di Magelang, Jawa Tengah, Indonesia. Dibangun pada abad ke-9 oleh dinasti Sailendra, candi ini merupakan salah satu keajaiban arsitektur Buddha dan situs keagamaan terbesar di dunia. Borobudur memiliki struktur bertingkat dengan tujuh tingkat teras dan candi utama di puncaknya. Di dinding-dindingnya terdapat relief yang menceritakan kisah-kisah Buddha dan ajaran-ajaran Buddhis. Candi Borobudur juga telah diakui sebagai Situs Warisan Dunia UNESCO, mencerminkan kejayaan seni dan kepercayaan Buddha pada masa lalu. "
      },
      {
        "tempatWisata": "Kelenteng Sam Po Kong",
        "lokasi": "Jl. Pemuda, Semarang",
        "jarak": "15 KM",
        "harga": "15.000",
        "reviews" : "20k",

        "gambar":
            "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/aa/3c/c9/photo3jpg.jpg?w=500&h=-1&s=1",
        "rating": 3,
        "deskripsi":
            "Candi Borobudur adalah sebuah kompleks candi Buddha yang megah dan terkenal, terletak di Magelang, Jawa Tengah, Indonesia. Dibangun pada abad ke-9 oleh dinasti Sailendra, candi ini merupakan salah satu keajaiban arsitektur Buddha dan situs keagamaan terbesar di dunia. Borobudur memiliki struktur bertingkat dengan tujuh tingkat teras dan candi utama di puncaknya. Di dinding-dindingnya terdapat relief yang menceritakan kisah-kisah Buddha dan ajaran-ajaran Buddhis. Candi Borobudur juga telah diakui sebagai Situs Warisan Dunia UNESCO, mencerminkan kejayaan seni dan kepercayaan Buddha pada masa lalu. "
      },
      {
        "tempatWisata": "Dieng Plateau",
        "lokasi": "Bakal Buntu, Banjarnegara",
        "jarak": "75 KM",
        "harga": "20.000",
        "reviews" : "100",

        "gambar":
            "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/76/9a/93/dataran-tinggi-dieng.jpg?w=500&h=400&s=1",
        "rating": 3,
        "deskripsi":
            "Candi Borobudur adalah sebuah kompleks candi Buddha yang megah dan terkenal, terletak di Magelang, Jawa Tengah, Indonesia. Dibangun pada abad ke-9 oleh dinasti Sailendra, candi ini merupakan salah satu keajaiban arsitektur Buddha dan situs keagamaan terbesar di dunia. Borobudur memiliki struktur bertingkat dengan tujuh tingkat teras dan candi utama di puncaknya. Di dinding-dindingnya terdapat relief yang menceritakan kisah-kisah Buddha dan ajaran-ajaran Buddhis. Candi Borobudur juga telah diakui sebagai Situs Warisan Dunia UNESCO, mencerminkan kejayaan seni dan kepercayaan Buddha pada masa lalu. "
      },
    ];

    for (final Map<String, dynamic> data in dataToAdd) {
      await FirebaseFirestore.instance.collection("DB_wisata").add(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FIREBASE - WISATA"),
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection("DB_wisata").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          var _data = snapshot.data!.docs;
          return ListView.builder(
            itemCount: _data.length,
            itemBuilder: (context, index) {
              return ListTile(
                onLongPress: () {
                  _data[index].reference.delete().then((value) =>
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Data removed"))));
                },
                title: Column(
                  children: [
                    Image.network(
                      _data[index].data()?["gambar"].toString() ?? "",
                      width: double.infinity,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "${_data[index].data()?["tempatWisata"].toString() ?? ""} -- " +
                          "${_data[index].data()?["jarak"].toString() ?? ""} -- " +
                          "${_data[index].data()?["harga"].toString() ?? ""} -- " +
                          "${_data[index].data()?["rating"].toString() ?? ""}",
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addMultipleData();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
