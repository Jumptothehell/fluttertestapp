import 'package:flutter/material.dart';
import 'package:fluttertestapp/buildcall.dart';
import 'package:fluttertestapp/config/palette.dart';
import 'package:fluttertestapp/home.dart';
import 'package:fluttertestapp/widget/projectdetail.dart';
import 'package:fluttertestapp/widget/projectgiver.dart';

class YourProject extends StatelessWidget {
  const YourProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(context, const MyHome()),
      // appBar: topAppBar(context, "const main()" as Widget),
      body: basicBody(content(context), "โครงการของคุณ"),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15.0, right: 15.0),
        child: FloatingActionButton(
          foregroundColor: Colors.black,
          backgroundColor: Palette.kToDark,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ProjectDetail();
            }));
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

const index = 3;
Container content(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 90, left: 40, right: 40, bottom: 20),
    child: ListView.builder(
        itemCount: index,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                  leading: const Icon(
                    Icons.location_pin,
                    color: Colors.red,
                    size: 30,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const ProjectGiver();
                        },
                      ));
                    },
                    child: Text("ชื่อโครงการ $index"),
                  ),
                  trailing: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: const Text('ALEART'),
                                content: const Text(
                                    'คุณต้องการปิดโครงการนี้ใช่หรือไม่ ?'),
                                actions: [
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('ยกเลิก')),
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('ใช่'))
                                ],
                              ));
                    },
                    child: const Text(
                      "ปิดโครงการ",
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  )
                  // subtitle: selectedIndex == index
                  //     ? const Text("ปิดโครงการ")
                  //     : null),
                  ));
        }),
  );
}
