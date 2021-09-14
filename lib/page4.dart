import 'package:flutter/material.dart';

class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  _page4State createState() => _page4State();
}

class _page4State extends State<page4> {
  final TextEditingController _nilaisuhu = TextEditingController();
  String _message = '';
  String _message1 = '';
  String _message2 = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hitung suhu"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: TextField(
                  controller: _nilaisuhu,
                  decoration: InputDecoration(
                    labelText: "Input nilai suhu (Dalam Celcius) : ",
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  child: Text("Hitung"),
                  onPressed: () {
                    fungsihasil();
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
              ),
              Container(
                child: Text("Hasil perhitungan ke derajat Reamur : " +
                    _message +
                    " °R"),
              ),
              Container(
                child: Text("Hasil perhitungan ke derajat Fahrenheit : " +
                    _message1 +
                    " °F"),
              ),
              Container(
                child: Text("Hasil perhitungan ke derajat Kelvin : " +
                    _message2 +
                    " °K"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void fungsihasil() {
    int NilaiReamur = int.parse(_nilaisuhu.text);
    var d = (4 / 5) * NilaiReamur;

    int NilaiFahrenheit = int.parse(_nilaisuhu.text);
    var z = ((9 / 5) * NilaiFahrenheit) + 32;

    int NilaiKelvin = int.parse(_nilaisuhu.text);
    var x = (NilaiKelvin + 273);
    setState(() => _message = d.toString());
    setState(() => _message1 = z.toString());
    setState(() => _message2 = x.toString());
  }
}
