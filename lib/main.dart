import 'package:flutter/material.dart';
import 'package:flutter_application_3/pantallas/pantallaPrincipal.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: PantallaPrincipal(tarjeta: {},),
    );
  }
}







