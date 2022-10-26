import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/models/story/user_story.model.dart';
import 'package:flutter_instagram_ui/screens/story/story.screen.dart';
import 'package:flutter_instagram_ui/widgets/user/user_avatar.widget.dart';

class AvatarStoryWidget extends StatelessWidget {
  final UserStoryModel userStoryModel;
  const AvatarStoryWidget({super.key, required this.userStoryModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StoryScreen(userStoryModel: userStoryModel),
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          UserAvatarWidget(
            userModel: userStoryModel.createdBy,
            size: 60,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            userStoryModel.createdBy.username,
            maxLines: 1,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
