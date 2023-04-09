// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'authentication.dart';
//import 'package:flutter/services.dart';
//import 'package:fluttertestapp/admin.dart';
import 'package:fluttertestapp/home.dart';

// final auth = Authentication();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // fontFamily: 'SanFrancisco',
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color.fromRGBO(55, 191, 167, 1),
        body: LoginScreen(),
        // bottomNavigationBar: BottomAppBar(
        //     color: Colors.transparent,
        //     elevation: 0,
        //     child: Container(
        //       padding: EdgeInsets.all(20),
        //       child: Text(P
        //         "Company name, Inc",
        //         style: TextStyle(color: Colors.white),
        //         textAlign: TextAlign.center,
        //       ),
        //     )),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;
  bool _isVisible = false;

  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
    ..onTap = () {
      if (kDebugMode) {
        print("Hello world from _gestureRecognizer");
      }
    };

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 500,
              width: 200,
            ),
            //โลโก้ LogoBrand
            Container(
              margin: const EdgeInsets.only(top: 6.0),
              child: Image.asset(
                'asset/img/Logo.png',
                fit: BoxFit.contain,
                scale: 3,
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                child: Container(
                  height: 100,
                  width: 360,
                  color: Color.fromRGBO(143, 225, 161, 1),
                  //ข้างในตัวครอบ คำว่า Login
                  alignment: Alignment.center,
                  child: Text(
                    "LOG-IN",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Container(
              color: Color.fromRGBO(143, 225, 161, 1),
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
              height: 30,
              width: 360,
            ),
            Container(
              color: Color.fromRGBO(143, 225, 161, 1),
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
              height: 250,
              width: 360, //ปรับความสูงกว้างของทั้งปุ่มทั้ง container
              constraints: BoxConstraints(
                  maxWidth: 360,
                  maxHeight: 140), //ปรับความสูงกว้างของทั้งปุ่มทั้ง container
              child: Container(
                margin:
                    EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0), //ปรับขนาดปุ่ม
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      onTap: () {
                        setState(() {
                          _isVisible = false;
                        });
                      },
                      controller: usernameController, // Controller for Username
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username",
                          prefixIcon: Icon(Icons.person),
                          prefixIconColor: MaterialStateColor.resolveWith(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.focused)) {
                              return Color.fromRGBO(55, 191, 167, 1);
                            }
                            if (states.contains(MaterialState.error)) {
                              return Colors.red;
                            }
                            return Colors.grey;
                          }),
                          contentPadding: EdgeInsets.all(20)),
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    TextFormField(
                      onTap: () {
                        setState(() {
                          _isVisible = false;
                        });
                      },

                      controller: passwordController, // Controller for Password
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        prefixIconColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.focused)) {
                            return Color.fromRGBO(55, 191, 167, 1);
                          }
                          if (states.contains(MaterialState.error)) {
                            return Colors.red;
                          }
                          return Colors.grey;
                        }),
                        contentPadding: EdgeInsets.all(20),
                        // Adding the visibility icon to toggle visibility of the password field
                        suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        suffixIconColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.focused)) {
                            return Color.fromRGBO(55, 191, 167, 1);
                          }
                          if (states.contains(MaterialState.error)) {
                            return Colors.red;
                          }
                          return Colors.grey;
                        }),
                      ),
                      obscureText: _isObscure,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color.fromRGBO(143, 225, 161, 1),
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
              height: 50,
              width: 360,
              constraints: BoxConstraints(maxWidth: 360, maxHeight: 550),
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: "Create new account",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()),
                              )
                            }),
                ),

                // Wrong Password text
                // Visibility(
                //   visible: _isVisible,
                //   maintainSize: true,
                //   maintainAnimation: true,
                //   maintainState: true,
                //   child: Container(
                //     alignment: Alignment.centerLeft,
                //     padding: EdgeInsets.all(10),
                //     child: Text(
                //       "Wrong credentials entered",
                //       style: TextStyle(
                //         color: Colors.red,
                //         fontSize: 10,
                //       ),
                //     ),
                //   ),
                // ),

                // Textfields for username and password fields

                // text: " Create new account",
                // style: TextStyle(
                //     color: Colors.blue, fontWeight: FontWeight.bold),
                // recognizer: new TapGestureRecognizer()
                //   .onTap = () => {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => SignupPage()),
                //         )
                //       }),
                //     child: RichText(
                //   text: TextSpan(
                //     text: "Dont have an account? ",
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 15,
                //     ),
                //     children: [
                //       TextSpan(
                //           text: " Create new account",
                //           style: TextStyle(
                //               color: Colors.blue, fontWeight: FontWeight.bold),
                //           recognizer: new TapGestureRecognizer()
                //             ..onTap = () => {
                //                   Navigator.push(
                //                     context,
                //                     MaterialPageRoute(
                //                         builder: (context) => SignupPage()),
                //                   )
                //                 }),
                //     ],
                //   ),
                //)
              ),

              // Wrong Password text
              // Visibility(
              //   visible: _isVisible,
              //   maintainSize: true,
              //   maintainAnimation: true,
              //   maintainState: true,
              //   child: Container(
              //     alignment: Alignment.centerLeft,
              //     padding: EdgeInsets.all(10),
              //     child: Text(
              //       "Wrong credentials entered",
              //       style: TextStyle(
              //         color: Colors.red,
              //         fontSize: 10,
              //       ),
              //     ),
              //   ),
              // ),

              // Textfields for username and password fields

              // text: " Create new account",
              // style: TextStyle(
              //     color: Colors.blue, fontWeight: FontWeight.bold),
              // recognizer: new TapGestureRecognizer()
              //   .onTap = () => {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => SignupPage()),
              //         )
              //       }),
              //     child: RichText(
              //   text: TextSpan(
              //     text: "Dont have an account? ",
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 15,
              //     ),
              //     children: [
              //       TextSpan(
              //           text: " Create new account",
              //           style: TextStyle(
              //               color: Colors.blue, fontWeight: FontWeight.bold),
              //           recognizer: new TapGestureRecognizer()
              //             ..onTap = () => {
              //                   Navigator.push(
              //                     context,
              //                     MaterialPageRoute(
              //                         builder: (context) => SignupPage()),
              //                   )
              //                 }),
              //     ],
              //   ),
              //)
            ),
            Container(
              color: Color.fromRGBO(143, 225, 161, 1),
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
              height: 70,
              width: 360,
              constraints: BoxConstraints(maxWidth: 360, maxHeight: 550),
              child: Container(
                margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                width: 90,
                height: 70,
                // padding: EdgeInsets.only(top: 20),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(242, 92, 5, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  // color: Colors.pink,
                  child: Text("LOG-IN", style: TextStyle(color: Colors.white)),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => (MyHome())),
                    );
                  },

                  // onPressed: () {
                  //   if (auth.fetchCredentials(
                  //       usernameController.text, passwordController.text)) {
                  //     Navigator.pushAndRemoveUntil(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => HomePage()),
                  //       (Route<dynamic> route) => false,
                  //     );
                  //   } else {
                  //     setState(() {
                  //       _isVisible = true;
                  //     });
                  //   }
                  // }
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 100.0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                child: Container(
                  height: 60,
                  width: 360,
                  color: Color.fromRGBO(143, 225, 161, 1),
                  alignment: Alignment.center,
                ),
              ),
            ),
          ],
        ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color.fromRGBO(40, 38, 56, 1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                  height: 400,
                  width: 200,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Text(
                    "Successfull login!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
            ),
            Container(
              height: 100,
              width: 570,
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(242, 92, 5, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Text("Logout", style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                      (Route<dynamic> route) => false,
                    );
                  }),
            )
          ],
        ));
  }
}

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromRGBO(55, 191, 167, 1),
      body: SignupPageContent(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        // elevation: 0,
        // child: Container(
        //   padding: EdgeInsets.all(20),
        //   child: Text(
        //     "Company name, Inc",
        //     style: TextStyle(color: Colors.white),
        //     textAlign: TextAlign.center,
        //   ),
        // )
      ),
    );
  }
}

class SignupPageContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignupPageContent();
}

class _SignupPageContent extends State<SignupPageContent> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  bool _isVisible = false;
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  String returnVisibilityString = "";

  bool returnVisibility(String password1, String password2, String username) {
    if (password1 != password2) {
      returnVisibilityString = "Passwords do not match";
    } else if (username == "") {
      returnVisibilityString = "Username cannot be empty";
    } else if (password1 == "" || password2 == "") {
      returnVisibilityString = "Password fields cant be empty";
      // } else if (!auth.isPasswordCompliant(password1)) {
      //   returnVisibilityString = "Not password compliant";
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Sized Box
          SizedBox(
            height: 37.5,
            width: 400,
          ),
          Container(
            margin: const EdgeInsets.only(top: 6.0),
            child: Image.asset(
              'asset/img/Logo.png',
              fit: BoxFit.contain,
              scale: 3,
            ),
          ),
          // Signup Text
          Center(
            child: Container(
              height: 100,
              width: 400,
              alignment: Alignment.center,
              child: Text(
                "New Account",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Wrong password text
          // Visibility(
          //   visible: _isVisible,
          //   maintainSize: true,
          //   maintainAnimation: true,
          //   maintainState: true,
          //   child: Container(
          //     alignment: Alignment.centerLeft,
          //     padding: EdgeInsets.all(10),
          //     child: Text(
          //       returnVisibilityString,
          //       style: TextStyle(
          //         color: Colors.red,
          //         fontSize: 10,
          //       ),
          //     ),
          //   ),
          // ),

          // Signup Info
          Container(
            height: 225,
            width: 530,
            constraints: BoxConstraints(maxWidth: 330, maxHeight: 500),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white),
            child: Column(
              children: <Widget>[
                TextFormField(
                  onTap: () {
                    setState(() {
                      _isVisible = false;
                    });
                  },
                  controller: usernameController, // Controller for Username
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Username",
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: MaterialStateColor.resolveWith(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.focused)) {
                          return Color.fromRGBO(55, 191, 167, 1);
                        }
                        if (states.contains(MaterialState.error)) {
                          return Colors.red;
                        }
                        return Colors.grey;
                      }),
                      contentPadding: EdgeInsets.all(20)),

                  onEditingComplete: () => FocusScope.of(context).nextFocus(),
                ),
                Divider(
                  thickness: 3,
                ),
                TextFormField(
                  onTap: () {
                    setState(() {
                      _isVisible = false;
                    });
                  },
                  controller: passwordController1, // Controller for Password
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: MaterialStateColor.resolveWith(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused)) {
                        return Color.fromRGBO(55, 191, 167, 1);
                      }
                      if (states.contains(MaterialState.error)) {
                        return Colors.red;
                      }
                      return Colors.grey;
                    }),
                    contentPadding: EdgeInsets.all(20),
                    // Adding the visibility icon to toggle visibility of the password field
                    suffixIcon: IconButton(
                      icon: Icon(_isObscure1
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isObscure1 = !_isObscure1;
                        });
                      },
                    ),
                    suffixIconColor: MaterialStateColor.resolveWith(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused)) {
                        return Color.fromRGBO(55, 191, 167, 1);
                      }
                      if (states.contains(MaterialState.error)) {
                        return Colors.red;
                      }
                      return Colors.grey;
                    }),
                  ),
                  obscureText: _isObscure1,
                ),
                Divider(
                  thickness: 3,
                ),
                TextFormField(
                  onTap: () {
                    setState(() {
                      _isVisible = false;
                    });
                  },
                  controller: passwordController2, // Controller for Password
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Confirm Password",
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: MaterialStateColor.resolveWith(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused)) {
                        return Color.fromRGBO(55, 191, 167, 1);
                      }
                      if (states.contains(MaterialState.error)) {
                        return Colors.red;
                      }
                      return Colors.grey;
                    }),
                    contentPadding: EdgeInsets.all(20),
                    // Adding the visibility icon to toggle visibility of the password field
                    suffixIcon: IconButton(
                      icon: Icon(_isObscure2
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isObscure2 = !_isObscure2;
                        });
                      },
                    ),
                    suffixIconColor: MaterialStateColor.resolveWith(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused)) {
                        return Color.fromRGBO(55, 191, 167, 1);
                      }
                      if (states.contains(MaterialState.error)) {
                        return Colors.red;
                      }
                      return Colors.grey;
                    }),
                  ),
                  obscureText: _isObscure2,
                ),
                // Divider(
                //   thickness: 3,
                // ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255,
                          255), //background color of dropdown button

                      borderRadius: BorderRadius.all(Radius.circular(
                          50)), //border raiuds of dropdown button
                      boxShadow: <BoxShadow>[
                        //apply shadow on Dropdown button
                        BoxShadow(
                            color: Color.fromRGBO(
                                0, 0, 0, 0.57), //shadow for button
                            blurRadius: 5) //blur radius of shadow
                      ]),
                  child: DropdownButton(
                    //ใส่คำที่อยู่ในปุ่มว่าเป็นฝ่ายไหน
                    // textAlign: TextAlign.center,
                    // hint: Text('เลือกสถานะ',Padding: EdgeInsets.all(20) ),
                    hint: Text('เลือกสถานะ'),

                    //           hint: Text(
                    //   widget.hint,
                    //   style: TextStyle(
                    //       color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
                    // ),
                    items: [
                      //add items in the dropdown

                      DropdownMenuItem(
                        child: Text("ผู้ให้"),
                        value: "ผู้ให้",
                      ),
                      DropdownMenuItem(child: Text("ผู้รับ"), value: "ผู้รับ"),
                      DropdownMenuItem(
                        child: Text("ผู้ให้และผู้รับ"),
                        value: "ผู้ให้และผู้รับ",
                      )
                    ],
                    onChanged: (value) {
                      //get value when changed
                      print("You have selected $value");
                    },
                    icon: Padding(
                        //Icon at tail, arrow bottom is default icon
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Icon(Icons.arrow_circle_down_sharp)),
                    iconEnabledColor: Color.fromARGB(255, 0, 0, 0), //Icon color
                    style: TextStyle(
                        //te
                        color: Colors.grey, //Font color
                        fontSize: 20 //font size on dropdown button
                        ),

                    dropdownColor: Colors.white, //dropdown background color
                    underline: Container(), //remove underline
                    isExpanded: true, //make true to make width 100%
                  ))),

          // ปุ่มเลือกว่าเป็นฝ่ายไหน
          // DecoratedBox(
          //     decoration: BoxDecoration(
          //         color:
          //             Colors.lightGreen, //background color of dropdown button

          //         borderRadius: BorderRadius.circular(
          //             50), //border raiuds of dropdown button
          //         boxShadow: <BoxShadow>[
          //           //apply shadow on Dropdown button
          //           BoxShadow(
          //               color:
          //                   Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
          //               blurRadius: 5) //blur radius of shadow
          //         ]),
          //     // child: Padding(
          //     //     padding: EdgeInsets.only(left: 30, right: 30),
          //     child: DropdownButton(
          //       value: "เลือกสถานะของคุณ",
          //       items: [
          //         //add items in the dropdown
          //         DropdownMenuItem(
          //           child: Text("ผู้ให้"),
          //           value: "ผู้ให้",
          //         ),
          //         DropdownMenuItem(child: Text("ผู้รับ"), value: "ผู้รับ"),
          //         DropdownMenuItem(
          //           child: Text("ผู้ให้และผู้รับ"),
          //           value: "ผู้ให้และผู้รับ",
          //         )
          //       ],
          //       onChanged: (value) {
          //         //get value when changed
          //         print("You have selected $value");
          //       },
          //       icon: Padding(
          //           //Icon at tail, arrow bottom is default icon
          //           padding: EdgeInsets.only(left: 20),
          //           child: Icon(Icons.arrow_circle_down_sharp)),
          //       iconEnabledColor: Colors.white, //Icon color
          //       style: TextStyle(
          //           //te
          //           color: Colors.white, //Font color
          //           fontSize: 20 //font size on dropdown button
          //           ),

          //       dropdownColor: Colors.redAccent, //dropdown background color
          //       underline: Container(), //remove underline
          //       isExpanded: true, //make true to make width 100%
          //     )
          //     // )
          //     ),

          // Signup Submit button
          Container(
            width: 210,
            height: 70,
            padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(242, 92, 5, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              // color: Colors.pink,
              child: Text("CREATE", style: TextStyle(color: Colors.white)),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (LoginScreen())),
                );
              },
              // onPressed: () async {
              //   if (kDebugMode) {
              //     print(
              //         "Username: ${usernameController.text}\npassword: ${passwordController1.text}\nretry password ${passwordController2.text}");
              //   }

              //   if (usernameController.text != "" &&
              //       passwordController1.text == passwordController2.text &&
              //       passwordController2.text != "" &&
              //       auth.isPasswordCompliant(passwordController1.text)) {
              //     print("I got in here");
              //     if (!auth.checkUserRepeat(usernameController.text)) {
              //       auth.insertCredentials(
              //           usernameController.text, passwordController1.text);

              //       Navigator.of(context).pushAndRemoveUntil(
              //         MaterialPageRoute(builder: (context) => MyApp()),
              //         (Route<dynamic> route) => false,
              //       );
              //     } else {
              //       setState(() {
              //         returnVisibilityString = "Username already exists";
              //         _isVisible = true;
              //       });
              //     }
              //   } else {
              //     setState(() {
              //       _isVisible = returnVisibility(passwordController1.text,
              //           passwordController2.text, usernameController.text);
              //     });
              //   }
              // }
            ),
          ),
        ],
      ),
    );
  }
}
