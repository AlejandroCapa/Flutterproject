import 'package:flutter/material.dart';

class Login_page2 extends StatefulWidget {
  static String id = "login_page2";

  @override
  State<Login_page2> createState() => _Login_page2State();
}

class _Login_page2State extends State<Login_page2> {
  List<Empresa> _empresas = [
    Empresa("MARVO", "TOKIO", "correo1", "099999", "assets/marvo_logo.png"),
    Empresa("AMD", "California", "correo2", "088888", "assets/amd_logo.png"),
    Empresa("INTEL CORPORATION", "Estados Unidos", "correo3", "07777", "assets/intel_logo.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EMPRESAS"),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Volver"),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _empresas.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(_empresas[index].imagen),
            title: Text(_empresas[index].nombre),
            onTap: () {
              mostrarDetalles(context, _empresas[index]);
            },
          );
        },
      ),
    );
  }

  void mostrarDetalles(BuildContext context, Empresa empresa) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Detalles de la Empresa'),
          content: Text(
            "Nombre: ${empresa.nombre}\n" +
            "Ciudad: ${empresa.ciudad}\n" +
            "Correo: ${empresa.correo}\n" +
            "Teléfono: ${empresa.telefono}\n",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }
}

class Empresa {
  late String nombre;
  late String ciudad;
  late String correo;
  late String telefono;
  late String imagen; // Agregamos el campo para la imagen
  Empresa(String nombre, String ciudad, String correo, String telefono, String imagen) {
    this.nombre = nombre;
    this.ciudad = ciudad;
    this.correo = correo;
    this.telefono = telefono;
    this.imagen = imagen;
    
  }
}
