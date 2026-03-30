import 'package:flutter/material.dart';

class Sayfa2 extends StatelessWidget {
  const Sayfa2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          "Sayfa 2",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
