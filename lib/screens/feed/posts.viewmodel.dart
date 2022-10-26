import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/models/post/post.model.dart';
import 'package:flutter_instagram_ui/repositories/posts.repository.dart';
import 'package:flutter_instagram_ui/services/posts.service.dart';

class PostsViewModel extends ChangeNotifier {
  PostsRepository postsRepository = PostsRepository(PostsService());
  List<PostModel> postsList = [];
  bool isLoading = false;

  Future<void> fetchPosts() async {
    isLoading = true;
    List<PostModel> result = await postsRepository.getAll();
    postsList = result;
    isLoading = false;
    notifyListeners();
  }

  List<PostModel> getPostsByUserId(int id) {
    return postsList.where((element) => element.addBy == id).toList();
  }
}
