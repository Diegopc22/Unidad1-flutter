import 'package:flutter/material.dart'; // Importa las herramientas de Flutter.

class Inicio extends StatefulWidget { // Crea el widget Inicio.
  @override // Sobrescribe el método original.
  State<StatefulWidget> createState() { // Crea el estado del widget.
    return Disenio(); // Retorna el diseño de la pantalla.
  }
}

class Disenio extends State<Inicio>{ // Define el diseño de Inicio.
  @override // Sobrescribe el método build.
  Widget build(BuildContext context) { // Construye la interfaz.
    return Scaffold( // Estructura principal de la pantalla.

    appBar: AppBar( // Crea la barra superior.
      title: Text('Practica 1', // Muestra el título.
      style: TextStyle( // Define el estilo del texto.
          color: Colors.white, // Cambia el texto a blanco.
      ),
      ),
      backgroundColor: const Color.fromARGB(255, 10, 70, 174), // Color de la barra.

    ),
    body: Column( // Crea una columna de elementos.
      mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos.
      children: [ // Contiene los elementos de la columna.

        Text('Hola mundo', // Muestra "Hola mundo".
        style: TextStyle( // Define su estilo.
          color:Colors.deepPurpleAccent, // Cambia el color.
          fontSize: 25, // Define el tamaño.
          )
        ),

        Text('Hola', // Muestra "Hola".
        style: TextStyle( // Define su estilo.
          color:Colors.deepPurpleAccent, // Cambia el color.
          fontSize: 25, // Define el tamaño.
          )
        ),
      ],
    ),
    );
  }
}
