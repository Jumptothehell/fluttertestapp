import 'package:flutter/material.dart';
//import 'package:fluttertestapp/giverdetail2.dart';
import 'package:fluttertestapp/home.dart';
import 'dart:developer' as developer;

import 'package:fluttertestapp/projectread.dart';

// import 'package:fluttertestapp/projectread.dart';

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
      home: const ChooseProject(title: 'Project'),
    );
  }
}

class ChooseProject extends StatefulWidget {
  const ChooseProject({super.key, required this.title});

  final String title;

  @override
  State<ChooseProject> createState() => _ChooseProject();
}

class _ChooseProject extends State<ChooseProject> {
  //int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(143, 255, 161, 1),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (const MyHome())),
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Container(
                height: 2325,
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 50, bottom: 20),
                color: Colors.white,
              ),
              Container(
                  alignment: Alignment.topCenter,
                  child: Card(
                    margin: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: const Color(0xff387AC4),
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "รายชื่อโครงการ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const Projectread(
                              title: "เสื้อผ้า",
                            );
                          }),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 100, right: 10, left: 10, bottom: 10),
                        width: 300,
                        height: 150,
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 0, right: 0, top: 110),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.7), //color of shadow
                              spreadRadius: 7, //spread radius
                              blurRadius: 8, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Text(
                          "ชื่อโครงการ - ของที่ต้องการ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const Projectread(
                                title: "ของเล่น",
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: 300,
                        height: 150,
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 0, right: 0, top: 110),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.7), //color of shadow
                              spreadRadius: 7, //spread radius
                              blurRadius: 8, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Text(
                          "ชื่อโครงการ - ของที่ต้องการ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const Projectread(
                              title: "เฟอร์นิเจอร์",
                            );
                          }),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: 300,
                        height: 150,
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 0, right: 0, top: 110),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.7), //color of shadow
                              spreadRadius: 7, //spread radius
                              blurRadius: 8, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Text(
                          "ชื่อโครงการ - ของที่ต้องการ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const Projectread(
                              title: "อาหารแห้ง",
                            );
                          }),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: 300,
                        height: 150,
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 0, right: 0, top: 110),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.7), //color of shadow
                              spreadRadius: 7, //spread radius
                              blurRadius: 8, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Text(
                          "ชื่อโครงการ - ของที่ต้องการ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const Projectread(
                              title: "กระเป๋า",
                            );
                          }),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: 300,
                        height: 150,
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 0, right: 0, top: 110),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.7), //color of shadow
                              spreadRadius: 7, //spread radius
                              blurRadius: 8, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Text(
                          "ชื่อโครงการ - ของที่ต้องการ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const Projectread(
                              title: "อุปกรณ์อิเล็กทรอนิกส์",
                            );
                          }),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: 300,
                        height: 150,
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 0, right: 0, top: 110),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.7), //color of shadow
                              spreadRadius: 7, //spread radius
                              blurRadius: 8, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Text(
                          "ชื่อโครงการ - ของที่ต้องการ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const Projectread(
                              title: "กางเกง",
                            );
                          }),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: 300,
                        height: 150,
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 0, right: 0, top: 110),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.7), //color of shadow
                              spreadRadius: 7, //spread radius
                              blurRadius: 8, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Text(
                          "ชื่อโครงการ - ของที่ต้องการ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const Projectread(
                              title: "หนังสือ",
                            );
                          }),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: 300,
                        height: 150,
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 0, right: 0, top: 110),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.7), //color of shadow
                              spreadRadius: 7, //spread radius
                              blurRadius: 8, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Text(
                          "ชื่อโครงการ - ของที่ต้องการ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const Projectread(
                              title: "หน้ากากอนามัย",
                            );
                          }),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: 300,
                        height: 150,
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 0, right: 0, top: 110),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.7), //color of shadow
                              spreadRadius: 7, //spread radius
                              blurRadius: 8, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Text(
                          "ชื่อโครงการ - ของที่ต้องการ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const Projectread(
                              title: "คอมพิวเตอร์",
                            );
                          }),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: 300,
                        height: 150,
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 0, right: 0, top: 110),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.7), //color of shadow
                              spreadRadius: 7, //spread radius
                              blurRadius: 8, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Text(
                          "ชื่อโครงการ - ของที่ต้องการ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => (MyHome())),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: 300,
                        height: 150,
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 0, right: 0, top: 110),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.7), //color of shadow
                              spreadRadius: 7, //spread radius
                              blurRadius: 8, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Text(
                          "ชื่อโครงการ - ของที่ต้องการ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const Projectread(
                              title: "อุปกรณ์การเขียน",
                            );
                          }),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: 300,
                        height: 150,
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 0, right: 0, top: 110),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.7), //color of shadow
                              spreadRadius: 7, //spread radius
                              blurRadius: 8, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Text(
                          "ชื่อโครงการ - ของที่ต้องการ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
