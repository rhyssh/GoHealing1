import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DeveloperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DEVELOPER PAGE", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
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
                onLongPress: () {
                  _data[index].reference.delete().then((value) =>
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Data removed"))));
                },
                title: Text(_data[index].data()["first"] +
                    " " +
                    _data[index].data()["last"]),
                subtitle: Text(_data[index].data()["born"].toString()),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final user = <String, dynamic>{
            "first": "makan",
            "last": "ya",
            "born": 1815,
          };
          FirebaseFirestore.instance.collection("users").add(user).then(
                (DocumentReference doc) =>
                    print('DocumentSnapshot added with ID: ${doc.id}'),
              );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
