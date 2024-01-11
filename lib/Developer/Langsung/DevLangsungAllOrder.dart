import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DevAllLangsungOrder extends StatelessWidget {
  // Fungsi untuk menambahkan banyak data sekaligus
  Future<void> _addMultipleData() async {
    final List<Map<String, dynamic>> dataToAdd = [
      {
        "gambar":
            "https://backoffice.konstruksiindo.id/images/posts/large/1689666990_bb8391f730ba479baf81.jpeg",
        "nama": "Candi Borobudur",
        "kode": "JNAIDQIDN7",
        "harga": "250.000",
        "berlakuSampaiTanggal": "23/08/23",
        "estimasiSampai": "",
        "jam": "23.59",
        "status": "AKTIF"
      },
      {
        "gambar":
            "https://1.bp.blogspot.com/--mOMBc-2lCA/XP8-5HxcS1I/AAAAAAABZVg/fSD2n_GPsJA5o536irWaUpyqdb6jNfbEwCLcBGAs/s1280/souvenir-gantungan-kunci-borobudur.jpg",
        "nama": "Gantungan Kunci Candi Borobudur",
        "kode": "JNAIDQIDN7",
        "harga": "20.000",
        "berlakuSampaiTanggal": "",
        "estimasiSampai": "29/12/23",
        "jam": "",
        "status": "DIPROSES"
      },
      {
        "gambar":
            "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/75/9f/a8/2018-02-02-01-34-02-largejpg.jpg?w=500&h=400&s=1",
        "nama": "Gedung Lawang Sewu",
        "kode": "IJKSLM89QK",
        "harga": "50.000",
        "berlakuSampaiTanggal": "05/02/23",
        "estimasiSampai": "",
        "jam": "23.59",
        "status": "NONAKTIF"
      },
      {
        "gambar":
            "https://cdn1-production-images-kly.akamaized.net/XbwU-Y9pZsRomOYFMBbW98KwREE=/1200x900/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4048400/original/009016000_1654828976-eugenia-clara-_QTeGT478_8-unsplash.jpg",
        "nama": "Candi Prambanan",
        "kode": "9IK25CFHGW",
        "harga": "200.000",
        "berlakuSampaiTanggal": "12/04/23",
        "estimasiSampai": "",
        "jam": "23.59",
        "status": "NONAKTIF"
      },
      {
        "gambar":
            "https://i0.wp.com/penginapandieng.net/wp-content/uploads/2017/06/purwaceng.jpg?w=720&ssl=1",
        "nama": "Purwaceng Khas Dieng",
        "kode": "JNAIDQIDN7",
        "harga": "30.000",
        "berlakuSampaiTanggal": "",
        "estimasiSampai": "29/12/23",
        "jam": "23.59",
        "status": "SAMPAI"
      },
    ];

    for (final Map<String, dynamic> data in dataToAdd) {
      await FirebaseFirestore.instance.collection("DB_order").add(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FIREBASE - ORDER"),
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection("DB_order").snapshots(),
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
                    Text("${_data[index].data()?["nama"].toString() ?? ""} -- " +
                        "${_data[index].data()?["kode"].toString() ?? ""} -- + "
                            "${_data[index].data()?["harga"].toString() ?? ""} -- + "
                            "${_data[index].data()?["berlakuSampaiTanggal"].toString() ?? ""} -- + "
                            "${_data[index].data()?["estimasiSampai"].toString() ?? ""} -- + "
                            "${_data[index].data()?["jam"].toString() ?? ""} -- + "
                            "${_data[index].data()?["status"].toString() ?? ""} -- + "),
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
