import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/models/story/story.model.dart';

class StoryContentWidget extends StatelessWidget {
  final StoryModel storyModel;
  const StoryContentWidget({super.key, required this.storyModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Image.network(
        storyModel.media,
        alignment: Alignment.center,
        fit: BoxFit.cover,
      ),
    );
  }
}
