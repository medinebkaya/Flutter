import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple To Do App",
      home: Iskele(),);
  }
}

class Iskele extends StatelessWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple To Do App"),),
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
  TextEditingController t1=TextEditingController();
  List alisverisListesi=[];
  elemanEkle(){
    setState(() {
      alisverisListesi.add(t1.text);
      t1.clear();
    });
  }
  elemanCikar(){
    setState(() {
      alisverisListesi.remove(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Flexible(
          child:
          ListView.builder(
              itemCount: alisverisListesi.length,
              itemBuilder: (context,indeksNumarasi) => ListTile(
                title: Text(alisverisListesi[indeksNumarasi]),
                subtitle: Text("Alışveriş Malzemeleri") ,
              ),
          ),
        ),
        TextField(
          controller: t1,
        ),
        ElevatedButton(onPressed: elemanEkle, child: Text("Ekle")),
        ElevatedButton(onPressed: elemanCikar, child: Text("Çıkar")),

      ],
      )
    );
  }
}


