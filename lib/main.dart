import 'package:flutter/material.dart';

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  TeksUtama({super.key});

  @override
  State<StatefulWidget> createState() => state;
}

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Taufik Rudhanto',
    'Ayu Setiyowati',
    'Hanif Suranto',
    'Dwiki Lukito',
    'Riski Nur Satria',
  ];
  var listWarna = [
    const Color.fromARGB(255, 180, 176, 176),
    const Color.fromARGB(255, 250, 93, 36),
    const Color.fromARGB(255, 62, 194, 66),
    Color.fromARGB(255, 47, 39, 199),
    const Color.fromARGB(255, 33, 243, 37),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 16.0),
        Text(
          'Apa kabar',
          textDirection: TextDirection.ltr,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          listNama[index % listNama.length],
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: listWarna[index % listWarna.length],
          ),
        ),
      ],
    );
  }

  void incrementIndex() {
    setState(() {
      index++;
    });
  }
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  runApp(MaterialApp(
    title: 'Halo Dunia',
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        title: const Text(
          'Halo Dunia',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(
              255, 62, 65, 67), // Ganti warna latar belakang di sini
        ),
        child: Center(child: teksUtama),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Random',
        onPressed: teksUtama.state.incrementIndex,
        child: const Icon(Icons.refresh),
      ),
    ),
  ));
}
