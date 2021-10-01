import 'package:citas_app/screens/Authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                HexColor('#ED213A'),
                HexColor('#93291E'),
              ]),
        )),
        title: const Text(
          "CitasApp",
          style: TextStyle(fontSize: 28),
        ),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return Loading();
        } else {
          return MaterialApp(
            theme: ThemeData(primarySwatch: Colors.red),
            debugShowCheckedModeBanner: false,
            home: Login(),
          );
        }
      },
    );
  }
}

class ErrorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [Icon(Icons.error), Text('¡Algo salió mal!')],
        ),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
