// ignore_for_file: deprecated_member_use, unused_element

import 'package:delivery_food_app/screens/auth/auth_view_model.dart';
import 'package:delivery_food_app/widgets/custom_button.dart';
import 'package:delivery_food_app/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwdCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => launch("tel://+998930775777"),
        child: Icon(Icons.call),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Stack(
        children: [
          Image.asset("assets/background.png"),
          Align(
alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Logo()),
                  SizedBox(
                    height: 60,
                  ),
                  TextField(
                    controller: emailCtrl,
                    decoration: InputDecoration(
                        label: Text("Логин"), suffixIcon: Icon(Icons.clear)),
                  ),
                  TextField(
                    controller: passwdCtrl,
                    decoration: InputDecoration(
                        label: Text("Пароль"), suffixIcon: Icon(Icons.clear)),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Consumer<AuthModel>(
                    builder: (context, value, child) {
                      return CustomButton(
                          text: "Войти",
                          progress: value.progress,
                          onclick: () {
                            AuthModel()
                                .login(emailCtrl.text, passwdCtrl.text);
                          });
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
