import 'package:flutter/material.dart';

class Sayfa1 extends StatelessWidget {
  const Sayfa1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          "Sayfa 1",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
