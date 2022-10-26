import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/screens/feed/posts.viewmodel.dart';
import 'package:flutter_instagram_ui/screens/main/main_contaienr.screen.dart';
import 'package:flutter_instagram_ui/screens/story/stories.viewmodel.dart';
import 'package:flutter_instagram_ui/utils/app_icons.dart';
import 'package:flutter_instagram_ui/viewmodel/user.viewmodel.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initApp();
  }

  Future<void> initApp() async {
    // load users data
    await Provider.of<UsersViewModel>(context, listen: false).loadUsers();
    // load stories data
    if (mounted) await Provider.of<StoriesViewModel>(context, listen: false).fetchStories();
    // load posts data
    if (mounted) await Provider.of<PostsViewModel>(context, listen: false).fetchPosts();

    // fake waiting time
    await Future.delayed(const Duration(seconds: 1));
    // open home page
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainContainerScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 40,
          child: AppIcon(
            AppIcons.ig_icon,
          ),
        ),
      ),
    );
  }
}
