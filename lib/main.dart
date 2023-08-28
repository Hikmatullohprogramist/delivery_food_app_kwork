import 'package:delivery_food_app/screens/auth/auth_view_model.dart';
import 'package:delivery_food_app/screens/home/home_view_model.dart';
import 'package:delivery_food_app/screens/profile/profile_view_model.dart';
import 'package:delivery_food_app/screens/splash/splash.dart';
import 'package:dio_request_inspector/dio_request_inspector.dart';
import 'package:dio_request_inspector/presentation/main/page/main_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'utils/locator.dart';
import 'utils/prefs.dart';

DioRequestInspector dioRequestInspector =
    DioRequestInspector(isDebugMode: kDebugMode);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  registerSingelton();
  await PrefUtils().initInstane();

  runApp(DioRequestInspectorMain(
      inspector: dioRequestInspector, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserInfoViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeViewModel(),
        ),
      ],
      child: GetMaterialApp(
        navigatorKey: dioRequestInspector.navigatorKey,
        title: 'Food Delivery',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
