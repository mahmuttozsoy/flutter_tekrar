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
      body: Row(
        //expanded widgeti ile containerın genişliğini ekranın geri kalanına yayabiliriz
        children: [
          // Expanded(
          //   child: Container(
          //     height: 200,
          //     width: 200,
          //     color: Colors.green,
          //     child: Center(child: Text("Expanded Kullanımı")),
          //   ),
          // ),
          // Container(height: 200, width: 200, color: Colors.red),
          Expanded(
            flex: 10,
            child: Container(height: 200, width: 200, color: Colors.green),
          ),
          Expanded(
            flex: 30,
            child: Container(height: 200, width: 200, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
