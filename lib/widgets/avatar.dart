import 'package:delivery_food_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(ProfileScreen());
      },
      child: CircleAvatar(
        radius: 40,
        child: Image.asset(
          "assets/avatar.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
