import 'dart:js';
import 'package:flutter/material.dart';

class Login_page2 extends StatelessWidget {
  static String id = "login_page2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(   //Scaffold es la base para crear la interfaz de la pantalla
      appBar: AppBar(
        title: Text("REGISTRO DE USUARIOS"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "USUARIOS",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "USUARIO 1",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "USUARIO 2",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "USUARIO 3",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                child: Row(
                  children: [
                    Text("VOLVER",style: TextStyle(fontSize: 20),),
                    Icon(Icons.arrow_back),
                  ],
                ),
                onPressed: () => {
                  Navigator.pop(context)
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
