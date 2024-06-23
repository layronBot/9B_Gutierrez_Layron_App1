import 'package:flutter/material.dart';
import 'package:flutter_application_3/pantallas/tyc.dart';
import 'package:flutter_application_3/widgets/TarjetaCard.dart';
import 'package:flutter_application_3/widgets/socialmediapost.dart';
import 'package:flutter_application_3/pantallas/listaFeed.dart';
import 'package:flutter_application_3/pantallas/FormularioApp.dart';
import 'package:flutter_application_3/datos/datos.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({
    super.key,
    required this.tarjeta,
  });
  final Map<String, String> tarjeta;

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {

  int _paginaActual = 0;
  final List<Widget>_paginas = [
      listaFeed(),
      paginaBuscar(),
      paginaCirculo()
];


  @override
  Widget build(BuildContext context) {
    final List<Widget> posts = [
      const tarjetacard(tarjeta: {},),
      const SocialMediaPost(
        initial: 'E',
        name: 'Cameron Diaz',
        description: 'Hola familia! Los invito a ver mi más famosa película La Mascara junto con mi gran amigo Jim Carrey, no se la pierdan.',
        imageUrl: 'assets/images/LaMascara.jpg', // Replace with a valid image URL
        likeCount: 98,
        commentCount: 20,
        shareCount: 15,
      ),
      // Añadir más widgets SocialMediaPost aquí si es necesario
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Posts Favoritos'),
        backgroundColor: Colors.green.shade400,
      ),

      
       

      body: Column(
        children: [
          Expanded(child:_paginas[_paginaActual]),
          Row(
            children: [
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => tyc()));
              }, child: const Text("Términos y condiciones")),
              ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FormularioApp()));
          }, child: const Text("Formulario"))
            ],
          ),
          
        ], 
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaActual,
        onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'Circulo'),
        ],
      )
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PantallaPrincipal(tarjeta: {},),
    );
  }
}

class paginaBuscar extends StatelessWidget {
  const paginaBuscar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Buscar'),
      ),
    );
  }
}

class paginaCirculo extends StatelessWidget {
  const paginaCirculo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Opciones despegables'),
      ),
    );
  }
}
