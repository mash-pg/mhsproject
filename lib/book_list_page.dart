import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class BookList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    CollectionReference books = FirebaseFirestore.instance.collection('books');
    return Scaffold(
      appBar: AppBar(
        title:Text('本一覧'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: books.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {

          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }

          return new ListView(
            children: snapshot.data.docs.map((DocumentSnapshot document) {
              return ListTile(
                title: Text(document.data()['title']),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
