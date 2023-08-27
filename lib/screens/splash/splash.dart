import 'dart:async';

import 'package:delivery_food_app/screens/auth/login.dart';
import 'package:delivery_food_app/screens/navigator.dart';
import 'package:delivery_food_app/utils/locator.dart';
import 'package:delivery_food_app/utils/prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    Timer(const Duration(seconds: 2), () {
      Get.offAll(getIt.get<PrefUtils>().getToken().isNotEmpty
          ? const BottomNavigatorScreen()
          : const LoginScreen());
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo.png"),
          ],
        ),
      ),
    );
  }
}
