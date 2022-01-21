import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(magic_ball());
}

class magic_ball extends StatelessWidget {
  const magic_ball({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Center(child: Text('Ask me Anything')),
      ),
      body: Magic(),
    ));
  }
}

class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(
            onPressed: () {
              setState(() {
                ballnumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$ballnumber.png')),
      ],
    );
  }
}
