import 'package:flutter/material.dart'; // Importamos la librería Flutter para construir la UI

void main() {
  runApp(const MainApp()); // Función principal que inicia la aplicación
}

// Clase principal del widget con estado
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState(); // Creamos el estado de la app
}

// Estado de la aplicación
class _MainAppState extends State<MainApp> {
  int contador = 0; // Variable que almacena el número de veces pulsado

  // Método para incrementar el contador
  void incrementar() {
    setState(() {
      contador++; // Aumenta el valor en 1
    });
  }

  // Método para decrementar el contador
  void decrementar() {
    setState(() {
      contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafe App', // Título de la aplicación
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0), // Espaciado horizontal
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceAround, // Distribuye los elementos verticalmente
            crossAxisAlignment:
                CrossAxisAlignment.start, // Alinea el contenido a la izquierda
            children: [
              // Sección del título y descripción
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CAFE",
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 70,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("Nuestro café es el mejor del mundo.",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))
                ],
              ),

              Image.asset(
                'assets/hacking_etico_jpg.png', // Imagen del café
              ),

              // Sección del contador y botones
              Column(
                children: [
                  Text(
                    "Veces pulsadas: $contador",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10), // Espaciado entre elementos
                  ElevatedButton(
                    onPressed: incrementar, // Llama a la función incrementar
                    child: Text("incrementar",
                        style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: decrementar, // Llama a la función decrementar
                    child: Text("descrementar",
                        style: TextStyle(color: Colors.brown)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


/*
import 'package:flutter/material.dart'; // Importamos la librería Flutter para construir la UI

void main() {
  runApp(const MainApp()); // Función principal que inicia la aplicación
}

// Clase principal del widget con estado
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState(); // Creamos el estado de la app
}

// Estado de la aplicación
class _MainAppState extends State<MainApp> {
  int contador = 0; // Variable que almacena el número de veces pulsado

  // Método para incrementar el contador
  void incrementar() {
    setState(() {
      contador++; // Aumenta el valor en 1
    });
  }

  // Método para decrementar el contador
  void decrementar() {
    setState(() {
      contador--; // Disminuye el valor en 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafe App', // Título de la aplicación
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0), // Espaciado horizontal
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // Distribuye los elementos verticalmente
            crossAxisAlignment: CrossAxisAlignment.start, // Alinea el contenido a la izquierda
            children: [
              // Sección del título y descripción
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CAFE",
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 70,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("Nuestro café es el mejor del mundo.",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))
                ],
              ),
              Image.asset(
                'assets/hacking_etico_jpg.png', // Imagen del café (debe estar en assets)
              ),
              // Sección del contador y botones
              Column(
                children: [
                  Text(
                    "Veces pulsadas: $contador", // Muestra el valor actual del contador
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10), // Espaciado entre elementos
                  ElevatedButton(
                    onPressed: incrementar, // Llama a la función incrementar
                    child: Text("incrementar",
                        style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: decrementar, // Llama a la función decrementar
                    child: Text("descrementar",
                        style: TextStyle(color: Colors.brown)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
 */