import 'package:flutter/material.dart';

class PostCommentsWidget extends StatelessWidget {
  const PostCommentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: const Text(
        'View all 14 comments',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
