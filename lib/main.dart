// ignore_for_file: dead_code, deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 159, 163, 185),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 22, 104),
        title: Text('proskills game'),
      ),
      body: Gmaeimage(),
    ),
  ));
}

class Gmaeimage extends StatefulWidget {
  const Gmaeimage({Key? key}) : super(key: key);

  @override
  State<Gmaeimage> createState() => _GmaeimageState();
}

class _GmaeimageState extends State<Gmaeimage> {
  void change() {
    change1 = Random().nextInt(10);
    change2 = Random().nextInt(10);
  }

  int change1 = 5;
  int change2 = 6;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          change1 == change2 ? "لقد ربحت " : 'لعبة الصور المتحركة',
          style: TextStyle(fontSize: 50),
        ),
        Padding(
          padding: const EdgeInsets.all(100.0),
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      change();
                    });
                  },
                  child: Image.asset('images/a$change1.jpg'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      change();
                    });
                  },
                  child: Image.asset('images/a$change2.jpg'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
