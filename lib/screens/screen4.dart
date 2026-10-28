import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const new({super.key});

  final cosas = const [
    'arbol',
    'mar',
    'ciudad',
    'Carros',
    'Bicitleta',
    'Personas',
  ];

  final cats = const ['Carlos', 'Fausto', 'Axel', 'Israel', 'Max', 'Jorge'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 3', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 49, 1, 51),
      ),
      body: ListView(
        children: [
          ...cosas.map(
            (cosas) => ListTile(
              leading: const Icon(Icons.pets),
              title: Text(cosas),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              tileColor: Colors.blue,
              textColor: Colors.white,
            ),
          ),
          Divider(),
          ...cats.map(
            (cats) => ListTile(
              leading: const Icon(Icons.pets),
              title: Text(cats),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              tileColor: Colors.deepPurple,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
