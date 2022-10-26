// profile widget = name, bio and link
import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/models/user/user.model.dart';

class ProfileInfoWidget extends StatelessWidget {
  final UserModel userModel;
  const ProfileInfoWidget({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display name or username
          Text(userModel.displayName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          // bio
          const SizedBox(height: 5),
          Text(
            userModel.bio ?? '',
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(height: 5),
          // link
          Text(
            userModel.link ?? '',
            style: const TextStyle(fontSize: 12, color: Color.fromARGB(255, 0, 72, 130)),
          ),
        ],
      ),
    );
  }
}
