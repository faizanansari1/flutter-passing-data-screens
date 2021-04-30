import 'package:flutter/material.dart';
import 'package:flutter_passing_data_2_screen/firstScreen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      // theme: ThemeData(primarySwatch: Colors.black
      // ),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext contex) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: Colors.black,
      image: Image.asset('assets/loading.gif'),
      loaderColor: Colors.white,
      photoSize: 150.0,
      navigateAfterSeconds: FirstScreen(),
    );
  }
}
