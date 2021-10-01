import 'package:flutter/material.dart';

class PerfilUser extends StatefulWidget {
  PerfilUser({Key? key}) : super(key: key);

  @override
  _PerfilUserState createState() => _PerfilUserState();
}

class _PerfilUserState extends State<PerfilUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            child: Image(image: AssetImage('assets/perfil.jpg')),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            child: Text('''Bryan Herrea
                24 Años
                Ing. Mecatrónico
                Villavicencio
                Jugador Baloncesto'''),
          ),
        ),
      ],
    );
  }
}
