// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppIcon extends StatelessWidget {
  final IGIconData iconData;
  final Color? color;
  const AppIcon(this.iconData, {super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/icons/${iconData.path}/${iconData.name}.png',
      color: color,
    );
  }
}

class AppIcons {
  // private constructor
  AppIcons._();

  // home
  static IGIconData get home => IGIconData('home', 'home');
  static IGIconData get home_active => IGIconData('home', 'home_active');
  // search
  static IGIconData get search => IGIconData('search', 'search');
  static IGIconData get search_active => IGIconData('search', 'search_active');
  // add
  static IGIconData get add => IGIconData('add', 'add');
  // reels
  static IGIconData get reels => IGIconData('reels', 'reels');
  // add
  static IGIconData get chat => IGIconData('chat', 'chat');

  // post actions
  static IGIconData get love => IGIconData('post_actions', 'love');
  static IGIconData get comment => IGIconData('post_actions', 'comment');
  static IGIconData get send => IGIconData('post_actions', 'send');
  static IGIconData get save => IGIconData('post_actions', 'save');
  // ig_icon
  static IGIconData get ig_icon => IGIconData('ig', 'instagram_icon');
}

// IG: Instagram
class IGIconData {
  final String path;
  final String name;

  IGIconData(this.path, this.name);
}
