// Importa las clases necesarias.
//import 'package:aplicacion1/Practica4/practica_4.dart';
//import 'package:aplicacion1/operaciones/suma.dart';
//import 'package:aplicacion1/Practica1/inicio.dart';
import 'package:aplicacion1/Practica2/practica2.dart';
import 'package:flutter/material.dart';

// Punto de inicio de la aplicación.
void main() {
  runApp(const MyApp());
}

// Widget principal de la aplicación.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Construye la interfaz principal.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Pantalla inicial.
      home: Practica2(),
    );
  }
}