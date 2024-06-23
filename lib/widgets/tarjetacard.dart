import 'package:flutter/material.dart';
import 'socialmediapost.dart';

class tarjetacard extends StatelessWidget {
  const tarjetacard({
    super.key, required Map<String, String> tarjeta,
  });

  //final Map<String, String> tarjetaCard;

  @override
  Widget build(BuildContext context) {
    return SocialMediaPost(
      initial: 'JC',
      name: 'John Cena',
      description: 'Vean y disfruten de nueva cuenta en familia el evento WrestleMania, dónde La Pesadilla Americana Cody Rhodes termino su historia y se proclamo el NUEVO campeón indiscutible de la WWE',
      imageUrl: 'assets/images/images.jpg', // Replace with a valid image URL
      likeCount: 120,
      commentCount: 45,
      shareCount: 30,
    );
  }
}

