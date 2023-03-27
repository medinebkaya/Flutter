import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Blog Uygulaması",
      home: AnaEkran()
    );
  }
}

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Blog Uygulaması'), backgroundColor: Colors.pinkAccent,),
        body: Container(
          margin: EdgeInsets.all(4.0),
          child: Center(child: Text("SELAM")),
        ),
      );

  }
}

