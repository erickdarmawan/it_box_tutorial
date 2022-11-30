import 'package:flutter/material.dart';

import 'pertanyaan.dart';
import 'jawaban.dart';

class Quiz extends StatelessWidget {
  Function jawaban;
  List<Map<String, Object>> pertanyaan;
  int soalIndex;
  Quiz(
      {required this.jawaban,
      required this.pertanyaan,
      required this.soalIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Pertanyaan(pertanyaan[soalIndex]['Pertanyaan']),
      ...(pertanyaan[soalIndex]['Jawaban'] as List<Map<String, Object>>)
          .map((jawabanText) {
        return Jawaban(
            () => jawaban(jawabanText['skor']), jawabanText['teks'].toString());
      }).toList()
    ]);
  }
}
