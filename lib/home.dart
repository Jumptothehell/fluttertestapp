import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertestapp/choose_project.dart';
import 'package:fluttertestapp/historyGiver.dart';
import 'package:fluttertestapp/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Welcome to Flutter',
        home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(143, 255, 161, 1),
        appBar: AppBar(
          title: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 36.0),
            child: Image.asset('asset/img/Logo.png', scale: 10),
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
                  title: Text("User-Name", style: TextStyle(fontSize: 20.0)),
                  onTap: (() {
                    showDialog(
                        context: context,
                        builder: ((context) => const AlertDialog(
                              content: Text("Click profile"),
                            )));
                  })),
              ListTile(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: ((context) {
                  return const History(title: 'Project');
                }))),
                leading: Icon(Icons.list),
                title:
                    Text("ประวัติการบริจาค", style: TextStyle(fontSize: 20.0)),
              ),
              ListTile(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: ((context) {
                  return const Setting();
                }))),
                leading: Icon(Icons.settings),
                title: Text("Setting", style: TextStyle(fontSize: 20.0)),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                leading: Icon(Icons.logout),
                title: Text("Log-Out", style: TextStyle(fontSize: 20.0)),
              )
            ],
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  child: Container(
                    color: Color.fromRGBO(55, 191, 167, 1),
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    height: 100,
                    width: 350,
                    padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 8.0),
                    child: Text(
                      "เลือกสถานะของคุณ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Container(
                color: Color.fromRGBO(55, 191, 167, 1),
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                height: 100,
                width: 350,
                padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 8.0),
                constraints: BoxConstraints(maxWidth: 350, maxHeight: 350),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (ChhoseProject(
                                  title: '',
                                ))),
                      );
                    },
                    child: const Text('ผู้ให้',
                        style: TextStyle(color: Colors.black, fontSize: 30.0)),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(255, 190, 200, 1)),
                      fixedSize: MaterialStateProperty.all(Size(240, 95)),
                    )),
              ),
              Container(
                color: Color.fromRGBO(55, 191, 167, 1),
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                height: 30,
                width: 350,
              ),
              Container(
                color: Color.fromRGBO(55, 191, 167, 1),
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                height: 100,
                width: 350,
                padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 8.0),
                constraints: BoxConstraints(maxWidth: 350, maxHeight: 550),
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('ผู้รับ',
                        style: TextStyle(color: Colors.black, fontSize: 30.0)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(255, 190, 200, 1)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                      fixedSize: MaterialStateProperty.all(Size(240, 95)),
                    )),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  child: Container(
                    color: Color.fromRGBO(55, 191, 167, 1),
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    height: 80,
                    width: 350,
                  ))
            ],
          ),
        ));
  }
}
