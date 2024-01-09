import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gohealing/User/pages/LoginPage/LoginPage.dart';
import 'package:gohealing/User/pages/ProfilePage/ProfilePage.dart';
import 'package:gohealing/User/widgets/WidgetCardWisata.dart';

class ListWisataPage extends StatefulWidget {
  const ListWisataPage({Key? key}) : super(key: key);

  @override
  State<ListWisataPage> createState() => _ListWisataPageState();
}

class _ListWisataPageState extends State<ListWisataPage> {
  TextEditingController searchC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream:
            FirebaseFirestore.instance.collection("tempatWisata").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          var _data = snapshot.data!.docs;

          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 80,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Temukan",
                              style: TextStyle(
                                  fontSize: 24, color: Color(0xFF2839CD)),
                            ),
                            Text(
                              "Wisata Anda",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  height: 1,
                                  color: Color(0xFF2839CD)),
                            ),
                          ],
                        ),
                        Center(
                          child: IconButton(
                            onPressed: () {
                              print("mengklik profil pojok");
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));
                            },
                            icon: Icon(
                              Icons.person_2_sharp,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 75,
                  child: TextField(
                    controller: searchC,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[300],
                      filled: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Atur radius border di sini
                        borderSide: BorderSide.none, // Hilangkan border
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _data.length,
                    itemBuilder: (context, index) {
                      // agar
                      return Column(
                        children: [
                          WidgetCardWisata(
                            onTap: () {
                              // Navigasi ke halaman lain (ganti dengan sesuai kebutuhan)
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ), // Ganti YourDestinationPage dengan halaman yang sesuai
                              );
                            },
                            // Set data dari Firestore ke WidgetCardWisata
                            namaTempat: _data[index]
                                    .data()?["tempatWisata"]
                                    .toString() ??
                                "",
                            lokasi:
                                _data[index].data()?["lokasi"].toString() ?? "",
                            harga:
                                _data[index].data()?["harga"].toString() ?? "",
                            jarak:
                                _data[index].data()?["jarak"].toString() ?? "",
                            rating:
                                _data[index].data()?["rating"].toString() ?? "",
                            gambar:
                                _data[index].data()?["gambar"].toString() ?? "",
                          ),
                          SizedBox(
                              height: 20), // Ganti dengan jarak yang diinginkan
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
