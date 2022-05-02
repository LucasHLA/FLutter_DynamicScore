import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Score Board',
      home: const ButtonsText(title: 'Dinamic Button'),
    );
  }
}

class ButtonsText extends StatefulWidget {
  const ButtonsText({Key? key, required this.title}) : super(key: key);
  final String title;

  State<ButtonsText> createState() => _Increments();
}

class _Increments extends State<ButtonsText> {
  int _counter = 0;
  int _counter2 = 0;

  void incrementCounter() {
    setState(() {
      _counter += 1;
    });
  }

  void incrementCounter2() {
    setState(() {
      _counter2 += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Score Board'),
          backgroundColor: Color.fromARGB(255, 20, 44, 75),
        ),
        body: Container(
            color: Color.fromARGB(255, 20, 44, 75),
            margin: EdgeInsets.all(30),
            alignment: Alignment.topCenter,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 30),
                child: Text(
                  '20:45',
                  style: TextStyle(
                      backgroundColor: Colors.black,
                      fontSize: 120,
                      color: Colors.red),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 50, left: 30),
                  child: Icon(
                    Icons.ac_unit,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 50.0,
                  )),
              Column(children: [
                Padding(padding: EdgeInsets.only(bottom: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'B',
                      style: TextStyle(
                          fontSize: 50,
                          color: Color.fromARGB(255, 97, 236, 4),
                          backgroundColor: Colors.black),
                    ),
                    Text(
                      'GUESTS',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    Text(
                      'HOME',
                      style: TextStyle(
                          fontSize: 40, color: Color.fromARGB(255, 20, 44, 75)),
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                          fontSize: 100,
                          color: Color.fromARGB(255, 97, 236, 4),
                          backgroundColor: Colors.black),
                    ),
                    Text(
                      'HOME',
                      style: TextStyle(
                          fontSize: 40, color: Color.fromARGB(255, 20, 44, 75)),
                    ),
                    Text(
                      'HOME',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    Text(
                      'B',
                      style: TextStyle(
                          fontSize: 50,
                          color: Color.fromARGB(255, 0, 0, 0),
                          backgroundColor: Colors.black),
                    ),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: incrementCounter,
                        child: const Icon(
                          Icons.arrow_circle_up,
                          color: Color.fromARGB(255, 251, 255, 7),
                        ),
                      ),
                      Text(
                        '$_counter',
                        style: TextStyle(
                            fontSize: 100,
                            color: Color.fromARGB(255, 251, 255, 7),
                            backgroundColor: Colors.black),
                      ),
                      Text(
                        '01',
                        style: TextStyle(
                            fontSize: 70,
                            color: Color.fromARGB(255, 0, 0, 0),
                            backgroundColor: Colors.black),
                      ),
                      Text(
                        'PERIOD',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Color.fromARGB(255, 230, 11, 11),
                        size: 70.0,
                      ),
                      Text(
                        '$_counter2',
                        style: TextStyle(
                            fontSize: 100,
                            color: Color.fromARGB(255, 251, 255, 7),
                            backgroundColor: Colors.black),
                      ),
                      TextButton(
                        onPressed: incrementCounter2,
                        child: const Icon(
                          Icons.arrow_circle_up,
                          color: Color.fromARGB(255, 251, 255, 7),
                        ),
                      ),
                    ])
              ]),
            ])));
  }
}
