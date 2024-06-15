import 'package:flutter/material.dart';
import 'socialmediapost.dart';

class TarjetaCard extends StatelessWidget {
  const TarjetaCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SocialMediaPost(
      initial: 'J',
      name: 'John Cena',
      description: 'Vean y disfruten de nueva cuenta en familia el evento WrestleMania, dónde La Pesadilla Americana Cody Rhodes termino su historia y se proclamo el NUEVO campeón indiscutible de la WWE',
      imageUrl: 'assets/images/images.jpg', // Replace with a valid image URL
      likeCount: 120,
      commentCount: 45,
      shareCount: 30,
    );
  }
}

class TarjetaCardListView extends StatelessWidget {
  const TarjetaCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> tarjetas = List.generate(
      10,
      (index) => const TarjetaCard(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView de TarjetaCard'),
      ),
      body: ListView.builder(
        itemCount: tarjetas.length,
        itemBuilder: (context, index) {
          return tarjetas[index];
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
      home: const TarjetaCardListView(),
    );
  }
}
