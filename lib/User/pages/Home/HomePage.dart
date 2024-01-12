import 'package:flutter/material.dart';
import 'package:gohealing/User/widgets/Slider/SliderHome.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double Screen;

  @override
  Widget build(BuildContext context) {
    Screen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("GoHealing"),
        leading: InkWell(
          onTap: () {
            print("klik logo");
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/img/icon.jpg',
              height: 40,
              width: MediaQuery.of(context).size.width * (0.08),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * (0.05)),
            SliderHome(
              tempatWisata: "Candi Borobudur",
              jarak: "112",
              harga: "250.000",
            ),
            SizedBox(height: 40),
            SliderHome(
              tempatWisata: "y",
              jarak: "y",
              harga: "y",
            ),
            SizedBox(height: 50),
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(text: "Terdekat"),
                      Tab(text: "Populer"),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: TabBarView(
                      children: [
                        // Isi untuk tab Terdekat
                        ListView(
                          children: [
                            Text("yaya")
                            // Tambahkan widget lainnya di sini
                          ],
                        ),
                        // Isi untuk tab Populer
                        ListView(
                          children: [
                            ListTile(title: Text('Tempat Populer 1')),
                            ListTile(title: Text('Tempat Populer 2')),
                            // Tambahkan widget lainnya di sini
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
