import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/models/user/user.model.dart';
import 'package:flutter_instagram_ui/screens/profile/profile_statistic.widget.dart';
import 'package:flutter_instagram_ui/widgets/user/user_avatar.widget.dart';

// Profile header contains Profile Avatar and Profile Statistics
class ProfileHeaderWidget extends StatelessWidget {
  final UserModel userModel;
  const ProfileHeaderWidget({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //  Profile Avatar
          UserAvatarWidget(
            userModel: userModel,
            size: 80,
          ),
          const SizedBox(width: 60),
          // Statistics
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ProfileStatisticWidget(number: '158', title: 'Posts'),
                ProfileStatisticWidget(number: '273', title: 'Followers'),
                ProfileStatisticWidget(number: '210', title: 'Following'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
