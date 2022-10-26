import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/widgets/loading.widget.dart';
import 'package:flutter_instagram_ui/widgets/stories/avatar_story.widget.dart';
import 'package:flutter_instagram_ui/screens/story/stories.viewmodel.dart';
import 'package:provider/provider.dart';

class StoriesWidget extends StatefulWidget {
  const StoriesWidget({super.key});

  @override
  State<StoriesWidget> createState() => _StoriesWidgetState();
}

class _StoriesWidgetState extends State<StoriesWidget> {
  // @override
  // void initState() {
  //   super.initState();
  //   Provider.of<StoriesViewModel>(context, listen: false).fetchStories();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: 100,
      child: Consumer<StoriesViewModel>(
        builder: (context, provider, _) {
          if (provider.isLoading) {
            return const Center(child: LoadingWidget());
          }

          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: provider.usersStoriesList.length,
            itemBuilder: (context, i) {
              var userStory = provider.usersStoriesList[i];
              return AvatarStoryWidget(userStoryModel: userStory);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 10);
            },
          );
        },
      ),
    );
  }
}
