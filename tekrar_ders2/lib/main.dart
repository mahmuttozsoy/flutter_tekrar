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
      home: const MyHomePage(title: 'Flutter tekrar ders 2'),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              width: 200,
              color: Colors.red,
              child: const Center(child: Text("Merhaba")),
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.green,
              child: const Center(child: Text("Flutter")),
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.blue,
              child: const Center(child: Text("Ders 2")),
            ),
            //row widgetlerin yanyana dizilmesini sağlar,varsayılan olarak soldan sağa dizilirler,boyutu içindeki widgetlara göre değişir.
          ],
        ),
      ),
    );
  }
}
