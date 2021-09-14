import 'package:flutter/material.dart';
import 'package:lat1/page2.dart';
import 'package:lat1/page3.dart';
import 'package:lat1/page4.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Latihan 1"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return page2();
                }));
              },
            ),
            ElevatedButton(
              child: Text("Latihan 2"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return page3();
                }));
              },
            ),
            ElevatedButton(
              child: Text("Latihan 3"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return page4();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
