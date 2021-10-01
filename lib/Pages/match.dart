import 'package:flutter/material.dart';

class Matches extends StatefulWidget {
  Matches({Key? key}) : super(key: key);

  @override
  _MatchesState createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Image(
                                    image: AssetImage('assets/mujer.jpg'),
                                    height: 120,
                                    alignment: Alignment.topLeft),
                                Text(
                                  '''
                              Yudy Najar
                              23 Años
                              Tunja
                              Est. Derecho
                              ''',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red[850],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Image(
                                    image: AssetImage('assets/mujer1.jpg'),
                                    height: 120,
                                    alignment: Alignment.topLeft),
                                Text(
                                  '''
                              Maria Díaz
                              25 Años
                              Villavicencio
                              Ing. Civil
                              ''',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red[200],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Image(
                                    image: AssetImage('assets/mujer2.jpg'),
                                    height: 120,
                                    alignment: Alignment.topLeft),
                                Text(
                                  '''
                          Erika Gomez
                          28 Años
                          Villavicencio
                          Deportista
                          ''',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red[850],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
