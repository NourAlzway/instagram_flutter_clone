import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/models/user/user.model.dart';
import 'package:flutter_instagram_ui/screens/story/story.screen.dart';
import 'package:flutter_instagram_ui/screens/story/stories.viewmodel.dart';
import 'package:provider/provider.dart';

class UserAvatarWidget extends StatelessWidget {
  final UserModel userModel;
  final double size;
  const UserAvatarWidget({super.key, required this.userModel, required this.size});

  @override
  Widget build(BuildContext context) {
    // create custom hero tag
    String heroTag = 'user_${userModel.id}_${Random().nextInt(10000)}';

    return Consumer<StoriesViewModel>(
      builder: (context, provider, _) {
        var userStoryModel = provider.getUserStoriesById(userModel.id);
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StoryScreen(
                  userStoryModel: userStoryModel,
                  heroTag: heroTag,
                ),
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: size,
                height: size,
                padding: const EdgeInsets.all(2),
                clipBehavior: Clip.antiAlias,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.orange,
                    width: 2,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  clipBehavior: Clip.antiAlias,
                  child: Hero(
                    tag: heroTag,
                    child: Image.network(userModel.profileImage),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
