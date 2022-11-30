import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  int totalSkor;
  Function() resetQuiz;
  Hasil(this.totalSkor, this.resetQuiz);
  //GETTER
  String get hasilText {
    String hasil = 'Anda Berhasil';
    if (totalSkor <= 30) {
      hasil = 'Anda hebat sekali';
    } else if (totalSkor <= 40) {
      hasil = 'Anda sedikit jahat';
    } else if (totalSkor <= 45) {
      hasil = 'Anda aneh sekali';
    } else {
      hasil = 'Anda jahat sekali';
    }
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            hasilText,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetQuiz,
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            child: const Text(
              'Tekan tombol ini untuk memulai quiz lagi',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
