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
    required
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
              child:Image.network(
                imageUrl,
                fit: BoxFit.fill,
                ),
                height: 200,
                width: 150,
            ),
            const SizedBox(height: 10),
            botones(),
          ],
        ),
      ),
    );
  }
}



