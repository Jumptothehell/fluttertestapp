import 'package:flutter/material.dart';
// import 'dart:developer' as developer;

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
      home: const GiverDetail1(title: 'Project'),
    );
  }
}

class GiverDetail1 extends StatefulWidget {
  const GiverDetail1({super.key, required this.title});

  final String title;

  @override
  State<GiverDetail1> createState() => _Giverdetail1();
}

class _Giverdetail1 extends State<GiverDetail1> {
  //int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    String name = "ชื่อผู้ให้";
    String place = "ถนน---ซอย---";
    String object = "ของสำหรับเด็ก";
    //String deliver = "ส่งทางไปรษณีย์ \n หน่วยงานเข้ารับตามที่อยู่";
    String contact = "โทร : 02------";
    String date = "01/02/2565";
    //bool? isChecked = false;
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
              height: 800,
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 50, bottom: 20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        margin: EdgeInsets.only(left: 37, top: 10),
                        height: 40,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "ชื่อตัวแทนบริจาค : $name",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
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
                          "เบอร์โทรติดต่อ : $contact",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        margin: EdgeInsets.only(left: 37, top: 10),
                        height: 80,
                        width: 300,
                        // color: Color.fromARGB(255, 152, 198, 235),
                        child: Text(
                          "สิ่งของที่ต้องการบริจาค : \n $object",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
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
                          "รูปสิ่งของ :",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
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
                          "สถานที่ส่งมอบของ :",
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
                          "เลือกวันที่นัดส่งมอบ :",
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
                          "$date",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 200,
                        margin: EdgeInsets.only(
                            left: 80, right: 50, bottom: 8, top: 30),
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
                  Row(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 200,
                        margin: EdgeInsets.only(
                            left: 80, right: 50, bottom: 8, top: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "ไม่ตรงตามเงื่อนไข",
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
                    "รายละเอียดผู้ให้",
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
        )
      ]),
    );
  }
}
