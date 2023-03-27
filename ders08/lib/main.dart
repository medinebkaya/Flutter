import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog Uygulaması"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  String blogYazisi= " Hoşgeldiniz. ";
  martGoster(){
    setState(() {
      blogYazisi='ssfdkjöbdöer';
    });
  }
  nisanGoster(){
    setState(() {
      blogYazisi='ssfdkjöbdöer';
    });
  }
  mayisGoster(){
    setState(() {
      blogYazisi='ssfdkjöbdöer';
    });
  }
  haziranGoster(){
    setState(() {
      blogYazisi='ssfdkjöbdöer';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(blogYazisi),
              ElevatedButton(
                  onPressed: martGoster,
                  child: Text("Mart Yazısı"),
              ),
              ElevatedButton(
                  onPressed: nisanGoster,
                  child: Text("Nisan Yazısı"),
              ),
              ElevatedButton(
                  onPressed: mayisGoster,
                  child: Text("Mayıs Yazısı"),
              ),
              ElevatedButton(
                onPressed: haziranGoster,
                child: Text("Haziran Yazısı"),
              ),
            ],
          )
      ),
    );
  }
}


