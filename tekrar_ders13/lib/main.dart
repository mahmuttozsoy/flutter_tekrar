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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            //flex özelliği ile spacerların birbirlerine göre ne kadar boşluk bırakacaklarını belirleyebiliriz
            //flex kullanmazsak tüm spacerlar eşit boşluk bırakır
            Container(height: 200, width: 200, color: Colors.green),
            Spacer(flex: 30),
            Container(height: 200, width: 200, color: Colors.red),
            Spacer(flex: 70),
            Container(height: 200, width: 200, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
