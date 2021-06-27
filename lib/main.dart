import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pay_flow/modules/app.dart';

void main() {
  runApp(MyAppFirebase());
}

class MyAppFirebase extends StatefulWidget {
  MyAppFirebase({Key? key}) : super(key: key);

  @override
  _MyAppFirebaseState createState() => _MyAppFirebaseState();
}

class _MyAppFirebaseState extends State<MyAppFirebase> {
  final _initialize = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialize,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Material(
            child: Center(
              child: Text("Erro ao iniciar o firebase"),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          return MyApp();
        }
        return Material(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
