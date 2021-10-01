import 'package:flutter/material.dart';
import 'Pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(citas());
}

class citas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
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
