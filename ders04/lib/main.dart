import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Uygulama Çerçevesi',
      home: AnaEkran(),
    );
  }
}

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Boş Uygulama Çerçevesi'),
      ),
      body: Container(
        child: Center(
          child: Text('Merhaba'),
        ),
      ),
    );
  }
}
