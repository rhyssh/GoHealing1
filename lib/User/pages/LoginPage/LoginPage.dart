import 'package:flutter/material.dart';
import 'package:gohealing/User/pages/RegisterPage/RegisterPage.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:gohealing/User/widgets/shapeOfLogin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'GOHEALING',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                ),
                SizedBox(height: 40),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(
                      size: Size(
                        1000,
                        (900 * 0.5833333333333334).toDouble(),
                      ),
                      painter: RPSCustomPainter(),
                    ),
                    Positioned(
                      top: 50, // Sesuaikan nilai ini sesuai kebutuhan
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                        child: Icon(
                          Icons.person,
                          size: 100,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 30, left: 10, right: 10),
                          width: double.infinity,
                          height: 80,
                          child: TextField(
                            controller: emailC,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: Icon(Icons.email),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          height: 80,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: TextField(
                            controller: passC,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: Icon(Icons.key),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
