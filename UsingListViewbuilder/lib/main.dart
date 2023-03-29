import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView Kullanımı",
      home: Iskele(),);
  }
}
class Iskele extends StatelessWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Örneği"),),
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
  void Ekle(){
    setState(() {
      books.add(controller1.text);
      controller1.clear();
    });
  }
  TextEditingController controller1=TextEditingController();
  List books=["Gurur ve Önyargı", "İnsancıklar","Kürk Mantolu Madonna","İçimizdeki Şeytan"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Flexible(
          child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (context,indeksNum) => ListTile(
                  title: Text(books[indeksNum]),
              )
          ),
        ),
        TextField(controller: controller1,),
        ElevatedButton(onPressed: Ekle, child: Text("Ekle"))
      ],),
    );
  }
}
