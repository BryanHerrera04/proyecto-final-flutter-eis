import 'package:flutter/material.dart';
import 'Pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:firebase_core/firebase_core.dart';

/* void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(citas());
  await Firebase.initializeApp();
} */
void main() {
  runApp(citas());
}

class citas extends StatelessWidget {
  //const citas({Key? key}) : super(key: key);
  //final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        //future: _initialization,
        builder: (context, snapshot) => MaterialApp(
              title: 'CitasApp',
              theme: ThemeData(
                  primarySwatch: Colors.blue,
                  textTheme: GoogleFonts.montserratAlternatesTextTheme(
                    Theme.of(context).textTheme,
                  )),
              debugShowCheckedModeBanner: false,
              home: Homepage(),
            ));
  }
}
