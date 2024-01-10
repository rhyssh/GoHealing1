import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailWisataPage extends StatefulWidget {
  final Map<String, dynamic>? tempatWisataData;

  const DetailWisataPage({Key? key, required this.tempatWisataData})
      : super(key: key);

  @override
  State<DetailWisataPage> createState() => _DetailWisataPageState();
}

class _DetailWisataPageState extends State<DetailWisataPage> {
  bool seeMoreClicked = false;

  @override
  Widget build(BuildContext context) {
    String ratingString = widget.tempatWisataData?["rating"].toString() ?? "0";
    int rating = int.tryParse(ratingString) ?? 0;

    return Scaffold(
      backgroundColor: Color(0xFFBFC4F0),
      body: Stack(
        children: [
          Container(
            color: Colors.amber,
            width: double.infinity,
            height: 600,
            child: Align(
              alignment: Alignment.topCenter,
              child: Transform.scale(
                scale: 1,
                child: Image.network(
                  widget.tempatWisataData?["gambar"],
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.tempatWisataData?["tempatWisata"],
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    widget.tempatWisataData?["lokasi"],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: seeMoreClicked ? null : 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: List.generate(
                                      rating,
                                      (index) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ),
                                  Text("  "),
                                  Text(widget.tempatWisataData?["rating"]
                                          .toString() ??
                                      ""),
                                  Text(" ("),
                                  Text(widget.tempatWisataData?["reviews"]
                                          .toString() ??
                                      ""),
                                  Text(" review)"),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "HTM",
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text("   "),
                                  Text(
                                    " Rp ${widget.tempatWisataData?["harga"].toString() ?? "0"}",
                                    style: TextStyle(
                                      color: Color(0xFF2839CD),
                                      fontSize: 40,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Candi Borobudur adalah sebuah kompleks candi Buddha yang megah dan terkenal, terletak di Magelang, Jawa Tengah, Indonesia. Dibangun pada abad ke-9 oleh dinasti Sailendra, candi ini merupakan salah satu keajaiban arsitektur Buddha dan situs keagamaan terbesar di dunia. Borobudur memiliki struktur bertingkat dengan tujuh tingkat teras dan candi utama di puncaknya. Di dinding-dindingnya terdapat relief yang menceritakan kisah-kisah Buddha dan ajaran-ajaran Buddhis. Candi Borobudur juga telah diakui sebagai Situs Warisan Dunia UNESCO, mencerminkan kejayaan seni dan kepercayaan Buddha pada masa lalu. Lihat lebih detail .......",
                                style: TextStyle(),
                                textAlign: TextAlign.justify,
                                maxLines: seeMoreClicked ? null : 8,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    seeMoreClicked = !seeMoreClicked;
                                  });
                                },
                                child: Text(
                                  seeMoreClicked ? "See Less" : "See More",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.only(left: 80, right: 80),
                                  backgroundColor: Color(0xFF2839CD),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                ),
                                onPressed: () {
                                  print("klik beli");
                                },
                                child: Text(
                                  "Beli Tiket",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
