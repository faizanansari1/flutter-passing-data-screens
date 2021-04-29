import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.all(20),
      children: [
        TextField(
          decoration: InputDecoration(hintText: 'Write something!!'),
          controller: textController,
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
            child: Text('Save'),
            onPressed: () {
              print('SHOW TEXT:: ${textController.text}');
              Navigator.pop(context, textController.text);
            }),
      ],
    );
  }
}
