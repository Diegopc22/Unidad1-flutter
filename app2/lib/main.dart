import 'package:app2/widget/mostrarimagenes.dart'; // Importa la pantalla de imágenes.
import 'package:flutter/material.dart'; // Importa las herramientas de Flutter.

void main() { // Punto de inicio de la aplicación.
  runApp(const MyApp()); // Ejecuta la aplicación.
}

class MyApp extends StatelessWidget { // Crea el widget principal.
  const MyApp({super.key}); // Constructor del widget.
  @override // Sobrescribe el método build.
  Widget build(BuildContext context) { // Construye la aplicación.
    return MaterialApp( // Configura la aplicación.
      home: Mostrarimagenes() // Muestra Mostrarimagenes como pantalla principal.
    );
  }
}