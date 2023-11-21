import 'package:flutter/material.dart';
import 'package:project1/src/login_page2.dart';

class Loginpage extends StatefulWidget {
  static String id = "login_page";

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //SafeArea se utiliza  para garantizar que el contenido de la aplicación se ajuste correctamente
      //en el área "segura" de la pantalla del dispositivo.
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Añadido para centrar en vertical
            children: [
              Image.asset(
                "assets/images/login.png",
                height: 300.0,
              ),

              SizedBox(height: 15.0),
              _userTextField(), // Corregido el nombre de la función
              SizedBox(height: 15),
              _passwordTextField(), // Corregido el nombre de la función
              SizedBox(height: 20.0),
              _buttonLogin(), // Corregido el nombre de la función
            ],
          ),
        ),
      ),
    );
  }

  Widget _userTextField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.email),
          hintText: "example@correo.com",
          labelText: "Correo electrónico", // Corregido el texto
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget _passwordTextField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType
            .text, // Cambiado a TextInputType.text para contraseñas
        obscureText: true, // Para ocultar la contraseña
        decoration: InputDecoration(
          icon: Icon(Icons.lock),
          hintText: "Contraseña",
          labelText: "Contraseña",
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget _buttonLogin() {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login_page2(),
        ),
      );
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.blueGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10.0,
    ),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
      child: Text("Iniciar Sesión"),
    ),
  );
}
}