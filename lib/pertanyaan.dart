import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  // const Pertanyaan({super.key});
  var pertanyaan;
  Pertanyaan(this.pertanyaan);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        pertanyaan,
        style: const TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
