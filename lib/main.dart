import 'package:flutter/material.dart';
import 'pertanyaan.dart';
import 'jawaban.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _soalIndex = 0;
  var pertanyaan = [
    {
      'Pertanyaan': 'Tempat - tempat favorit apa yang sering anda kunjungi?',
      'Jawaban': [
        'Mall Taman Anggrek',
        'Taman Mini Indonesia Indah',
        'Mall Pondok Indah',
        'Pantai Indah Kapuk'
      ],
    },
    {
      'Pertanyaan': 'Apa favorit hobi anda?',
      'Jawaban': [
        'Main komputer',
        'Masak',
        'Jalan - jalan',
      ],
    },
    {
      'Pertanyaan': 'Apa pekerjaan anda?',
      'Jawaban': [
        'IT Engineer',
        'Mobile Developer',
      ],
    },
  ];

  void _jawaban() {
    setState(() {
      _soalIndex += 1;
    });
    print(_soalIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Applikasi Kuis'),
        ),
        body: Column(children: [
          Pertanyaan(pertanyaan[_soalIndex]['Pertanyaan']),
          ...(pertanyaan[_soalIndex]['Jawaban'] as List<String>)
              .map((jawabanText) {
            return Jawaban(_jawaban, jawabanText);
          }).toList(),
        ]),
      ),
    );
  }
}
