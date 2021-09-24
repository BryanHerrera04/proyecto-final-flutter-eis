import 'package:citas_app/theme.dart';
import 'package:flutter/material.dart';
import 'Pages/home_page.dart';

void main(List<String> args) {
  runApp(const citas());
}

class citas extends StatelessWidget {
  const citas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Citas',
      debugShowCheckedModeBanner: false,
      theme: darkThemeData(context),
      // theme: ThemeData(
      //     primarySwatch: Colors.blue,
      //     textTheme: GoogleFonts.montserratAlternatesTextTheme(
      //       Theme.of(context).textTheme,
      //     )),
      home: const Homepage(),
    );
  }
}
