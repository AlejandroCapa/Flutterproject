import 'package:flutter/material.dart';
import 'package:project1/src/login_page.dart';

void main() {
  runApp(Miapp()); // Este es el metodo que lanza la aplicación.
}

class Miapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Loginpage.id,
      routes: {
        Loginpage.id: (context) => Loginpage(),
        // Agrega otras rutas aquí si tienes más pantallas en tu aplicación
      },
    );
  }
}
