import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/models/user/user.model.dart';
import 'package:flutter_instagram_ui/screens/feed/feed.screen.dart';
import 'package:flutter_instagram_ui/screens/main/bottom_navigation_bar.widget.dart';
import 'package:flutter_instagram_ui/screens/profile/profile.screen.dart';
import 'package:flutter_instagram_ui/screens/reels/reels.screen.dart';
import 'package:flutter_instagram_ui/screens/search/search.screen.dart';
import 'package:flutter_instagram_ui/viewmodel/user.viewmodel.dart';
import 'package:provider/provider.dart';

class MainContainerScreen extends StatefulWidget {
  const MainContainerScreen({super.key});

  @override
  State<MainContainerScreen> createState() => _MainContainerScreenState();
}

class _MainContainerScreenState extends State<MainContainerScreen> {
  // Logged User
  late UserModel loggedUser;

  @override
  void initState() {
    super.initState();
    // Mock logged User
    loggedUser = Provider.of<UsersViewModel>(context, listen: false).usersList.first;
  }

  var activePageIndex = 0;
  List get pages => [
        const FeedScreen(),
        const SearchWidget(),
        const Center(
          child: Text('New Post Screen, Soon'),
        ),
        const ReelsScreen(),
        ProfileScreen(
          userModel: loggedUser,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: pages[activePageIndex],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        userModel: loggedUser,
        currentIndex: activePageIndex,
        onTap: (int value) {
          setState(() {
            activePageIndex = value;
          });
        },
      ),
    );
  }
}
