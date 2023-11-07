import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget titleSection = Container(
    padding: const EdgeInsets.all(2.5),
    child: Row(
      children: [
        Expanded(
          /* soal 1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* soal 2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Wisata Alam di Sumatera Utara',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'Sumatera Utara, Indonesia',
                style: TextStyle(color: Color.fromARGB(208, 150, 150, 150)),
              ),
            ],
          ),
        ),
        /* soal 3*/
        const Icon(
        Icons.star_border_purple500,
          color: Color.fromARGB(255, 255, 0, 0),
        ),
        const Text('41'),
      ],
    ),
  );

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Danau Toba adalah sebuah danau tekto-vulkanik dengan '
        'ukuran panjang 100 kilometer dan lebar 30 kilometer '
        'yang terletak di Provinsi Sumatera Utara, '
        'Indonesia. Danau ini merupakan danau terbesar '
        'di Indonesia dan Asia Tenggara. ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Roziq Mahbubi | 214172086',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo : Roziq Mahbubi | 2141720086'),
        ),
        body: ListView(
          children: [
            Image.asset(
              // hapus nama directory file, menyebabkan error
              "toba.jpg",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
