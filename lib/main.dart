import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: new MyHomePage(title: 'Flutter '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Column(children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text("Add Product"),
              onPressed: () {},
            ),
          ),
          new Card(
            child: new Column(
              children: <Widget>[
                new Image.asset('assets/food.jpg'),
                new Text('Food')
              ],
            ),
          )
        ]));
  }
}
