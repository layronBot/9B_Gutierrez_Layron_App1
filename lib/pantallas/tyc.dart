import 'package:flutter/material.dart';
import 'package:flutter_application_3/pantallas/pantallaPrincipal.dart';

void main() => runApp(const tyc());

class tyc extends StatelessWidget {
  const tyc({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Términos y condiciones', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 44, 44, 44),
        ),
        body: Container(
          padding: const EdgeInsets.all(5),
          child: const Column(
            children: [
              Text("1. Aceptación de los terminos y condiciones", style: TextStyle(fontSize: 18),),
              Text("Al acceder y utilizar nuestro sitio web desarrollado en Flutter, usted acepta cumplir y estar sujeto a los siguientes términos y condiciones. Si no está de acuerdo con alguna parte de estos términos, no debe utilizar nuestro sitio web.", style: TextStyle(fontSize: 12),),
            ],
          ),
        ),
      ),
    );
  }
}