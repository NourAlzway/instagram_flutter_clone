import 'package:flutter_instagram_ui/models/story/story.model.dart';
import 'package:flutter_instagram_ui/models/user/user.model.dart';

class UserStoryModel {
  final UserModel createdBy;
  final List<StoryModel> stories;

  UserStoryModel(this.createdBy, this.stories);
}
