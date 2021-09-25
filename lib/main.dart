import 'package:citas_app/Pages/login_page.dart';
import 'package:citas_app/theme.dart';
import 'package:flutter/material.dart';
import 'Pages/home_page.dart';
import 'Pages/login_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(const Citas());

class Citas extends StatefulWidget {
  const Citas({Key? key}) : super(key: key);

  @override
  _CitasState createState() => _CitasState();
}

class _CitasState extends State<Citas> {
  bool loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Citas',
      debugShowCheckedModeBanner: false,
      theme: darkThemeData(context),
      // home: const loginpage(),
      routes: {
        '/': (BuildContext contex) {
          if (loggedIn) {
            return const Homepage();
          } else {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (contex) => const loginpage()));
            return loginpage(
              login_succes: () {
                setState(() {
                  loggedIn = true;
                });
              },
            );
          }
        },
      },
    );
  }
}
