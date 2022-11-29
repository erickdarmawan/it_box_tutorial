import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  void Function() handlePilih;
  String jawabanText;

  Jawaban(this.handlePilih, this.jawabanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: handlePilih,
        child: Text(jawabanText),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
