import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/screens/feed/posts.viewmodel.dart';
import 'package:flutter_instagram_ui/utils/app_icons.dart';
import 'package:flutter_instagram_ui/widgets/loading.widget.dart';
import 'package:flutter_instagram_ui/widgets/posts/post.widget.dart';
import 'package:flutter_instagram_ui/widgets/stories/stories.widget.dart';
import 'package:provider/provider.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/Instagram_logo.png',
          width: 120,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              width: 20,
              child: AppIcon(AppIcons.add),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              width: 20,
              child: AppIcon(AppIcons.love),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              width: 20,
              child: AppIcon(AppIcons.chat),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const StoriesWidget(),
            Consumer<PostsViewModel>(
              builder: (context, provider, _) {
                if (provider.isLoading) {
                  return const Center(child: LoadingWidget());
                }

                return ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return PostWidget(postModel: provider.postsList[index]);
                  },
                  itemCount: provider.postsList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 10);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
