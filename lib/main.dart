import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mis Posts Favoritos'),
          backgroundColor: Colors.green.shade400,
        ),
        body: ListView(
          children: const [
            SocialMediaPost(
              initial: 'J',
              name: 'John Cena',
              description: 'Vean y disfruten de nueva cuenta en familia el evento WrestleMania, dónde La Pesadilla Americana Cody Rhodes termino su historia y se proclamo el NUEVO campeón indiscutible de la WWE',
              imageUrl: 'assets/images/images.jpg', // Replace with a valid image URL
              likeCount: 120,
              commentCount: 45,
              shareCount: 30,
            ),
            SocialMediaPost(
              initial: 'E',
              name: 'Cameron Diaz',
              description: 'Hola familia! Los invito a ver mi más famosa película La Mascara junto con mi gran amigo Jim Carrey, no se la pierdan.',
              imageUrl: 'assets/images/LaMascara.jpg', // Replace with a valid image URL
              likeCount: 98,
              commentCount: 20,
              shareCount: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class SocialMediaPost extends StatelessWidget {
  final String initial;
  final String name;
  final String description;
  final String imageUrl;
  final int likeCount;
  final int commentCount;
  final int shareCount;

  const SocialMediaPost({
    required this.initial,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow.shade200,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Text(
                    initial,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 10),
            Image.network(imageUrl),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _PostButton(
                  icon: Icons.thumb_up,
                  count: likeCount,
                  label: 'Me gusta',
                  color: Colors.blue,
                ),
                _PostButton(
                  icon: Icons.comment,
                  count: commentCount,
                  label: 'Comentar',
                  color: Colors.green,
                ),
                _PostButton(
                  icon: Icons.share,
                  count: shareCount,
                  label: 'Compartir',
                  color: Colors.redAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _PostButton extends StatelessWidget {
  final IconData icon;
  final int count;
  final String label;
  final Color color;

  const _PostButton({
    required this.icon,
    required this.count,
    required this.label,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color),
        const SizedBox(width: 5),
        Text(
          '$label ($count)',
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}



