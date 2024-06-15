import 'package:flutter/material.dart';
import 'botones.dart';

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
            Container(
              child: Image.network(
                imageUrl,
                fit: BoxFit.fill,
              ),
              height: 200,
              width: 150,
            ),
            const SizedBox(height: 10),
            const Botones(),
          ],
        ),
      ),
    );
  }
}

class SocialMediaPostListView extends StatelessWidget {
  const SocialMediaPostListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SocialMediaPost> posts = [
      SocialMediaPost(
        initial: 'A',
        name: 'Alice',
        description: 'A wonderful day in the park!',
        imageUrl: 'https://example.com/image1.jpg',
        likeCount: 34,
        commentCount: 12,
        shareCount: 5,
      ),
      SocialMediaPost(
        initial: 'B',
        name: 'Bob',
        description: 'Enjoying a cup of coffee.',
        imageUrl: 'https://example.com/image2.jpg',
        likeCount: 54,
        commentCount: 8,
        shareCount: 3,
      ),
      // Agrega más posts aquí
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView de Posts'),
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
      home: const SocialMediaPostListView(),
    );
  }
}

