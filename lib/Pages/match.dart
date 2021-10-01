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
                    padding: const EdgeInsets.all(50.0),
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('''
                          Yudy Najar
                          23 Años
                          Tunja
                          Est. Derecho
                          ''')
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
                    padding: const EdgeInsets.all(50.0),
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('''
                          Yudy Najar
                          23 Años
                          Tunja
                          Est. Derecho
                          ''')
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
