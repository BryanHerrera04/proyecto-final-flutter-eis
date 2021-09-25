import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  final Function login_succes;
  const loginpage({Key? key, required this.login_succes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: const Text('Sign in'),
            onPressed: () {
              login_succes();
            }),
      ),
    );
  }
}
