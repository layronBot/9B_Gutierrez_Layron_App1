import 'package:flutter/material.dart';
class botones extends StatelessWidget {
  const botones({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon:const Icon(Icons.thumb_up),
          //count: likeCount,
          //label: 'Me gusta',
          color: Colors.blue,
          onPressed: () {},
        ),
        IconButton(
          icon:const Icon(Icons.comment),
          //count: commentCount,
          //label: 'Comentar',
          color: Colors.green,
          onPressed: () {},
        ),
        IconButton(
          icon:const Icon(Icons.share),
          //count: shareCount,
          //label: 'Compartir',
          onPressed: () {},
          color: Colors.redAccent,
        ),
      ],
    );
  }
}


