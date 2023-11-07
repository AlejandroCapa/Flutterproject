import 'package:flutter/material.dart';

class Login_page2 extends StatelessWidget {
  static String id = "login_page2";
  List<Empresa> _empresas = [
    Empresa("MARVO", "TOKIO", "correo", "099999"),
    Empresa("AMD", "California", "correo", "088888"),
    Empresa("INTEL CORPORATION", "Estados Unidos", "correo", "07777"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold es la base para crear la interfaz de la pantalla
      appBar: AppBar(
        title: Text("REGISTRO DE USUARIOS"),
      ),
      body: ListView.builder(
          itemCount: _empresas.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_empresas[index].nombre),
              subtitle: Text(
                _empresas[index].ciudad +""+
                _empresas[index].correo +""+
                _empresas[index].telefono),
              leading: CircleAvatar(
                child: Text(_empresas[index].nombre.substring(0, 1)),
                child: Column(
                children: [
                  ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "VOLVER",
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.arrow_back),
                      ],
                    ),
                    onPressed: () => {
                      Navigator.pop(context)
                      // el Navigator.pop se utiliza para navegar hacia atrás en la pila de rutas de la aplicación.
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Detalles'),
                            content: Text(_empresas[index].nombre),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('MOSTRAR'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('Mostrar Empresa'),
                  ),
                ],
              ),
              ),
              
            );
          }),
    );
  }
}

class Empresa {
  late String nombre;
  late String ciudad;
  late String correo;
  late String telefono;
  Empresa(String nombre, String ciudad, String correo, String telefono) {
    this.nombre = nombre;
    this.ciudad = ciudad;
    this.correo = correo;
    this.telefono = telefono;
  }
}
