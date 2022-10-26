import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/utils/app_icons.dart';

class PostActionsWidget extends StatefulWidget {
  const PostActionsWidget({super.key});

  @override
  State<PostActionsWidget> createState() => _PostActionsWidgetState();
}

class _PostActionsWidgetState extends State<PostActionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  width: 22,
                  child: AppIcon(AppIcons.love),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  width: 20,
                  child: AppIcon(AppIcons.comment),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  width: 20,
                  child: AppIcon(AppIcons.send),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              width: 20,
              child: AppIcon(AppIcons.save),
            ),
          )
        ],
      ),
    );
  }
}
