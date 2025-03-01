import 'package:flutter/material.dart';

class StudentHomePage extends StatefulWidget {
  @override
  _StudentHomePageState createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  final TextEditingController _toDoController = TextEditingController();
  final List<String> _toDo = [];

  // To-do listesine ekleme işlevi
  void _addToDo() {
    if (_toDoController.text.isNotEmpty) {
      setState(() {
        _toDo.add(_toDoController.text); // Listeye ekleme
        _toDoController.clear(); // TextField'ı temizleme
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğrenci Karşılama Sayfası'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Merhaba Öğrenci, sisteme hoş geldiniz!',
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
                icon: Icon(Icons.assignment),
                label: const Text('Ders Kayıt'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.note_alt_sharp),
                label: const Text('Notlarım'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.book),
                label: const Text('Ders Programı'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _toDoController,
              decoration: InputDecoration(
                labelText: 'Yapılacaklar Ekle',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: _addToDo,
            child: Text("Ekle"),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: _toDo.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.list),
                  title: Text(_toDo[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
