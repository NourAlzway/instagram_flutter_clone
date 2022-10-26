import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/utils/app_icons.dart';

class StoryFooterWidget extends StatefulWidget {
  const StoryFooterWidget({super.key});

  @override
  State<StoryFooterWidget> createState() => _StoryFooterWidgetState();
}

class _StoryFooterWidgetState extends State<StoryFooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 0,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Send message',
                  hintStyle: TextStyle(color: Colors.white),
                  focusColor: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {},
            child: SizedBox(
              width: 22,
              child: AppIcon(
                AppIcons.love,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {},
            child: SizedBox(
              width: 20,
              child: AppIcon(
                AppIcons.send,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
