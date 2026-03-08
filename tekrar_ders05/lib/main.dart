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
      body: Stack(
        children: [
          Container(width: 400, height: 400, color: Colors.red),
          Row(
            children: [
              Container(width: 80, height: 80, color: Colors.green),
              Container(width: 60, height: 60, color: Colors.blue),
              Container(width: 40, height: 40, color: Colors.yellow),
              Column(
                children: [
                  Container(width: 80, height: 80, color: Colors.purple),
                  Container(width: 60, height: 60, color: Colors.orange),
                  Container(width: 40, height: 40, color: Colors.pink),
                ],
              ),
            ],
          ),
        ],
      ),

      //row column ve stack widgetları bir arada kullanılabilir
      //stack widgetların üst üste durmasını sağlar
      //ilk eklenen en altta yer alır
      //varsıyılan başlangıç noktası sol üst köşedir
    );
  }
}
