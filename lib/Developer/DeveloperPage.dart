import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gohealing/User/pages/LoginPage/LoginPage.dart';
import 'package:gohealing/User/widgets/WidgetCardWisata.dart';

class DeveloperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "DEVELOPER PAGE",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream:
            FirebaseFirestore.instance.collection("DB_wisata").snapshots(),
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
                title: WidgetCardWisata(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  namaTempat:
                      _data[index].data()?["tempatWisata"].toString() ?? "",
                  lokasi: _data[index].data()?["lokasi"].toString() ?? "",
                  harga: _data[index].data()?["harga"].toString() ?? "",
                  jarak: _data[index].data()?["jarak"].toString() ?? "",
                  rating: _data[index].data()?["rating"].toString() ?? "",
                  gambar: _data[index].data()?["gambar"].toString() ?? "",
                ),
                subtitle: SizedBox(height: 20),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final wisata1 = <String, dynamic>{
            "tempatWisata": "Candi Borobudur",
            "lokasi": "Borobudur, Magelang",
            "rating": 5,
            "jarak": "112 KM",
            "harga": "250.000",
            "gambar":
                "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/ef/47/1c/borobudur-temple.jpg?w=500&h=400&s=1"
          };

          FirebaseFirestore.instance
              .collection("DB_wisata")
              .add(wisata1)
              .then((DocumentReference doc) =>
                  print('DocumentSnapshot added with ID: ${doc.id}'));

          final wisata2 = <String, dynamic>{
            "tempatWisata": "Gedung Lawang Sewu",
            "lokasi": "Jl. Pemuda, Semarang",
            "rating": 4,
            "jarak": "10 KM",
            "harga": "50.000",
            "gambar":
                "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/75/9f/a8/2018-02-02-01-34-02-largejpg.jpg?w=500&h=400&s=1"
          };

          FirebaseFirestore.instance
              .collection("DB_wisata")
              .add(wisata2)
              .then((DocumentReference doc) =>
                  print('DocumentSnapshot added with ID: ${doc.id}'));

          final wisata3 = <String, dynamic>{
            "tempatWisata": "Kelenteng Sam Po Kon",
            "lokasi": "Jl. Simongan, Semarang",
            "rating": 4,
            "jarak": "15 KM",
            "harga": "15.000",
            "gambar":
                "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/aa/3c/c9/photo3jpg.jpg?w=500&h=-1&s=1"
          };

          FirebaseFirestore.instance
              .collection("DB_wisata")
              .add(wisata3)
              .then((DocumentReference doc) =>
                  print('DocumentSnapshot added with ID: ${doc.id}'));

          final wisata4 = <String, dynamic>{
            "tempatWisata": "Dieng Plateau",
            "lokasi": "Bakal Buntu, Banjarnegara",
            "rating": 4,
            "jarak": "75 KM",
            "harga": "20.000",
            "gambar":
                "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/76/9a/93/dataran-tinggi-dieng.jpg?w=500&h=400&s=1"
          };

          FirebaseFirestore.instance
              .collection("DB_wisata")
              .add(wisata4)
              .then((DocumentReference doc) =>
                  print('DocumentSnapshot added with ID: ${doc.id}'));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
