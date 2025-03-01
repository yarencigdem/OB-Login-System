import 'package:flutter/material.dart';
class SecretaryHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sekreter Karşılama Sayfası'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Merhaba Sekreter, sisteme hoş geldiniz!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Öğrenci İşlemleri'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Ders İşlemleri'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Hoca İşlemleri'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
