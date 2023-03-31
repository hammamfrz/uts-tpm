import 'package:flutter/material.dart';
import 'halaman_trapesium.dart';
import 'halaman_tabung.dart';

class HalamanBangunDatar extends StatefulWidget {
  const HalamanBangunDatar({super.key});

  @override
  _HalamanBangunDatarState createState() => _HalamanBangunDatarState();
}

class _HalamanBangunDatarState extends State<HalamanBangunDatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bangun Datar'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HalamanTrapesium()
                      ),
                    );
                  },
                  child: const Text('Trapesium'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HalamanTabung()
                      ),
                  );
                  },
                  child: const Text('Tabung'),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}