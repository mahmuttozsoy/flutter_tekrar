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
        children: [
          //container görsel nesneler oluşturmak için kullanılır, boyut ve renk verebiliriz
          //container içine child widget ekleyebiliriz
          Container(
            margin: const EdgeInsets.all(
              20,
            ), //containerın etrafında boşluk oluşturabilirz

            width: 400,
            height: 400,
            color: Colors.red,
            child: Text("Data"), //içerisne text ekleyebiliriz
            //container özelleştirebiliriz
            decoration: BoxDecoration(
              color: Colors.red, //arka plan rengi
              border: Border.all(
                color: Colors.black, //çerçeve renk
                width: 5,
              ), //çerçeve kalınlığı
              borderRadius: BorderRadius.circular(
                20,
              ), //container köşelerini yuvarlar
            ),
          ),
        ],
      ),
    );
  }
}
