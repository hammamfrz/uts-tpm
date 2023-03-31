import 'package:flutter/material.dart';
import 'halaman_bangun_datar.dart';

class HalamanTrapesium extends StatefulWidget {
  const HalamanTrapesium({super.key});

  @override
  _HalamanTrapesiumState createState() => _HalamanTrapesiumState();
}

class _HalamanTrapesiumState extends State<HalamanTrapesium> {
  final TextEditingController sejajar1Controller = TextEditingController();
  final TextEditingController sejajar2Controller = TextEditingController();
  final TextEditingController tinggiController = TextEditingController();
  final TextEditingController miring1Controller = TextEditingController();
  final TextEditingController miring2Controller = TextEditingController();

  double _luas = 0;
  double _keliling = 0;

  void _hitungLuas() {
    double sejajar1 = double.parse(sejajar1Controller.text);
    double sejajar2 = double.parse(sejajar2Controller.text);
    double tinggi = double.parse(tinggiController.text);

    setState(() {
      _luas = 0.5 * (sejajar1 + sejajar2) * tinggi;
    });
  }

  void _hitungKeliling() {
    double sejajar1 = double.parse(sejajar1Controller.text);
    double sejajar2 = double.parse(sejajar2Controller.text);
    double miring1 = double.parse(miring1Controller.text);
    double miring2 = double.parse(miring2Controller.text);

    setState(() {
      _keliling = sejajar1 + sejajar2 + miring1 + miring2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trapesium'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: sejajar1Controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Panjang Alas 1',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: sejajar2Controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Panjang Alas 2',
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
              child: TextField(
                controller: miring1Controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Miring 1',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: miring2Controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Miring 2',
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
              child: ElevatedButton(
                onPressed: _hitungKeliling,
                child: const Text('Hitung Keliling'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text('Luas: $_luas'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text('Keliling: $_keliling'),
            ),
          ],
        ),
      ),
    );
  }
}