import 'package:flutter/material.dart';
import 'dart:developer' as developer;

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
      home: const Projectread(title: 'Project'),
    );
  }
}

class Projectread extends StatefulWidget {
  const Projectread({super.key, required this.title});

  final String title;

  @override
  State<Projectread> createState() => _ProjectreadState();
}

class _ProjectreadState extends State<Projectread> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    String name = "ชื่อโครงการ";
    String receiver = "มูลนิธิศูนย์พิทักษ์สิทธิเด็ก";
    String place = "ถนน---ซอย---";
    String detail =
        "ในสถานการณ์การแพร่ระบาดของเชื้อไวรัสโควิด19 เชิญชวนทุกคนบริจาคสิ่งของทีี่จำเป็นต่อเด็กๆ";
    String object = "ของสำหรับเด็ก";
    String deliver = "ส่งทางไปรษณีย์ \n หน่วยงานเข้ารับตามที่อยู่";
    String contact = "โทร : 02------";
    String condition = "อยู่ในกรุงเทพ";
    bool? isChecked = false;
    return Scaffold(
      backgroundColor: Color.fromRGBO(143, 255, 161, 1),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
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
      body: Stack(children: [
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              width: 400,
              height: 1150,
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 50, bottom: 20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 115, right: 20, top: 10),
                      margin: EdgeInsets.only(left: 12),
                      height: 40,
                      width: 350,
                      // color: Colors.blue,
                      child: Text(
                        "$name",
                        style: TextStyle(
                            fontSize: 23.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 37, top: 10),
                        height: 150,
                        width: 300,
                        color: Color.fromARGB(255, 152, 198, 235),
                        child: Image.asset(
                          'asset/img/example.jpg',
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        margin: EdgeInsets.only(left: 37, top: 10),
                        height: 40,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "หน่วยงาน:",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 1),
                        margin: EdgeInsets.only(left: 37, top: 8),
                        height: 40,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "$receiver",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        margin: EdgeInsets.only(left: 37, top: 10),
                        height: 40,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "สถานที่ตั้ง:",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 1),
                        margin: EdgeInsets.only(left: 37, top: 8),
                        height: 40,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "$place",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        margin: EdgeInsets.only(left: 37, top: 10),
                        height: 40,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "รายละเอียด:",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 1),
                        margin: EdgeInsets.only(left: 37, top: 8),
                        height: 100,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "$detail",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        margin: EdgeInsets.only(left: 37, top: 10),
                        height: 40,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "ของที่เปิดรับบริจาค:",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 1),
                        margin: EdgeInsets.only(left: 37, top: 8),
                        height: 40,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "$object",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        margin: EdgeInsets.only(left: 37, top: 10),
                        height: 40,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "ข้อมูลการบริจาค:",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 1),
                        margin: EdgeInsets.only(left: 37, top: 8),
                        height: 80,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "$deliver",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        margin: EdgeInsets.only(left: 37, top: 10),
                        height: 40,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "ติดต่อหน่วยงาน:",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 1),
                        margin: EdgeInsets.only(left: 37, top: 8),
                        height: 40,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "$contact",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        margin: EdgeInsets.only(left: 37, top: 10),
                        height: 40,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "เงื่อนไขการเข้ารับ:",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 1),
                        margin: EdgeInsets.only(left: 37, top: 8),
                        height: 40,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "$condition",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(children: <Widget>[
                    Checkbox(
                      value: isChecked,
                      tristate: true,
                      onChanged: (bool? newBool) {
                        setState(() {
                          isChecked = newBool;
                        });
                      },
                      activeColor: Colors.yellow,
                      checkColor: Colors.pink,
                      // tileColor: Colors.black,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 0, right: 1, top: 5),
                      margin: EdgeInsets.only(left: 1, top: 10),
                      height: 40,
                      width: 300,
                      // color: Color.fromARGB(255, 152, 198, 235),
                      child: Text(
                        "เป็นไปตามเงื่อนไข",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ]),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 180,
                        margin: EdgeInsets.only(
                            left: 100, right: 50, bottom: 8, top: 30),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "ตกลง",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(55, 191, 167, 1),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          child: Card(
            margin: const EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            color: const Color(0xff387AC4),
            child: SizedBox(
              width: 250,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "รายละเอียดโครงการ",
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
      ]),
    );
  }
}