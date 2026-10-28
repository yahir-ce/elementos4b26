import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 2', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 192, 64, 197),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Selecciona un icono',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                icono(Icons.home, const Color.fromARGB(255, 152, 120, 207)),
                const SizedBox(width: 20),
                icono(Icons.favorite, const Color.fromARGB(255, 239, 118, 167)),
                const SizedBox(width: 20),
                icono(Icons.settings, const Color.fromARGB(255, 176, 104, 152)),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(12),
        child: Align(
          alignment: Alignment.centerLeft,
          heightFactor: 1,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('App en creación', style: TextStyle(fontSize: 20)),
              SizedBox(width: 8),
              Icon(
                Icons.sentiment_satisfied_alt,
                color: Colors.orange,
                size: 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget icono(IconData icon, Color color) {
  return IconButton(
    onPressed: () {},
    icon: Icon(icon),
    iconSize: 50,
    color: color,
  );
}
