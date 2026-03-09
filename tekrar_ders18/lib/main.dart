import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KAAN Uçak Bilgileri',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'KAAN Savaş Uçağı'),
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
  final List<Section> sections = [
    Section(
      title: 'Genel Bakış',
      content: '''
KAAN (Kısa Adı: "Kaan"), Türk Havacılık ve Uzay Sanayii (TUSAŞ) tarafından geliştirilen modern
çok rollü savaş uçağı projesidir. Hedef, Türk Hava Kuvvetleri için gelişmiş avcı-bombardıman uçağı
sağlamaktır.
      ''',
    ),
    Section(
      title: 'Teknik Özellikler',
      content: '''
- Gövde tipi: Tek motorlu, düşük görünürlüklü muharebe uçağı
- Uzunluk: ~15 m
- Kanat açıklığı: ~10 m
- Azami hız: Mach 2+ (yaklaşık 2.400 km/s)
- Menzil: 3.500+ km
- Silah kapasitesi: 6+ ton bomba/füze
- Motor: YF120 türbin (örnek)
      ''',
    ),
    Section(
      title: 'Geliştirme ve Tarihçe',
      content: '''
KAAN programı 2020'lerin başında başlatıldı. Amaç, yerli tasarım ve üretimle bağımsız bir
hava aracı elde etmekti. Prototiplerin ilk uçuşları 2025 civarında planlanıyor.
      ''',
    ),
    Section(
      title: 'Özellikler ve Yetenekler',
      content: '''
- Stealth (düşük radar izi) özellikleri
- Gelişmiş aviyonik ve elektronik harp sistemleri
- Çok rollü kullanım: hava üstünlüğü, bombardıman, keşif
- Ağ merkezli muharebe entegrasyonu
      ''',
    ),
    Section(
      title: 'Galeri',
      content: '', // gallery handled specially
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: sections.length,
        itemBuilder: (context, index) {
          final section = sections[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(section.title),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SectionPage(section: section),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class Section {
  final String title;
  final String content;

  Section({required this.title, required this.content});
}

class SectionPage extends StatelessWidget {
  final Section section;

  const SectionPage({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    Widget bodyContent;
    if (section.title == 'Galeri') {
      final images = [
        'https://via.placeholder.com/400x200.png?text=KAAN+1',
        'https://via.placeholder.com/400x200.png?text=KAAN+2',
        'https://via.placeholder.com/400x200.png?text=KAAN+3',
      ];
      bodyContent = GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) => Image.network(images[index]),
      );
    } else {
      bodyContent = Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(section.content, style: const TextStyle(fontSize: 16)),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(section.title)),
      body: bodyContent,
    );
  }
}
