import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DevLangsungAllSouvenir extends StatelessWidget {
  // Fungsi untuk menambahkan banyak data sekaligus
  Future<void> _addMultipleData() async {
    final List<Map<String, dynamic>> dataToAdd = [
      {
        "gambar":
            "https://1.bp.blogspot.com/--mOMBc-2lCA/XP8-5HxcS1I/AAAAAAABZVg/fSD2n_GPsJA5o536irWaUpyqdb6jNfbEwCLcBGAs/s1280/souvenir-gantungan-kunci-borobudur.jpg",
        "harga": "10.000",
        "judulSouvenir": "Gantungan YAYYAr",
        "terjual": "20.000",
        "deskripsi":
            "Gantungan kunci Candi Borobudur merupakan aksesori unik yang menggambarkan keindahan dan keagungan Candi Borobudur, salah satu keajaiban arsitektur Buddha di Indonesia. Terbuat dari bahan berkualitas tinggi, gantungan kunci ini menampilkan detail-detail halus dari relief-relief khas candi tersebut, menciptakan sentuhan artistik yang memikat. Dengan desain miniatur yang apik, gantungan kunci ini menjadi pilihan ideal sebagai suvenir atau koleksi bagi pecinta seni dan budaya."
      },
      // {
      //   "gambar":
      //       "https://i0.wp.com/penginapandieng.net/wp-content/uploads/2017/06/purwaceng.jpg?w=720&ssl=1",
      //   "harga": "30.000",
      //   "judulSouvenir": "Purwaceng Khas Dieng",
      //   "terjual": "600",
      //   "deskripsi":
      //       "Gantungan kunci Candi Borobudur merupakan aksesori unik yang menggambarkan keindahan dan keagungan Candi Borobudur, salah satu keajaiban arsitektur Buddha di Indonesia. Terbuat dari bahan berkualitas tinggi, gantungan kunci ini menampilkan detail-detail halus dari relief-relief khas candi tersebut, menciptakan sentuhan artistik yang memikat. Dengan desain miniatur yang apik, gantungan kunci ini menjadi pilihan ideal sebagai suvenir atau koleksi bagi pecinta seni dan budaya."
      // },
      // {
      //   "gambar":
      //       "https://down-id.img.susercontent.com/file/eda4a63b7cb763e9b10b17aadd13db3e",
      //   "harga": "20.000",
      //   "judulSouvenir": "Gantungan Kunci Kelenteng Sam Po Kong",
      //   "terjual": "10.230",
      //   "deskripsi":
      //       "Gantungan kunci Candi Borobudur merupakan aksesori unik yang menggambarkan keindahan dan keagungan Candi Borobudur, salah satu keajaiban arsitektur Buddha di Indonesia. Terbuat dari bahan berkualitas tinggi, gantungan kunci ini menampilkan detail-detail halus dari relief-relief khas candi tersebut, menciptakan sentuhan artistik yang memikat. Dengan desain miniatur yang apik, gantungan kunci ini menjadi pilihan ideal sebagai suvenir atau koleksi bagi pecinta seni dan budaya."
      // },
      // {
      //   "gambar":
      //       "https://jejakpiknik.com/wp-content/uploads/2018/10/smg-4-1-630x380.jpg",
      //   "harga": "35.000",
      //   "judulSouvenir": "Gelas Miniatur Tugu Muda",
      //   "terjual": "100.230",
      //   "deskripsi":
      //       "Gantungan kunci Candi Borobudur merupakan aksesori unik yang menggambarkan keindahan dan keagungan Candi Borobudur, salah satu keajaiban arsitektur Buddha di Indonesia. Terbuat dari bahan berkualitas tinggi, gantungan kunci ini menampilkan detail-detail halus dari relief-relief khas candi tersebut, menciptakan sentuhan artistik yang memikat. Dengan desain miniatur yang apik, gantungan kunci ini menjadi pilihan ideal sebagai suvenir atau koleksi bagi pecinta seni dan budaya."
      // },

      // Tambahkan data lainnya sesuai kebutuhan
    ];

    for (final Map<String, dynamic> data in dataToAdd) {
      await FirebaseFirestore.instance.collection("DB_souvenir").add(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FIREBASE - WISATA"),
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream:
            FirebaseFirestore.instance.collection("DB_souvenir").snapshots(),
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
                    Text("${_data[index].data()?["judulSouvenir"].toString() ?? ""} -- " +
                        "${_data[index].data()?["harga"].toString() ?? ""}"),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addMultipleData(); // Panggil fungsi untuk menambahkan banyak data
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
