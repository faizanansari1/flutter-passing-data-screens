import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String message;
  SecondScreen({@required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Second Screen - parameter'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          message,
          style: Theme.of(context).textTheme.headline2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
