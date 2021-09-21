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
        // appBar: AppBar(
        //   title: Text(
        //     'CITAS',
        //     style: GoogleFonts.lato(),
        //   ),
        // ),

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
        "Citas",
        style: TextStyle(fontSize: 28),
      ),
      centerTitle: true,
    ));
  }
}
