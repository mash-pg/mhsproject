import 'package:flutter/material.dart';
import 'package:mhsproject/main_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mhs-mash-716',
      //home: MyHomePage(title: 'mhs-mash'),
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title:Text('mash-mash'),
          ),
          body: Consumer<MainModel>(builder: (context, model,child) {
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
                      onPressed:(){
                        //ここで何かをする
                        model.changeMashText();
                      },
                    )
                  ],
                ),
              );
            }
          )
        ),
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
