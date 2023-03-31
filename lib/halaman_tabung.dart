import 'package:flutter/material.dart';
import 'halaman_bangun_datar.dart';

class HalamanTabung extends StatefulWidget {
  const HalamanTabung({super.key});

  @override
  _HalamanTabungState createState() => _HalamanTabungState();
}

class _HalamanTabungState extends State<HalamanTabung> {
  final TextEditingController jariController = TextEditingController();
  final TextEditingController tinggiController = TextEditingController();

  double _luas = 0;
  double _volume = 0;

  void _hitungLuas() {
    double jari = double.parse(jariController.text);
    double tinggi = double.parse(tinggiController.text);

    setState(() {
      _luas = 2 * 3.14 * jari * (jari + tinggi);
    });
  }

  void _hitungVolume() {
    double jari = double.parse(jariController.text);
    double tinggi = double.parse(tinggiController.text);

    setState(() {
      _volume = 3.14 * jari * jari * tinggi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabung'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: jariController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Jari-jari',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: tinggiController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tinggi',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: _hitungLuas,
                child: const Text('Hitung Luas'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text('Luas: $_luas'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: _hitungVolume,
                child: const Text('Hitung Volume'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text('Volume: $_volume'),
            ),
          ],
        ),
      ),
    );
  }
}