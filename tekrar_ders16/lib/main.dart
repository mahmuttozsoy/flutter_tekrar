import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaviKutu(),
            SizedBox(height: 20),
            Yazi(icerik: "Flutter Dersleri", yaziBoyutu: 24),
          ],
        ),
      ),
    );
  }
}

class MaviKutu extends StatelessWidget {
  const MaviKutu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 100, width: 100, color: Colors.blue);
  }
}

class Yazi extends StatelessWidget {
  final String icerik;
  final double yaziBoyutu;
  const Yazi({super.key, required this.icerik, required this.yaziBoyutu});

  @override
  Widget build(BuildContext context) {
    return Text(icerik, style: TextStyle(fontSize: yaziBoyutu));
  }
}
