import 'package:flutter/material.dart';

class PostLikesWidget extends StatelessWidget {
  const PostLikesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RichText(
        text: const TextSpan(
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(text: 'Liked By '),
            TextSpan(
              text: 'nour_alzway',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ' and'),
            TextSpan(
              text: ' 12 others',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
