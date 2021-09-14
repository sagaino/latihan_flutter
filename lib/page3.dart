import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  _page3State createState() => _page3State();
}

class _page3State extends State<page3> {
  final TextEditingController _isi = TextEditingController();
  final TextEditingController _nama = TextEditingController();
  String _message = '';
  String _message1 = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan IF ELSE"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Nama anda adalah " + _message1),
              ),
              Container(
                child: Text("status adalah " + _message),
              ),
              Container(
                child: TextField(
                  controller: _nama,
                  decoration: InputDecoration(
                    labelText: "Masukka nama : ",
                  ),
                ),
              ),
              Container(
                child: TextField(
                  controller: _isi,
                  decoration: InputDecoration(
                    labelText: "Masukkan nilai : ",
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    FunctionMessage();
                  },
                ),
              ),
              Container(
                child: ElevatedButton(
                  child: Text("Back"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void FunctionMessage() {
    int value = int.parse(_isi.text);
    String value1;
    String status;
    if (value > 100) {
      status = "BIG NUMBER";
    } else {
      status = "SMALL NUMBER";
    }
    value1 = _nama.text;
    setState(() => _message = status);
    setState(() => _message1 = value1);
  }
}
