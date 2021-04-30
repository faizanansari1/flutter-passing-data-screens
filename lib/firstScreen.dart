import 'package:flutter/material.dart';
import 'package:flutter_passing_data_2_screen/myDialog.dart';
import 'package:flutter_passing_data_2_screen/secondScreen.dart';
import 'package:flutter_passing_data_2_screen/thirdScreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final String myMessage = "Good Job";

  String receivedValueFromDialog;

  @override
  Widget build(BuildContext context) {
    gotoSecondScreen() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SecondScreen(
                    message: myMessage,
                  )));
    }

    gotpThirdScreen() {
      Navigator.push(
          context,
          MaterialPageRoute(
            //we can pass any time of arguments in this i passed the String varibale
            settings: RouteSettings(arguments: myMessage),
            builder: (contex) => ThirdScreen(),
          ));
    }

    gotoDialog() async {
      String value =
          await showDialog(context: context, builder: (contex) => MyDialog());
      setState(() {
        receivedValueFromDialog = value;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "FirstScreen",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              padding: const EdgeInsets.all(16),
              color: Colors.indigo[100],
              textColor: Colors.white,
              child: Text(
                '2nd Screen - Using parameter',
                style: Theme.of(context).textTheme.headline6,
              ),
              onPressed: gotoSecondScreen,
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              padding: const EdgeInsets.all(16),
              color: Colors.indigo[100],
              textColor: Colors.white,
              child: Text(
                '3nd Screen - Using Routes Setting',
                style: Theme.of(context).textTheme.headline6,
              ),
              onPressed: gotpThirdScreen,
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              padding: const EdgeInsets.all(16),
              color: Colors.indigo[100],
              textColor: Colors.white,
              child: Text(
                'Show Dialod',
                style: Theme.of(context).textTheme.headline6,
              ),
              onPressed: gotoDialog,
            ),
            SizedBox(
              height: 20,
            ),
            (receivedValueFromDialog != null)
                ? Text(
                    receivedValueFromDialog,
                    style: Theme.of(context).textTheme.headline6,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
