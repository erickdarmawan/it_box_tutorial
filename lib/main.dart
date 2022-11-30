import 'package:flutter/material.dart';
import 'package:it_box_tutorial/quiz.dart';

import 'hasil.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _soalIndex = 0;
  var totalSkor = 0;

  var pertanyaan = [
    {
      'Pertanyaan': 'Tempat - tempat favorit apa yang sering anda kunjungi?',
      'Jawaban': [
        {'teks': 'Pegunungan', 'skor': 10},
        {'teks': 'Pantai', 'skor': 9},
        {'teks': 'Mall', 'skor': 7},
        {'teks': 'Restoran', 'skor': 1},
      ],
    },
    {
      'Pertanyaan': 'Apa favorit hobi anda?',
      'Jawaban': [
        {'teks': 'Main video game', 'skor': 10},
        {'teks': 'Main ngoding', 'skor': 8},
        {'teks': 'Main komputer', 'skor': 9},
        {'teks': 'Jalan - jalan', 'skor': 10},
      ],
    },
    {
      'Pertanyaan': 'Apa pekerjaan anda?',
      'Jawaban': [
        {'teks': 'IT Engineer', 'skor': 8},
        {'teks': 'Mobile Developer', 'skor': 9},
        {'teks': 'Pemasak', 'skor': 8},
        {'teks': 'Grafik Designer', 'skor': 9},
      ],
    },
  ];

  void resetQuiz() {
    setState(() {
      _soalIndex = 0;
      totalSkor = 0;
    });
  }

  void _jawaban(int skor) {
    totalSkor = totalSkor + skor;
    setState(() {
      _soalIndex += 1;
    });
    if (_soalIndex < pertanyaan.length) {
      print('masih ada soal berikutnya');
    } else {
      print('sudah tidak anda soal');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Applikasi Kuis'),
            ),
            body: _soalIndex < pertanyaan.length
                ? Quiz(
                    jawaban: _jawaban,
                    pertanyaan: pertanyaan,
                    soalIndex: _soalIndex)
                : Hasil(totalSkor, resetQuiz)));
  }
}
