import 'package:flutter/material.dart'; // Importamos la librería Flutter para construir la UI

void main() {
  runApp(const MainApp()); // Función principal que inicia la aplicación
}

// Clase principal del widget con estado
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafe App',
      initialRoute: '/', // Ruta inicial
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}

// Pantalla principal
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void decrementar() {
    setState(() {
      contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Column(
              children: [
                Text(
                  "Veces pulsadas: $contador",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: incrementar,
                  child: Text("Incrementar",
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
                  onPressed: decrementar,
                  child: Text("Decrementar",
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
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child:
                      Text("Ir a Login", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
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
    );
  }
}

// Nueva pantalla para el login
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController contrasenaController = TextEditingController();

  void _validarCampos() {
    String usuario = usuarioController.text.trim();
    String contrasena = contrasenaController.text.trim();

    if (usuario.isNotEmpty && contrasena.isNotEmpty) {
      _mostrarDialogo("Exitoso", "Me quedé sin tuppers en esta zona");
    } else {
      _mostrarDialogo("Error", "Te faltó rellenar los campos");
    }
  }

  void _mostrarDialogo(String titulo, String mensaje) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(titulo),
          content: Text(mensaje),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("OK"),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usuarioController,
              decoration: InputDecoration(labelText: "Usuario"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: contrasenaController,
              decoration: InputDecoration(labelText: "Contraseña"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _validarCampos,
              child: Text("Iniciar Sesión"),
            ),
          ],
        ),
      ),
    );
  }
}
