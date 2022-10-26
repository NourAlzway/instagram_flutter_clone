import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/screens/feed/posts.viewmodel.dart';
import 'package:flutter_instagram_ui/widgets/posts/posts_grid.widget.dart';
import 'package:provider/provider.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 35,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 18,
                  ),
                  fillColor: Colors.white,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                  focusColor: Colors.white,
                ),
              ),
            ),
            Consumer<PostsViewModel>(
              builder: (context, provider, _) {
                return PostsGridWidget(posts: provider.postsList);
              },
            ),
          ],
        ),
      ),
    );
  }
}
