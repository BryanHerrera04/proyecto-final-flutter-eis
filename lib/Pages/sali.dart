import 'package:flutter/material.dart';

class Salir extends StatefulWidget {
  Salir({Key? key}) : super(key: key);

  @override
  _SalirState createState() => _SalirState();
}

class _SalirState extends State<Salir> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('¿Deseas salir de la aplicación?'),
      content: const Text('Selecciona una opción'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
