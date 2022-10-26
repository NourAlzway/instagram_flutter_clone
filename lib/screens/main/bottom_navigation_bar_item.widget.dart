import 'package:flutter/material.dart';

class BottomNavigationBarItemWidget extends StatelessWidget {
  final VoidCallback onTap;
  final Widget activeIcon;
  final Widget unActiveIcon;
  final bool isActive;
  const BottomNavigationBarItemWidget({
    super.key,
    required this.onTap,
    this.isActive = false,
    required this.activeIcon,
    required this.unActiveIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
        width: 20,
        child: isActive ? activeIcon : unActiveIcon,
      ),
    );
  }
}
