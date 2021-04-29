import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String message = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('ThirdScreen - RoutesSetting'),
      ),
      body: Center(
        child: Text(
          message,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
