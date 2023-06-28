import 'package:flutter/material.dart';

import 'GirisEkrani.dart';
import 'ProfilEkrani.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute parametresi ilk açılacak sayfayı belirler.
      initialRoute: "/" ,
      routes: {
        "/": (context) => GirisEkrani(),
        "/ProfilSayfasiRotasi": (context) => ProfilEkrani(),
      },
    );
  }
}


