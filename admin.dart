import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Welcome to Flutter',
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    String company = "A company";
    String id = "12345678";
    return Scaffold(
        backgroundColor: Color.fromRGBO(143, 255, 161, 1),
        appBar: AppBar(
          title: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 36.0),
            child: Image.asset(
              'image/Logo.png',
            ),
          ),
          backgroundColor: Color.fromRGBO(55, 191, 167, 1),
        ),

        //**แถบด้านข้าง */
        drawer: Drawer(
          backgroundColor: Color.fromRGBO(143, 255, 166, 1),
          child: ListView(
            children: <Widget>[
              ListTile(
                  leading: Icon(Icons.person),
                  title: Text("User-Name"),
                  onTap: (() {
                    showDialog(
                        context: context,
                        builder: ((context) => const AlertDialog(
                              content: Text("Click profile"),
                            )));
                  })),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log-Out"),
              )
            ],
          ),
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: const Color.fromRGBO(255, 190, 200, 1),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "ADMIN",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 30,
                  width: 95,
                  padding: EdgeInsets.only(top: 12),
                  // color: Color.fromARGB(255, 164, 108, 108),
                  margin: EdgeInsets.only(left: 40, top: 10),
                  child: Expanded(
                    child: Text(
                      "Username",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 120,
                  padding: EdgeInsets.only(top: 10),
                  // color: Color.fromARGB(255, 164, 108, 108),
                  margin: EdgeInsets.only(left: 15, top: 10),
                  child: Expanded(
                    child: Text(
                      "เลขทะเบียนบริษัท",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 80,
                  padding: EdgeInsets.only(top: 12),
                  // color: Color.fromARGB(255, 164, 108, 108),
                  margin: EdgeInsets.only(left: 40, top: 10),
                  child: Expanded(
                    child: Text(
                      "Manage",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ),
                ),
              ],
            ),
            Text("________________________________________________________"),
            Row(children: <Widget>[
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(left: 35, top: 10),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                height: 90,
                // color: Colors.red,
                child: Text("$company"),
              )),
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(left: 35, top: 10),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                height: 90,
                // color: Colors.blue,
                child: Text("$id"),
              )),
              Expanded(
                child: Container(
                  height: 90,
                  // color: Colors.yellow,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        height: 25,
                        // color: Colors.pink,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Accept",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(100, 18)),
                            backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(242, 92, 5, 1),
                            ),
                          ),
                        ),
                      )),
                      Expanded(
                          child: Container(
                              // color: Colors.purple,
                              )),
                      Expanded(
                          child: Container(
                        height: 25,
                        // color: Colors.black,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Delete",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(100, 18)),
                            backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(242, 92, 5, 1),
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ]),
            Text("________________________________________________________"),
            Container(
              height: 350,
            )
          ],
        )));
  }
}
