import 'package:flutter/material.dart';
import 'teacher_home_page.dart';
import 'student_home_page.dart';
import 'secretary_home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OBS Giriş',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OBS Giriş'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lightBlue[50], // Arka plan rengi
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Fotoğraf Ekleme (Giriş Yap yazısının üstüne)
            Image.asset(
              'assets1/Istanbul-Medeniyet-Universitesi-Logo-Small.png',  
              height: 100.0,  
            ),
            const SizedBox(height: 20.0),  // Fotoğraf ile başlık arasında boşluk
            const Text(
              'Giriş Yap',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'E-posta',
                labelStyle: TextStyle(fontSize: 14.0),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Şifre',
                labelStyle: TextStyle(fontSize: 14.0),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30.0),
            SizedBox(
              height: 40.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {
                  // Giriş işlemleri burada yapılacak
                },
                child: const Text('Giriş Yap'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
