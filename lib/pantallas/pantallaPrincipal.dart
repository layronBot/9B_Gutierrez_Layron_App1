import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/tarjetacard.dart';
import 'package:flutter_application_3/widgets/socialmediapost.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> posts = [
      const TarjetaCard(),
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
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return posts[index];
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
      home: const PantallaPrincipal(),
    );
  }
}
