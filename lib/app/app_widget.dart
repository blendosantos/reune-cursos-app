import 'package:flutter/material.dart';
import 'package:reune/app/pages/cursos/cursos_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CursosModule(),
    );
  }
}
