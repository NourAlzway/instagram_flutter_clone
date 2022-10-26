import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/models/user/user.model.dart';
import 'package:flutter_instagram_ui/screens/profile/profile.screen.dart';
import 'package:flutter_instagram_ui/widgets/user/user_avatar.widget.dart';

class PostHeaderWidget extends StatelessWidget {
  final UserModel addBy;
  final String? postLocation;
  const PostHeaderWidget({super.key, required this.addBy, required this.postLocation});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              UserAvatarWidget(
                size: 45,
                userModel: addBy,
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(
                        userModel: addBy,
                      ),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      addBy.username,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    if (postLocation != null)
                      Text(
                        postLocation!,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          GestureDetector(
            child: const Icon(
              Icons.more_vert,
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
