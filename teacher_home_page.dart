import 'package:flutter/material.dart';

class TeacherHomePage extends StatefulWidget {
  @override
  _TeacherHomePageState createState() => _TeacherHomePageState();
}

class _TeacherHomePageState extends State<TeacherHomePage> {
  final TextEditingController _midtermController = TextEditingController();
  final TextEditingController _finalController = TextEditingController();
  double? _average;

  // Ortalama hesaplama işlevi
  void _calculateAverage() {
    final double midterm = double.tryParse(_midtermController.text) ?? 0;
    final double finalExam = double.tryParse(_finalController.text) ?? 0;
    setState(() {
      _average = (midterm * 0.4) + (finalExam * 0.6); // Ortalama formülü
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hoca Karşılama Sayfası'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Merhaba Hoca, sisteme hoş geldiniz!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.backup_table_rounded),
                label: const Text('Ders Programı'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.list),
                label: const Text('Öğrenci Listesi'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.note_alt_sharp),
                label: const Text('Not Girişi'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _midtermController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Vize Notu',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _finalController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Final Notu',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: _calculateAverage,
              child: const Text('Ortalama Hesapla'),
            ),
          ),
          const SizedBox(height: 20),
          if (_average != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Ortalama: ${_average!.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
        ],
      ),
    );
  }
}
