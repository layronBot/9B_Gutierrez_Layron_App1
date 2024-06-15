import 'package:flutter/material.dart';

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.thumb_up),
          color: Colors.blue,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.comment),
          color: Colors.green,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.share),
          color: Colors.redAccent,
          onPressed: () {},
        ),
      ],
    );
  }
}

class BotonesListView extends StatelessWidget {
  const BotonesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView de Botones'),
      ),
      body: ListView.builder(
        itemCount: 10, // Número de filas en la lista
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Botones(),
          );
        },
      ),
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
      home: const BotonesListView(),
    );
  }
}
