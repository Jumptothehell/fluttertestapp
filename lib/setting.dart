import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Welcome to Flutter',
      home: Setting(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController passwordconfirmController = TextEditingController();
    TextEditingController receiverController = TextEditingController();
    TextEditingController receiveraddressController = TextEditingController();
    bool _isVisible = false;
    bool _isObscure1 = true;
    bool _isObscure2 = true;
    String returnVisibilityString = "";

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

        //**แถบด้านข้าง */

        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                "Setting",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              Text("________________________________________________________"),
              Row(children: <Widget>[
                Container(
                  height: 50,
                  width: 280,
                  padding: EdgeInsets.only(top: 10),
                  // color: Color.fromARGB(255, 164, 108, 108),
                  margin: EdgeInsets.only(left: 40, top: 20),
                  child: Expanded(
                    child: Text(
                      "Username : Jame",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0),
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(minWidth: 50, maxWidth: 100),
                  margin: EdgeInsets.only(top: 15),
                  child: Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text('กรอก USER NAME ใหม่ของคุณ',
                                    textAlign: TextAlign.center),
                                actions: <Widget>[
                                  Container(
                                      height: 61,
                                      width: 270,
                                      margin: EdgeInsets.only(
                                          bottom: 20, right: 23),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          color: Colors.grey,
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Column(
                                        children: <Widget>[
                                          TextFormField(
                                            onTap: () {},
                                            controller:
                                                usernameController, // Controller for Username
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.all(20)),
                                            // onEditingComplete: () =>
                                            //     FocusScope.of(context)
                                            //         .nextFocus(),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    height: 50,
                                    width: 530,
                                    margin: EdgeInsets.only(
                                        left: 50, right: 50, bottom: 8),
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
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Color.fromRGBO(55, 191, 167, 1),
                                        ),
                                      ),
                                    ),
                                  )
                                ]);
                          });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(143, 255, 166, 1)),
                      shadowColor: MaterialStateProperty.all(
                          Color.fromRGBO(143, 255, 166, 0)),
                    ),
                    child: Text(
                      "แก้ไข",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.0,
                          decoration: TextDecoration.underline),
                    ),
                  )),
                ),
              ]),
              Row(children: <Widget>[
                Container(
                  height: 50,
                  width: 280,
                  padding: EdgeInsets.only(top: 10),
                  // color: Color.fromARGB(255, 164, 108, 108),
                  margin: EdgeInsets.only(left: 40, top: 20),
                  child: Expanded(
                    child: Text(
                      "รหัสผ่าน",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0),
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(minWidth: 50, maxWidth: 100),
                  margin: EdgeInsets.only(top: 15),
                  child: Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text('กรอก รหัสผ่าน ใหม่ของคุณ',
                                    textAlign: TextAlign.center),
                                actions: <Widget>[
                                  Container(
                                      height: 128,
                                      width: 270,
                                      margin: EdgeInsets.only(
                                          bottom: 20, right: 23),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          color: Colors.grey,
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Column(
                                        children: <Widget>[
                                          TextFormField(
                                            onTap: () {},
                                            controller:
                                                passwordController, // Controller for Username
                                            decoration: InputDecoration(
                                                hintText:
                                                    'กรอกรหัสผ่านใหม่ของคุณ',
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.all(20)),
                                            onEditingComplete: () =>
                                                FocusScope.of(context)
                                                    .nextFocus(),
                                          ),
                                          Container(
                                            height: 64,
                                            width: 270,
                                            child: TextFormField(
                                              onTap: () {},
                                              controller:
                                                  passwordconfirmController, // Controller for Username
                                              decoration: InputDecoration(
                                                  hintText:
                                                      'กรอกรหัสผ่านใหม่ของคุณ',
                                                  border: InputBorder.none,
                                                  contentPadding:
                                                      EdgeInsets.all(20)),
                                              onEditingComplete: () =>
                                                  FocusScope.of(context)
                                                      .nextFocus(),
                                            ),
                                          )
                                        ],
                                      )),
                                  Container(
                                    height: 50,
                                    width: 530,
                                    margin: EdgeInsets.only(
                                        left: 50, right: 50, bottom: 8),
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
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Color.fromRGBO(55, 191, 167, 1),
                                        ),
                                      ),
                                    ),
                                  )
                                ]);
                          });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(143, 255, 166, 1)),
                      shadowColor: MaterialStateProperty.all(
                          Color.fromRGBO(143, 255, 166, 0)),
                    ),
                    child: Text(
                      "แก้ไข",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.0,
                          decoration: TextDecoration.underline),
                    ),
                  )),
                ),
              ]),
              Text("________________________________________________________"),
              Row(children: <Widget>[
                Container(
                  width: 280,
                  height: 100,
                  // color: Color.fromARGB(255, 164, 108, 108),
                  margin: EdgeInsets.only(left: 40, top: 20),
                  child: Expanded(
                    child: Text(
                      "ชื่อหน่วยงาน:",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0),
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(minWidth: 50, maxWidth: 100),
                  margin: EdgeInsets.only(bottom: 45),
                  child: Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text(
                                    'กรุณากรอกเลขที่จดทะเบียนหน่วยงานของคุณ',
                                    textAlign: TextAlign.center),
                                actions: <Widget>[
                                  Container(
                                      height: 61,
                                      width: 270,
                                      margin: EdgeInsets.only(
                                          bottom: 20, right: 23),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          color: Colors.grey,
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Column(
                                        children: <Widget>[
                                          TextFormField(
                                            onTap: () {},
                                            controller:
                                                receiverController, // Controller for Username
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.all(20)),
                                            onEditingComplete: () =>
                                                FocusScope.of(context)
                                                    .nextFocus(),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    height: 50,
                                    width: 530,
                                    margin: EdgeInsets.only(
                                        left: 50, right: 50, bottom: 8),
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
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Color.fromRGBO(55, 191, 167, 1),
                                        ),
                                      ),
                                    ),
                                  )
                                ]);
                          });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(143, 255, 166, 1)),
                      shadowColor: MaterialStateProperty.all(
                          Color.fromRGBO(143, 255, 166, 0)),
                    ),
                    child: Text(
                      "แก้ไข",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.0,
                          decoration: TextDecoration.underline),
                    ),
                  )),
                ),
              ]),
              Row(children: <Widget>[
                Container(
                  width: 280,
                  height: 220,
                  // color: Color.fromARGB(255, 164, 108, 108),
                  margin: EdgeInsets.only(left: 40, bottom: 0),
                  child: Expanded(
                    child: Text(
                      "ที่อยู่หน่วยงาน:",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0),
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(minWidth: 50, maxWidth: 100),
                  margin: EdgeInsets.only(top: 0, bottom: 180),
                  child: Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text('แก้ไขที่อยู่ของคุณ',
                                    textAlign: TextAlign.center),
                                actions: <Widget>[
                                  Container(
                                      height: 61,
                                      width: 270,
                                      margin: EdgeInsets.only(
                                          bottom: 20, right: 23),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          color: Colors.grey,
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Column(
                                        children: <Widget>[
                                          TextFormField(
                                            onTap: () {},
                                            controller:
                                                receiveraddressController, // Controller for Username
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.all(20)),
                                            onEditingComplete: () =>
                                                FocusScope.of(context)
                                                    .nextFocus(),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    height: 50,
                                    width: 530,
                                    margin: EdgeInsets.only(
                                        left: 50, right: 50, bottom: 8),
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
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Color.fromRGBO(55, 191, 167, 1),
                                        ),
                                      ),
                                    ),
                                  )
                                ]);
                          });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(143, 255, 166, 1)),
                      shadowColor: MaterialStateProperty.all(
                          Color.fromRGBO(143, 255, 166, 0)),
                    ),
                    child: Text(
                      "แก้ไข",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.0,
                          decoration: TextDecoration.underline),
                    ),
                  )),
                ),
              ]),
            ])));
  }
}
