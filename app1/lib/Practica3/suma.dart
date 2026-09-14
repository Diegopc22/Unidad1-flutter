import 'package:flutter/material.dart'; // Importa las herramientas de Flutter.

class Suma extends StatefulWidget{ // Crea el widget Sumass.
  @override // Sobrescribe el método.
  State<StatefulWidget> createState(){ // Crea el estado del widget.
    return Disenio(); // Retorna el diseño.
  }
}

class Disenio extends State<Suma>{ // Define el estado de Sumass.
  final TextEditingController n1 = TextEditingController(); // Controla el primer número.
  final TextEditingController n2 = TextEditingController(); // Controla el segundo número.
  String r = ""; // Guarda el resultado.
  @override // Sobrescribe el método build.
  Widget build(BuildContext context){ // Construye la interfaz.
    return Scaffold( // Crea la estructura principal.
      appBar: AppBar( // Crea la barra superior.
        title: Text('Suma de dos numeros'), // Muestra el título.
        backgroundColor: const Color.fromARGB(255, 192, 214, 240), // Define el color.
        elevation: 10, // Agrega profundidad.
        shadowColor: Colors.indigoAccent, // Define el color de la sombra.
      ),
      body: Center( // Centra el contenido.
        child: Card( // Crea una tarjeta.
          shape: RoundedRectangleBorder( // Define la forma.
            borderRadius: BorderRadius.circular(5), // Redondea las esquinas.
          ),
          elevation: 10, // Agrega sombra.
          shadowColor: Colors.white, // Define el color de la sombra.
          child: Padding( // Agrega espacio interno.
            padding: const EdgeInsets.all(20), // Establece 20 de espacio.
            child: Column( // Organiza los elementos verticalmente.
              mainAxisSize: MainAxisSize.min, // Usa solo el espacio necesario.
              children: [ // Contiene los elementos.
                Text('Ingresa los datos aqui', // Muestra el encabezado.
                  style: TextStyle( // Define el estilo.
                    fontSize: 24, // Define el tamaño.
                    fontWeight: FontWeight.bold, // Pone el texto en negrita.
                    color: Colors.indigo, // Define el color.
                  ),
                ),
                SizedBox(height: 15), // Agrega espacio vertical.
                TextField( // Crea el primer campo.
                  controller: n1, // Guarda el número en n1.
                  decoration: InputDecoration( // Configura el campo.
                    labelText: 'Escribe un numero', // Muestra la etiqueta.
                    border: OutlineInputBorder(), // Agrega un borde.
                    prefixIcon: Icon(Icons.amp_stories), // Agrega un icono.
                  ),
                ),
                SizedBox(height: 15), // Agrega espacio vertical.
                TextField( // Crea el segundo campo.
                  controller: n2, // Guarda el número en n2.
                  decoration: InputDecoration( // Configura el campo.
                    labelText: 'Escribe otro numeor', // Muestra la etiqueta.
                    border: OutlineInputBorder(), // Agrega un borde.
                    prefixIcon: Icon(Icons.amp_stories), // Agrega un icono.
                  ),
                ),
                SizedBox(height: 20), // Agrega espacio vertical.
                Text(r, // Muestra el resultado.
                  style: TextStyle( // Define el estilo.
                    fontSize: 24, // Define el tamaño.
                    fontWeight: FontWeight.bold, // Pone el texto en negrita.
                    color: Colors.indigo, // Define el color.
                  ),
                ),
                SizedBox(height: 20), // Agrega espacio vertical.
                SizedBox( // Controla el tamaño del botón.
                  width: double.infinity, // Ocupa todo el ancho.
                  child: ElevatedButton.icon( // Crea un botón con icono.
                    icon: Icon(Icons.summarize), // Agrega un icono.
                    onPressed: (){ // Ejecuta código al presionar.
                      final int a = int.tryParse(n1.text) ?? 0; // Convierte el primer número.
                      final int b = int.tryParse(n2.text) ?? 0; // Convierte el segundo número.
                      setState(() { // Actualiza la pantalla.
                        r = "${a+b}"; // Realiza la suma.
                      });
                    },
                    label: Text('Sumar', // Texto del botón.
                      style: TextStyle( // Define el estilo.
                        fontSize: 24, // Define el tamaño.
                        fontWeight: FontWeight.bold, // Pone el texto en negrita.
                        color: Colors.indigo // Define el color.
                      ),
                    )
                  ),
                ),
                SizedBox(height: 20), // Agrega espacio.
              ],
            )
          ),
        ),
      ),
    );
  }
}