import 'package:flutter/material.dart';

class HalamanDetailProfile extends StatelessWidget {
  const HalamanDetailProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Profile'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/images/profile.png',
            height: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Hammam Fariz Raharjo',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'NIM : 123200062',
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Kelas : IF - B',
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Tempat, Tanggal Lahir : Semarang, 31 Desember 2001',
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Cita - cita : Menjadi seorang programmer yang handal',
          ),
        ],
      ),
    );
  }
}
