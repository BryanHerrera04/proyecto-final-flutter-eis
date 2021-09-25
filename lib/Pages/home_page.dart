import 'package:citas_app/screens/Authentication/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _init = Firebase.initializeApp();
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
      //bottomNavigationBar: BottomAppBar(
      //child: Row(
      //children: bottomAction(),
      //),
      //),
    );
  }

  _body() {
    return FutureBuilder(
      future: _init,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        //if (snapshot.hasError) {
        //return ErrorWidget();
        //} else if (snapshot.hasData) {
        //return Login();
        //} else {
        //return Loading();
        //}
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

  //bottomAction(IconData icon) {
  //return InkWell(
  //child: Icon(icon),
  //onTap: () {},
  //);
  //}
}

class ErrorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [Icon(Icons.error), Text('Something went Wrond!')],
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
