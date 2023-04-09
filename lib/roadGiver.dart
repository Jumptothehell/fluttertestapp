import 'package:flutter/material.dart';
import 'package:fluttertestapp/choose_project.dart';
import 'dart:developer' as developer;

import 'package:fluttertestapp/historyGiver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //don't show debug banner on rigt side of emulator
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff8FE1A1),
      ),
      home: const AddressGiver(title: 'Project'),
    );
  }
}

class AddressGiver extends StatefulWidget {
  const AddressGiver({super.key, required this.title});

  final String title;

  @override
  _AddressGiver createState() => _AddressGiver();
}

class _AddressGiver extends State<AddressGiver> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(143, 255, 161, 1),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (History(title: ''))),
              );
            },
            icon: const Icon(Icons.chevron_left),
            color: Colors.black,
          ),
          title: Container(
            margin: EdgeInsets.only(right: 50),
            alignment: Alignment.center,
            child: Image.asset('asset/img/Logo.png', scale: 10),
          ),
          backgroundColor: Color.fromRGBO(55, 191, 167, 1),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: Card(
                      margin:
                          const EdgeInsets.only(left: 80, top: 20, bottom: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: const Color(0xff387AC4),
                      child: SizedBox(
                        width: 250,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "ตำแหน่งผู้รับ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                height: 520,
                width: 450,
                // color: Colors.red,
                child: Image.asset(
                  'asset/img/map2.jpg',
                  width: 100,
                  height: 100,
                ),
              )
            ],
          ),
        ));
  }
}
