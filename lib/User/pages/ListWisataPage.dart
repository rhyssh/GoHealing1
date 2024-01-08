import 'package:flutter/material.dart';
import 'package:gohealing/User/pages/Home/HomePage.dart';
import 'package:gohealing/User/pages/LoginPage/LoginPage.dart';
import 'package:gohealing/User/pages/RegisterPage/RegisterPage.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
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
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "Wisata Anda",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Icon(
                        Icons.person_3_sharp,
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
              child: ListView(
                // agar
                children: [
                  WidgetCardWisata(
                    onTap: () {
                      // Navigasi ke halaman lain (ganti dengan sesuai kebutuhan)
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  WidgetCardWisata(
                    onTap: () {
                      // Navigasi ke halaman lain (ganti dengan sesuai kebutuhan)
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  WidgetCardWisata(
                    onTap: () {
                      // Navigasi ke halaman lain (ganti dengan sesuai kebutuhan)
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  WidgetCardWisata(
                    onTap: () {
                      // Navigasi ke halaman lain (ganti dengan sesuai kebutuhan)
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  WidgetCardWisata(
                    onTap: () {
                      // Navigasi ke halaman lain (ganti dengan sesuai kebutuhan)
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
