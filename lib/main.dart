import 'package:flutter/material.dart';

import 'package:splashscreen/splashscreen.dart';
import 'homescreen.dart';
import 'package:provider/provider.dart';
import 'userlist.dart';

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
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserList()),
          ChangeNotifierProvider(create: (_) => CalledOnes()),
        ],
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.green.shade800,
                ),
                scaffoldBackgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
              ),
              home: SplashScreen(
                backgroundColor: Colors.white,
                image: Image.asset('assets/whatsapp.jpg'),
                loadingText: const Text(
                  'from\n\nFACEBOOK',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                  textAlign: TextAlign.center,
                ),
                useLoader: false,
                photoSize: 200.00,
                seconds: 3,
                navigateAfterSeconds: HomeScreen(),
              ));
        });
  }
}
