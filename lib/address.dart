import 'package:flutter/material.dart';
//import 'dart:developer' as developer;

void main() {
  runApp(MaterialApp(home: Address()));
}

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _Address();
  Widget build(BuildContext context) {
    return MaterialApp(
      //don't show debug banner on rigt side of emulator
      debugShowCheckedModeBanner: false,
    );
  }
}

class _Address extends State<Address> {
  get textarea => null;

  @override
  Widget build(BuildContext context) {
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Card(
                        margin: const EdgeInsets.only(
                            left: 80, top: 20, bottom: 20),
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
                                "สถานที่ส่งมอบ",
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
                TextField(
                  controller: textarea,
                  keyboardType: TextInputType.multiline,
                  // maxLines: 1,
                  decoration: InputDecoration(
                      filled: true, //<-- SEE HERE
                      fillColor: Colors.white,
                      hintText: "ค้นหา",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.grey))),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      // fixedSize: MaterialStateProperty.all(Size(100, 20)),
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(242, 92, 5, 1),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => ()),
                      //         )
                    },
                    child: Text("ตกลง")),
                Container(
                  height: 425,
                  width: 450,
                  // color: Colors.red,
                  child: Image.asset(
                    'asset/img/map.png',
                    width: 100,
                    height: 100,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
