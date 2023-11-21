import 'package:flutter/material.dart';

class Login_page2 extends StatefulWidget {
  static String id = "login_page2";

  @override
  State<Login_page2> createState() => _Login_page2State();
}

class _Login_page2State extends State<Login_page2> {
  List<Empresa> _empresas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("EMPRESAS"),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(
                    context); // Regresar a la página de inicio de sesión
              },
            ),
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                // Lógica para mostrar detalles de la empresa
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: _empresas.length,
          itemBuilder: (context, index) {
            return ListTile(
              //leading: Image.asset(_empresas[index].imagen),
              title: Text(_empresas[index].nombre),
              onTap: () {
                mostrarDetalles(context, _empresas[index]);
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _agregarEmpresa(); // Llamamos al método para agregar empresa
          },
          child: Icon(Icons.add),
        ));
  }

  void _agregarEmpresa() async {
    String nombre = '';
    String ciudad = '';
    String correo = '';
    String telefono = '';

    // Inicializa más campos según sea necesario

    Empresa nuevaEmpresa = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Nueva Empresa'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Nombre'),
                  onChanged: (value) => nombre = value,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Ciudad'),
                  onChanged: (value) => ciudad = value,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Correo'),
                  onChanged: (value) => correo = value,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Telefono'),
                  onChanged: (value) => telefono = value,
                )
                // Añade más campos aquí
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(Empresa(
                  nombre: nombre,
                  ciudad: ciudad,
                  correo: correo,
                  telefono: telefono,
                  // Proporciona más campos aquí
                ));
              },
              child: Text('Guardar'),
            ),
          ],
        );
      },
    );
    if (nuevaEmpresa != null) {
      setState(() {
        _empresas.add(nuevaEmpresa);
      });
    }
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
  final String nombre;
  final String ciudad;
  final String correo;
  final String telefono;

  Empresa({
    required this.nombre,
    required this.ciudad,
    required this.correo,
    required this.telefono,
  });
}
