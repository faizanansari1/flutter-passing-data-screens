import 'package:flutter/material.dart';
import 'package:flutter_passing_data_2_screen/firstScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pass data between 2 screen",
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: FirstScreen(),
    );
  }
}
