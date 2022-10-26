import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/models/story/user_story.model.dart';
import 'package:flutter_instagram_ui/repositories/users_stories.repository.dart';
import 'package:flutter_instagram_ui/services/stories.service.dart';

class StoriesViewModel extends ChangeNotifier {
  UsersStoriesRepository usersStoriesRepository = UsersStoriesRepository(StoriesService());
  List<UserStoryModel> usersStoriesList = [];
  bool isLoading = false;

  Future<void> fetchStories() async {
    isLoading = true;
    var result = await usersStoriesRepository.getAll();
    usersStoriesList = result;
    isLoading = false;
    notifyListeners();
  }

  UserStoryModel getUserStoriesById(int userId) {
    return usersStoriesList.firstWhere(
      (element) => element.createdBy.id == userId,
    );
  }
}
