import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/models/bottom_navigation_bar_icon.model.dart';
import 'package:flutter_instagram_ui/models/user/user.model.dart';
import 'package:flutter_instagram_ui/screens/main/bottom_navigation_bar_item.widget.dart';
import 'package:flutter_instagram_ui/utils/app_icons.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final UserModel userModel;
  final int currentIndex;
  final ValueChanged<int> onTap;
  const BottomNavigationBarWidget({
    super.key,
    required this.onTap,
    this.currentIndex = 0,
    required this.userModel,
  });

  Color? get colorCondtion => currentIndex == 3 ? Colors.white : null;

  List<BottomNavigationBarIconModel> get itemsIcons => [
        BottomNavigationBarIconModel(
          AppIcon(
            AppIcons.home,
            color: colorCondtion,
          ),
          AppIcon(
            AppIcons.home_active,
            color: colorCondtion,
          ),
        ),
        BottomNavigationBarIconModel(
          AppIcon(
            AppIcons.search,
            color: colorCondtion,
          ),
          AppIcon(
            AppIcons.search_active,
            color: colorCondtion,
          ),
        ),
        BottomNavigationBarIconModel(
          AppIcon(
            AppIcons.add,
            color: colorCondtion,
          ),
          AppIcon(
            AppIcons.add,
            color: colorCondtion,
          ),
        ),
        BottomNavigationBarIconModel(
          AppIcon(
            AppIcons.reels,
            color: colorCondtion,
          ),
          AppIcon(
            AppIcons.reels,
            color: colorCondtion,
          ),
        ),
        BottomNavigationBarIconModel(
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
              width: 50,
              child: Image.network(
                userModel.profileImage,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                userModel.profileImage,
              ),
            ),
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: currentIndex == 3 ? Colors.black : Colors.white,
      ),
      child: Row(
        children: itemsIcons.asMap().entries.map((e) {
          return Expanded(
            child: BottomNavigationBarItemWidget(
              activeIcon: e.value.active,
              unActiveIcon: e.value.normal,
              isActive: currentIndex == e.key,
              onTap: () {
                onTap(e.key);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
