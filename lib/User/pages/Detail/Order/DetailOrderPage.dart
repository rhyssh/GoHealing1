import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailOrderPage extends StatefulWidget {
  final Map<String, dynamic>? orderData;

  const DetailOrderPage({Key? key, required this.orderData})
      : super(key: key);

  @override
  State<DetailOrderPage> createState() => _DetailOrderPageState();
}

class _DetailOrderPageState extends State<DetailOrderPage> {
  bool seeMoreClicked = false;

  @override
  Widget build(BuildContext context) {
    String ratingString = widget.orderData?["kode"].toString() ?? "0";
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
                  widget.orderData?["gambar"],
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
                    widget.orderData?["kode"],
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    widget.orderData?["kode"],
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
                                  Text(widget.orderData?["kode"]
                                          .toString() ??
                                      ""),
                                  Text(" ("),
                                  Text(widget.orderData?["kode"]
                                          .toString() ??
                                      ""),
                                  Text(" review)"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  Text(
                                    " Rp ${widget.orderData?["kode"].toString() ?? "0"}",
                                    style: TextStyle(
                                      color: Color(0xFF2839CD),
                                      fontSize: 35,
                                    ),
                                  ),
                                  Text("      "),
                                  CircleAvatar(
                                      backgroundColor: Color(0xFF2839CD),
                                      child: IconButton(
                                          onPressed: () {
                                            print("chat");
                                          },
                                          icon: Icon(
                                            Icons.chat,
                                            color: Colors.white,
                                          )))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                widget.orderData?["kode"],
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
