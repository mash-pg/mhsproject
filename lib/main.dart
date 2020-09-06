import 'package:flutter/material.dart';
import 'package:mhsproject/book_list_page.dart';
import 'package:mhsproject/main_model.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
        title: 'mhs-mash-716testtestß',
        //home: MyHomePage(title: 'mhs-mash'),
        home: ChangeNotifierProvider<MainModel>(
          create: (_) => MainModel(),
          child: Scaffold(
              appBar: AppBar(
                title: Text('mash-mash'),
              ),
              body: Consumer<MainModel>(builder: (context, model, child) {
                return Center(
                  child: Column(
                    children: [
                      Text(
                        model.mashText,
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      RaisedButton(
                        child: Text('botan'),
                        onPressed: () {
                          //ここで何かをする
                          //model.changeMashText();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookListPage()),
                          );
                        },
                      )
                    ],
                  ),
                );
              })),
        ));
  }
}
