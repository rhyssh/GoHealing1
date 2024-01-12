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

  _HomePageState();

  @override
  Widget build(BuildContext context) {
    Screen = MediaQuery.of(context).size.width;

    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: Screen * (0.06),
                right: MediaQuery.of(context).size.width * (0.06),
                top: 10,
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width * (0.04),
                        ),
                        Text(
                          "GoHealing",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF051D41),
                          ),
                        ),
                        SizedBox(
                          width: Screen * (0.25),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Center(
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://awsimages.detik.net.id/community/media/visual/2019/02/19/42393387-9c5c-4be4-97b8-49260708719e.jpeg?w=600&q=90"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * (0.05)),
            SliderHome(
              tempatWisata: "Candi Borobudur",
              jarak: "112",
              harga: "250.000",
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: Screen * (0.06),
                  right: MediaQuery.of(context).size.width * (0.06),
                  top: 40,
                ),
                child: Row(
                  children: [
                    Container(
                      color: Colors.amber,
                      child: Padding(padding: EdgeInsets.only(left: Screen * (0.05), right: Screen * (0.05)),
                      child: Column(
                        children: [
                          Text("ya"),
                          Text("ya"),
                          Text("ya"),
                        ],
                      ),
                      )
                    )
                  ],
                )),
            SizedBox(
              height: 100,
            ),
            SliderHome(
              tempatWisata: "Candi Borobudur",
              jarak: "112",
              harga: "250.000",
            ),
          ],
        )
      ],
    );
  }
}
