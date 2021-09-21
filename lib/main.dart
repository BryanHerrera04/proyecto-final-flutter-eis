import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const citas());
}

class citas extends StatelessWidget {
  const citas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Citas',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.montserratAlternatesTextTheme(
            Theme.of(context).textTheme,
          )),
      home: const Homepage(),
    );
  }
}
