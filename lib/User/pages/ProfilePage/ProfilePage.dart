import "package:flutter/material.dart";
import "package:gohealing/Developer/Manual/Developerr.dart";
import "package:gohealing/User/pages/LoginPage/LoginPage.dart";

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * (0.06),
          right: MediaQuery.of(context).size.width * (0.06),
          top: 40),
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 60,
            width: MediaQuery.of(context).size.width * (0.94),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFF2839CD),
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * (0.03),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xFF2839CD),
                  child: Icon(
                    Icons.headset_mic,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * (0.4),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          print("klik developer");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Developerr(),
                              ));
                        },
                        icon: Icon(Icons.developer_mode, color: Colors.green[900],)),
                    IconButton(
                        onPressed: () {
                          print("klik logout");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ));
                        },
                        icon: Icon(Icons.logout))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
