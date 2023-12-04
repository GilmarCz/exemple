import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(color: Colors.white), // Cor dos ícones
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> items = [
    Item(
      id: 0,
      title: 'Item #0',
      subtitle: 'Subtitle 0',
    ),
    Item(
      id: 1,
      title: 'Item #1',
      subtitle: 'Subtitle 1',
    ),
    Item(
      id: 2,
      title: 'Item #2',
      subtitle: 'Subtitle 2',
    ),
    Item(
      id: 3,
      title: 'Item #3',
      subtitle: 'Subtitle 3',
    ),
    Item(
      id: 4,
      title: 'Item #4',
      subtitle: 'Subtitle 4',
    ),
    Item(
      id: 5,
      title: 'Item #5',
      subtitle: 'Subtitle 5',
    ),
    Item(
      id: 6,
      title: 'Item #6',
      subtitle: 'Subtitle 6',
    ),
    Item(
      id: 7,
      title: 'Item #7',
      subtitle: 'Subtitle 7',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example', style: TextStyle(color: Colors.white)), // Cor do texto
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_upward),
            onPressed: () {
              // Adicione a lógica para rolar para cima aqui
              // Por exemplo, você pode usar um controlador de rolagem.
            },
          ),
          IconButton(
            icon: const Icon(Icons.arrow_downward),
            onPressed: () {
              // Adicione a lógica para rolar para baixo aqui
              // Por exemplo, você pode usar um controlador de rolagem.
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].title),
            subtitle: Text(items[index].subtitle),
            trailing: const Icon(Icons.arrow_forward),
          );
        },
      ),
    );
  }
}

class Item {
  final int id;
  final String title;
  final String subtitle;

  Item({
    required this.id,
    required this.title,
    required this.subtitle,
  });
}
