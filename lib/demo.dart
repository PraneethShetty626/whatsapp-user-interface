import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.white,
      image: Image.network(
          'https://www.shutterstock.com/image-vector/illustration-green-old-school-phone-vector-281221202'),
      loaderColor: Colors.green,
      photoSize: 50.00,
      seconds: 3,
      navigateAfterSeconds: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
        ),
      ),
    );
  }
}
