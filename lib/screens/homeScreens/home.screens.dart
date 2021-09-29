import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CITAS APP'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))],
      ),
    );
  }
}