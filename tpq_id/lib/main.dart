import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tpq_id/screen/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TPQ.ID',
      theme: ThemeData(),
      home: SplashScreenPage(),
    );
  }
}

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    var durasiSplash = const Duration(seconds: 3);
    return Timer(durasiSplash, () {
      //pindah ke halaman home
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return FirstScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Image.asset(
              "asset/logo.png",
            ),
            SizedBox(height: 20),
            Text(
              'TPQ.ID',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
