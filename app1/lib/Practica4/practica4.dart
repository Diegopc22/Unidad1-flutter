  import 'package:flutter/material.dart'; // Importa las herramientas de Flutter.

  class Programa4 extends StatefulWidget{ // Crea el widget Programa4.
    @override // Sobrescribe el método createState.
    State<StatefulWidget> createState(){ // Crea el estado del widget.
      return Clases(); // Regresa la clase Clases.
    }
  }

  class Clases extends State<Programa4>{ // Clase que controla el estado de Programa4.
    final TextEditingController n1 = TextEditingController(); // Controla el primer número.
    final TextEditingController n2 = TextEditingController(); // Controla el segundo número.
    String r = "", oper=""; // Guarda el resultado y la operación seleccionada.
    void Operaciones(){ // Método que realiza la operación.
      final int a = int.tryParse(n1.text) ?? 0; // Convierte el primer texto a entero.
      final int b = int.tryParse(n2.text) ?? 0; // Convierte el segundo texto a entero.
      
      setState(() { // Actualiza la pantalla.
        print("Oper: "+oper); // Muestra la operación en la consola.
        if (oper == "Suma"){ // Comprueba si se eligió suma.
          r = "${a + b}"; // Realiza la suma.
        }
        if (oper == "Resta"){ // Comprueba si se eligió resta.
          r = "${a - b}"; // Realiza la resta.
        }
        if (oper == "Multiplicación"){ // Comprueba si se eligió multiplicación.
          r = "${a * b}"; // Realiza la multiplicación.
        }
        if (oper == "División"){ // Comprueba si se eligió división.
          r = "${a / b}"; // Realiza la división.
        }
        ScaffoldMessenger.of(context).showSnackBar( // Muestra un mensaje.
          SnackBar(content: Text("El resultado:" +r)), // Muestra el resultado.
        );
      });                  
    }
    @override // Sobrescribe el método build.
    Widget build(BuildContext context) { // Construye la interfaz.
      return Scaffold( // Crea la estructura principal.
        backgroundColor: Colors.grey, // Coloca fondo gris.
        appBar: AppBar( // Crea la barra superior.
          title: Text('Suma de dos numeros'), // Coloca el título.
          backgroundColor: const Color.fromARGB(255, 192, 214, 240), // Define el color.
          elevation: 10, // Agrega elevación.
          shadowColor: Colors.indigoAccent, // Define el color de la sombra.
        ),
        body: Center( // Centra el contenido.
          child: Card( // Crea una tarjeta.
            shape: RoundedRectangleBorder( // Define la forma de la tarjeta.
              borderRadius: BorderRadius.circular(5), // Redondea las esquinas.
            ),
            elevation: 15, // Agrega sombra.
            shadowColor: Colors.white, // Define el color de la sombra.
            child: Padding( // Agrega espacio interno.
              padding: EdgeInsets.all(20), // Define 20 de espacio.
              child: Column( // Coloca los elementos verticalmente.
                mainAxisSize: MainAxisSize.min, // Usa solo el espacio necesario.
                children: [
                  Text('Ingresa los datos a sumar', // Muestra un texto.
                    style: TextStyle( // Define el estilo.
                      fontSize: 24, // Tamaño de letra.
                      fontWeight: FontWeight.bold, // Texto en negrita.
                      color: Colors.indigo, // Color del texto.
                    ),
                  ),
                  SizedBox(height: 15), // Agrega espacio.
                  TextField( // Crea el primer campo.
                    controller: n1, // Conecta con n1.
                    decoration: InputDecoration( // Personaliza el campo.
                      labelText: "Escribe un numero", // Texto del campo.
                      border: OutlineInputBorder(), // Agrega borde.
                      prefixIcon: Icon(Icons.amp_stories) // Agrega un icono.
                    ),
                  ),
                  SizedBox(height: 15), // Agrega espacio.
                  TextField( // Crea el segundo campo.
                    controller: n2, // Conecta con n2.
                    decoration: InputDecoration( // Personaliza el campo.
                      labelText: "Escribe otro numero", // Texto del campo.
                      border: OutlineInputBorder(), // Agrega borde.
                      prefixIcon: Icon(Icons.amp_stories) // Agrega un icono.
                    ),
                  ),
                  SizedBox(height: 20), // Agrega espacio.
                  DropdownButtonFormField<String>( // Crea el menú desplegable.
                    decoration: InputDecoration( // Personaliza el menú.
                      labelText: "Elige la operación", // Texto del menú.
                      border: OutlineInputBorder(), // Agrega borde.
                    ),
                    items: [ // Contiene las opciones.
                      DropdownMenuItem(value: 'Suma', child:Text('Suma')), // Opción suma.
                      DropdownMenuItem(value: 'Resta', child:Text('Resta')), // Opción resta.
                      DropdownMenuItem(value: 'Multiplicación', child:Text('Multiplicación')), // Opción multiplicación.
                      DropdownMenuItem(value: 'División', child:Text('División')), // Opción división.
                    ], 
                    onChanged: (value) => oper = value!, // Guarda la operación elegida.
                    validator: (v) => v == null ? "Elige una operacion": null, // Valida la selección.
                  ),
                  SizedBox(height: 20), // Agrega espacio.
                  SizedBox( // Define el tamaño del botón.
                    width: double.infinity, // Ocupa todo el ancho disponible.
                    child: ElevatedButton.icon( // Crea un botón con icono.
                      icon: Icon(Icons.summarize), // Agrega el icono.
                      onPressed: Operaciones, // Ejecuta Operaciones al presionar.
                      label:Text('Realizar operación', // Texto del botón.
                        style: TextStyle( // Define el estilo.
                          fontSize: 24, // Tamaño de letra.
                          fontWeight: FontWeight.bold, // Texto en negrita.
                          color: Colors.indigo, // Color del texto.
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }