import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Temel Mesajlaşma Uygulaması",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mesajlaşma Uygulaması Arayüzü"),),
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
  TextEditingController t1=new TextEditingController();
  List mesajListesi= [];
  mesajlariEkle(){
    setState(() {
      mesajListesi.insert(0, t1.text);
      t1.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: Column(
        children: [
          Flexible(
            child: ListView.builder(
              reverse: true,
              itemCount: mesajListesi.length,
              itemBuilder: (context, int indeksNumarasi) => Text(mesajListesi[indeksNumarasi]),
            ),
          ),
          Row(children: [
            Flexible(child:
                TextField(controller: t1),
                onSubmitted

            ElevatedButton(onPressed: mesajlariEkle, child: Text("Gönder"),)
          ],),
          

        ],
      ),
    );
  }
}


