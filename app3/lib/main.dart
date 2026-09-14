import 'package:app3/Practica6/login.dart'; // Importa la pantalla de login.
import 'package:flutter/material.dart'; // Importa las herramientas de Flutter.

void main() { // Punto de inicio de la aplicación.
  runApp(const MyApp()); // Ejecuta la aplicación.
}

class MyApp extends StatelessWidget { // Crea el widget principal.
  const MyApp({super.key}); // Constructor del widget.

  @override // Sobrescribe el método build.
  Widget build(BuildContext context) { // Construye la aplicación.
    return MaterialApp( // Configura la aplicación.
      home: Practica6(), // Muestra Practica6 como pantalla principal.
    );
  }
}