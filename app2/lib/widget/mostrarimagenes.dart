import 'package:flutter/material.dart'; // Importa las herramientas de Flutter.

class Mostrarimagenes extends StatefulWidget { // Crea el widget para mostrar imágenes.
  const Mostrarimagenes({super.key}); // Constructor del widget.
  @override // Sobrescribe createState.
  State<Mostrarimagenes> createState() { // Crea el estado del widget.
    return Imagenes(); // Regresa la clase Imagenes.
  }
}

class Imagenes extends State<Mostrarimagenes> { // Controla el estado de la pantalla.
  @override // Sobrescribe el método build.
  Widget build(BuildContext context) { // Construye la interfaz.
    return Scaffold( // Crea la estructura principal.
      backgroundColor: Colors.blue, // Coloca el fondo azul.
      appBar: AppBar( // Crea la barra superior.
        title: Text( // Muestra el título.
          'Imagenes', // Texto del título.
          style: TextStyle( // Define el estilo.
            color: Colors.white, // Cambia el texto a blanco.
          ),
        ),
        backgroundColor: Colors.blueAccent, // Define el color de la barra.
      ),
      body: Column( // Coloca los elementos verticalmente.
        children: [
          Expanded( // Ocupa la mitad del espacio disponible.
            child: Container( // Crea un contenedor.
              width: double.infinity, // Ocupa todo el ancho.
              height: double.infinity, // Ocupa todo el alto disponible.
              child: Center( // Centra el contenido.
                child: SingleChildScrollView( // Permite desplazarse si hay muchas imágenes.
                  child: Column( // Coloca las imágenes verticalmente.
                    children: [
                      Image.asset( // Carga una imagen desde assets.
                        "assets/img1.jpg", // Ruta de la primera imagen.
                      ),
                      Image.asset( // Carga otra imagen.
                        "assets/img2.jpg", // Ruta de la segunda imagen.
                      ),
                      Image.asset( // Carga otra imagen.
                        "assets/img3.jpg", // Ruta de la tercera imagen.
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded( // Ocupa la otra mitad del espacio.
            child: Container( // Crea otro contenedor.
              width: double.infinity, // Ocupa todo el ancho.
              height: double.infinity, // Ocupa todo el alto disponible.
              child: Center( // Centra el contenido.
                child: SingleChildScrollView( // Permite desplazarse.
                  child: Column( // Coloca las imágenes verticalmente.
                    children: [
                      Image.asset( // Carga la primera imagen.
                        "assets/img1.jpg", // Ruta de la imagen.
                        width: 100, // Define el ancho.
                        height: 100, // Define el alto.
                      ),
                      Image.asset( // Carga la segunda imagen.
                        "assets/img2.jpg", // Ruta de la imagen.
                        width: 100, // Define el ancho.
                        height: 100, // Define el alto.
                      ),
                      Image.asset( // Carga la tercera imagen.
                        "assets/img3.jpg", // Ruta de la imagen.
                        width: 100, // Define el ancho.
                        height: 100, // Define el alto.
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}