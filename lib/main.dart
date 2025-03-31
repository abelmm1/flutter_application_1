import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LDSW - Widgets Demo',
      home: WidgetsDemo(),
    );
  }
}

class WidgetsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demostración de Widgets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Widget Text
            Text(
              '¡Bienvenido a mi primera aplicación móvil!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Widget Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Elemento 1'),
                Text('Elemento 2'),
                Text('Elemento 3'),
              ],
            ),
            SizedBox(height: 20),

            // Widget Column (anidado en el Column principal)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Subtítulo de la sección:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text('Este es el detalle o descripción de la sección.'),
              ],
            ),
            SizedBox(height: 20),

            // Widget Stack
            Container(
              height: 150,
              width: double.infinity,
              child: Stack(
                children: [
                  // Fondo del Stack
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.blue[100],
                  ),
                  // Widget posicionado encima
                  Positioned(
                    top: 50,
                    left: 50,
                    child: Container(
                      width: 100,
                      height: 50,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Stack',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Widget Container con decoración
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green[100],
                border: Border.all(color: Colors.green, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Este es un Container decorado',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
