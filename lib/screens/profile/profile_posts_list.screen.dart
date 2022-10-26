import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/models/post/post.model.dart';
import 'package:flutter_instagram_ui/widgets/posts/posts_list.widget.dart';

class ProfilePostsListScreen extends StatelessWidget {
  final List<PostModel> posts;
  const ProfilePostsListScreen({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: PostsListWidget(
        posts: posts,
      ),
    );
  }
}
