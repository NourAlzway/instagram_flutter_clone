// profiles actions =  edit profile or follow and message buttons
import 'package:flutter/material.dart';

class ProfileActionsWidget extends StatelessWidget {
  final bool isLoggedUser;

  const ProfileActionsWidget({super.key, required this.isLoggedUser});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: isLoggedUser ? buildActionsForLoggedUser() : buildActionsForOtherUsers(),
    );
  }

  Widget buildActionsForOtherUsers() {
    return Row(
      children: [
        Expanded(
          child: MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            elevation: 0,
            minWidth: double.infinity,
            height: 35,
            // style: ButtonStyle(minimumSize: Size(double.infinity, 100)),
            onPressed: () {},
            child: const Text('Follow'),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: MaterialButton(
            color: const Color.fromARGB(255, 231, 231, 231),
            textColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            height: 35,
            elevation: 0,
            minWidth: double.infinity,
            // style: ButtonStyle(minimumSize: Size(double.infinity, 100)),
            onPressed: () {},
            child: const Text('Message'),
          ),
        ),
      ],
    );
  }

  Widget buildActionsForLoggedUser() {
    return MaterialButton(
      color: const Color.fromARGB(255, 231, 231, 231),
      textColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      height: 35,
      elevation: 0,
      minWidth: double.infinity,
      // style: ButtonStyle(minimumSize: Size(double.infinity, 100)),
      onPressed: () {},
      child: const Text('Edit Profile'),
    );
  }
}
