import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/models/post/post.model.dart';
import 'package:flutter_instagram_ui/viewmodel/user.viewmodel.dart';
import 'package:flutter_instagram_ui/widgets/posts/post_actions.widge.dart';
import 'package:flutter_instagram_ui/widgets/posts/post_comments.widget.dart';
import 'package:flutter_instagram_ui/widgets/posts/post_description.widget.dart';
import 'package:flutter_instagram_ui/widgets/posts/post_header.widget.dart';
import 'package:flutter_instagram_ui/widgets/posts/post_image.widget.dart';
import 'package:flutter_instagram_ui/widgets/posts/post_likes.widget.dart';
import 'package:provider/provider.dart';

class PostWidget extends StatelessWidget {
  final PostModel postModel;
  const PostWidget({super.key, required this.postModel});

  @override
  Widget build(BuildContext context) {
    var usersViewModel = Provider.of<UsersViewModel>(context, listen: false);
    var user = usersViewModel.getLoadedUserById(postModel.addBy);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // header
        PostHeaderWidget(
          addBy: user,
          postLocation: postModel.location,
        ),
        const SizedBox(height: 10),
        // image
        PostImageWidget(media: postModel.media),
        // actions
        const PostActionsWidget(),
        // likes
        const PostLikesWidget(),
        // description
        PostDescriptionWidget(
          addBy: user,
          description: postModel.description,
        ),
        // comments
        const PostCommentsWidget(),
      ],
    );
  }
}
