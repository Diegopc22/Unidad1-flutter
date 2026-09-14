import 'package:flutter/material.dart'; // Importa las herramientas de Flutter.

class Practica2 extends StatefulWidget { // Crea el widget Practica2.
  @override // Sobrescribe el método createState.
  State<StatefulWidget> createState() { // Crea el estado del widget.
    return Disenio(); // Regresa la clase Disenio.
  }
}
class Disenio extends State<Practica2>{ // Controla el estado de Practica2.
  @override // Sobrescribe el método build.
  Widget build(BuildContext context) { // Construye la interfaz.
    return Scaffold( // Crea la estructura principal.
      appBar: AppBar( // Crea la barra superior.
        title: Text('Practica 2', // Coloca el título.
          style: TextStyle( // Define el estilo del título.
            color: Colors.white, // Cambia el texto a blanco.
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 10, 70, 174), // Define el color de la barra.
      ),
      // Contenedores
      body: Column( // Coloca los elementos verticalmente.
        mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos verticalmente.
        children: [ // Contiene los elementos de la pantalla.
          Container( // Crea un contenedor.
            color: Colors.black, // Coloca fondo negro.
            width: double.infinity, // Ocupa todo el ancho.
            child: Text('Hola mundo', // Muestra el texto.
              textAlign: TextAlign.center, // Centra el texto.
              style: TextStyle( // Define el estilo.
                color: Colors.white, // Cambia el texto a blanco.
                fontFamily: 'Times New Roman', // Define la fuente.
                fontSize: 24, // Define el tamaño del texto.
              )
            ),
          ),
          SizedBox( // Crea un espacio.
            height: 10), // Define 10 de espacio.
          Container( // Crea otro contenedor.
            padding: EdgeInsets.all(25), // Agrega 25 de espacio interno.
            color: const Color.fromARGB(255, 248, 3, 3), // Coloca fondo rojo.
            width: double.infinity, // Ocupa todo el ancho.
            child: Text('Hola', // Muestra el texto.
              textAlign: TextAlign.center, // Centra el texto.
              style: TextStyle( // Define el estilo.
                color: Colors.white, // Cambia el texto a blanco.
                fontFamily: 'Times New Roman', // Define la fuente.
                fontSize: 24, // Define el tamaño del texto.
              )
            ),
          ),
          SizedBox( // Crea un espacio.
            height: 10), // Define 10 de espacio.
          Container( // Crea un contenedor para el botón.
            width: double.infinity, // Ocupa todo el ancho.
            child: ElevatedButton( // Crea un botón.
              onPressed: () {}, // Acción que se ejecuta al presionar.
              child: Text('Boton'), // Texto del botón.
            ),
          ),
          SizedBox( // Crea un espacio.
            height: 10), // Define 10 de espacio.
          TextField( // Crea un campo para escribir.
            decoration: InputDecoration( // Personaliza el campo.
              labelText: 'Escribe el nombre', // Texto que indica qué escribir.
              border: OutlineInputBorder(), // Agrega un borde.
            ),
          ),
        ],
      ),
    );
  }
}