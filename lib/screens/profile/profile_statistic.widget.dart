import 'package:flutter/material.dart';

class ProfileStatisticWidget extends StatelessWidget {
  final String number;
  final String title;
  const ProfileStatisticWidget({super.key, required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
