import 'package:flutter/material.dart'; // Importa las herramientas de Flutter.

class Acceso extends StatefulWidget { // Crea la pantalla de acceso.
  final String dato; // Guarda el usuario recibido.
  final String datop; // Guarda el password recibido.
  const Acceso({super.key, required this.dato, required this.datop}); // Recibe los datos obligatorios.
  @override // Sobrescribe createState.
  State<StatefulWidget> createState() { // Crea el estado.
    return Clase(); // Regresa la clase Clase.
  }
}

class Clase extends State<Acceso> { // Controla el estado de Acceso.
  String d = "", p = ""; // Variables para usuario y password.
  @override // Sobrescribe initState.
  void initState() { // Inicializa los datos.
    super.initState(); // Ejecuta la inicialización original.
    d = widget.dato; // Guarda el usuario recibido.
    p = widget.datop; // Guarda el dato recibido.
  }
  @override // Sobrescribe build.
  Widget build(BuildContext context) { // Construye la pantalla.
    return Scaffold( // Crea la estructura principal.
      backgroundColor: const Color.fromARGB(255, 180, 172, 172), // Define el fondo.
      appBar: AppBar( // Crea la barra superior.
        title: Text('Login'), // Coloca el título.
        backgroundColor: const Color.fromARGB(255, 197, 236, 236), // Define el color.
      ),
      body: Center( // Centra el contenido.
        child: Padding( // Agrega espacio alrededor.
          padding: EdgeInsets.all(15), // Define 15 de espacio.
          child: Card( // Crea una tarjeta.
            elevation: 8, // Agrega sombra.
            shadowColor: Colors.black, // Define el color de la sombra.
            shape: RoundedRectangleBorder( // Define la forma.
              borderRadius: BorderRadius.circular(15), // Redondea las esquinas.
            ),
            child: Padding( // Agrega espacio interno.
              padding: const EdgeInsets.all(8.0), // Define el espacio.
              child: Column( // Coloca elementos verticalmente.
                mainAxisSize: MainAxisSize.min, // Usa solo el espacio necesario.
                children: [
                  Text('Ingresa los datos', // Muestra un texto.
                    style: TextStyle( // Define el estilo.
                      fontSize: 18, // Tamaño de letra.
                      color: Colors.blue, // Color del texto.
                    ),
                  ),
                  Container( // Crea el espacio para la imagen.
                    width: 120, // Define el ancho.
                    height: 120, // Define la altura.
                    decoration: BoxDecoration( // Personaliza el contenedor.
                      shape: BoxShape.circle, // Hace el contenedor circular.
                      color: Colors.white, // Define el fondo.
                    ),
                    child: ClipOval( // Recorta la imagen en círculo.
                      child: Image.asset('assets/img2.jpg'), // Muestra la imagen.
                    ),
                  ),
                  SizedBox(height: 10), // Agrega espacio.
                  Text("Bienvenidos $d \n y su password es $p"), // Muestra los datos recibidos.
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


