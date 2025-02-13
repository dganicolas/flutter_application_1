import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
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
    return MaterialApp(
      title: 'Cafe App',
      home: Scaffold(
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
                'assets/hacking_etico_jpg.png',
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
                    onPressed: decrementar,
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
