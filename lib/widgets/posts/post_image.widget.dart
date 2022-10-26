import 'package:flutter/material.dart';

class PostImageWidget extends StatelessWidget {
  final String media;
  const PostImageWidget({super.key, required this.media});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        // ignore: todo
        // TODO: show like effect
      },
      child: Image.network(media),
    );
  }
}
