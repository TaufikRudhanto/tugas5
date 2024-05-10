import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hallo Dunia'),
          backgroundColor: Color(0xFF57A7D5),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TeksUtama(teks1: 'WAHYU TRI SUKO YUWONO', teks2: 'NIM: STI202102175'),
            TeksUtama(teks1: 'ESTA PURWANTI', teks2: 'NIM: STI202102181'),
            TeksUtama(
              teks1: 'TAUFIK RUDHANTO',
              teks2: 'NIM: STI202102183',
              backgroundColor: Color.fromARGB(255, 92, 238, 241),
            ),
            TeksUtama(teks1: 'MARENTINO', teks2: 'NIM: STI202102203'),
            TeksUtama(teks1: 'RIZQI MOHAMMAD SAPUTRA', teks2: 'NIM: STI202102206'),
          ],
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final Color? backgroundColor;

  TeksUtama({
    required this.teks1,
    required this.teks2,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            teks1,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 9, 9, 9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0), // Atur padding di bagian bawah
            child: Text(
              teks2,
              style: TextStyle(
                color: const Color.fromARGB(255, 9, 9, 9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
