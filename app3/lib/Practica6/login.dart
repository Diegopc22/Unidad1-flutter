import 'package:app3/Practica6/acceso.dart'; // Importa la pantalla de acceso.
import 'package:flutter/material.dart'; // Importa las herramientas de Flutter.

class Practica6 extends StatefulWidget { // Crea la pantalla del login.
  @override // Sobrescribe createState.
  State<StatefulWidget> createState() { // Crea el estado.
    return login(); // Regresa la clase login.
  }
}

class login extends State<Practica6> { // Controla el estado del login.
  TextEditingController usuario = new TextEditingController(); // Controla el usuario.
  TextEditingController password = new TextEditingController(); // Controla la contraseña.
  void Validar() { // Método para validar los datos.
    String u = usuario.text; // Obtiene el usuario escrito.
    String p = password.text; // Obtiene la contraseña escrita.
    setState(() { // Actualiza la pantalla.
      if (u == "admin" && p == "12345") { // Comprueba usuario y contraseña.
        Navigator.pushReplacement( // Cambia de pantalla sin regresar.
          context, // Obtiene el contexto actual.
          MaterialPageRoute( // Crea una nueva ruta.
            builder: (context) => Acceso(dato: u, datop: p), // Abre Acceso y manda los datos.
          ),
        );
      } else { // Si los datos son incorrectos.
        Alertas("Error", "Datos Incorrectos"); // Muestra mensaje de error.
        password.clear(); // Limpia la contraseña.
        usuario.clear(); // Limpia el usuario.
      }
    });
  }

  void Alertas(String title, String mensaje) { // Método para mostrar alertas.
    showDialog( // Abre una ventana de diálogo.
      context: context, // Obtiene el contexto actual.
      builder: (context) { // Construye la alerta.
        return AlertDialog( // Crea la ventana de alerta.
          title: Text(title), // Muestra el título.
          content: Text(mensaje), // Muestra el mensaje.
          actions: [ // Contiene los botones.
            TextButton( // Crea un botón de texto.
              onPressed: () { // Acción al presionar.
                Navigator.of(context).pop(); // Cierra la alerta.
              },
              child: Text('Aceptar'), // Texto del botón.
            ),
          ],
        );
      },
    );
  }
  @override // Sobrescribe build.
  Widget build(BuildContext context) { // Construye la pantalla.
    return Scaffold( // Estructura principal.
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
                  Text('Ingresa los datos', // Muestra el título.
                    style: TextStyle( // Define el estilo.
                      fontSize: 18, // Tamaño de letra.
                      color: Colors.blue, // Color del texto.
                    ),
                  ),
                  Container( // Crea un contenedor para la imagen.
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
                  Container( // Contenedor del usuario.
                    width: double.infinity, // Ocupa todo el ancho.
                    child: TextField( // Campo para escribir.
                      controller: usuario, // Conecta con usuario.
                      decoration: InputDecoration( // Personaliza el campo.
                        labelText: 'Escribe el Usuario', // Texto de etiqueta.
                        hintText: 'Ingresa el Usuario', // Texto de ayuda.
                        border: OutlineInputBorder(), // Agrega borde.
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Agrega espacio.
                  Container( // Contenedor de contraseña.
                    width: double.infinity, // Ocupa todo el ancho.
                    child: TextField( // Campo para escribir.
                      controller: password, // Conecta con password.
                      decoration: InputDecoration( // Personaliza el campo.
                        labelText: 'Escribe el Password', // Texto de etiqueta.
                        hintText: 'Ingresa el Password', // Texto de ayuda.
                        border: OutlineInputBorder( // Agrega borde.
                          borderRadius: BorderRadius.circular(5), // Redondea el borde.
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Agrega espacio.
                  Container( // Contenedor del botón.
                    width: double.infinity, // Ocupa todo el ancho.
                    child: ElevatedButton.icon( // Crea un botón.
                      onPressed: Validar, // Ejecuta Validar al presionar.
                      label: Text( // Texto del botón.
                        'Aceptar', // Nombre del botón.
                        style: TextStyle( // Define el estilo.
                          fontSize: 18, // Tamaño de letra.
                          color: Colors.blue, // Color del texto.
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}