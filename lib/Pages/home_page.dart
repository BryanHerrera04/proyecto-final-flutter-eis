import 'package:citas_app/icons.dart';
import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:citas_app/main.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//-------------------------AppBar---------------------------------
      // appBar: AppBar(
      //   flexibleSpace: Container(
      //       decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //         begin: Alignment.topLeft,
      //         end: Alignment.topRight,
      //         colors: [
      //           HexColor('#ED213A'),
      //           HexColor('#93291E'),
      //         ]),
      //   )),
      //   title: const Text(
      //     "Citas",
      //     style: TextStyle(fontSize: 28),
      //   ),
      //   centerTitle: true,
      // ),
//----------------------------------------------------------------
//------------------------------Body------------------------------
      body: Body(),
//----------------------------------------------------------------
//-----------------------Bottom Navigation Bar--------------------
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            bottomAction(MyFlutterApp.flame),
            bottomAction(FontAwesomeIcons.history),
            const SizedBox(width: 50.0),
            bottomAction(FontAwesomeIcons.heart),
            bottomAction(FontAwesomeIcons.user),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
    );
  }

//--------------------------------------------------------------------------
//--------------------------------Funciones---------------------------------
  bottomAction(IconData icon) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(icon),
      ),
      onTap: () {},
    );
  }
}

Body() {
  return Scaffold(
    body: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(child: const Text('Log out'), onPressed: () {}),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg',
            frameBuilder: (BuildContext context, Widget child, int? frame,
                bool wasSynchronouslyLoaded) {
              if (wasSynchronouslyLoaded) {
                return child;
              }
              return AnimatedOpacity(
                child: child,
                opacity: frame == null ? 0 : 1,
                duration: const Duration(seconds: 1),
                curve: Curves.easeOut,
              );
            },
          ),
        )
      ],
    )),
  );
}
