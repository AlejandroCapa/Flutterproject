import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  static String id = "login_page";

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Image.asset(
                "images/logo.png",
                height: 300.0,
              ),
              SizedBox(height: 15.0,),
              _userTextfield(),
              SizedBox(height: 15,),
              _passwordTextfield(),
              SizedBox(height: 20.0,),
              _bottonlogin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userTextfield() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
             icon: Icon(Icons.email),
              hintText: "example@correo.com",
              labelText: "Correo electronico",
              ),
          onChanged: (value) {
            
          },
        ),
      );
    });
  }

  Widget _passwordTextfield() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              hintText: "Contrasñea",
              labelText: "Contraseña",
            ),
          ),
        );
      },
    );
  }

  Widget _bottonlogin() {
    return StreamBuilder(
      builder:(BuildContext (context, AsyncSnapshot snapshot) {
        return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 15.0),
            child: Text("Iniciar Sesion"),
              ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10.0,
              color: Colors.amberAccent,
              onPressed: (){}
           );
          }
        ), 
      );
  }
} 