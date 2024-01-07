import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ListWisata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
            icon: Icon(Icons.arrow_back)),
            
        title: Text(
          "LIST WISATA",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection("users").snapshots(),
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
                title: Text(_data[index].data()["first"] +
                    " " +
                    _data[index].data()["last"]),
                subtitle: Text(_data[index].data()["born"].toString()),
              );
            },
          );
        },
      ),
    );
  }
}
