import 'package:delivery_food_app/data/service/service.dart';
import 'package:delivery_food_app/screens/navigator.dart';
import 'package:delivery_food_app/utils/locator.dart';
import 'package:delivery_food_app/utils/prefs.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthModel extends ChangeNotifier {
  ApiService apiService = getIt.get<ApiService>();
  var progress = false;

  void login(String email, String password) async {
    progress = true;
    notifyListeners();
    var data = await apiService.login(email, password);
    progress = false;
    notifyListeners();
    if (data != null) {
      getIt.get<PrefUtils>().setToken(data.token);
      Get.offAll(const BottomNavigatorScreen());
    }
  }

// void registration(String fullname, String phone, String password) async {
//   progress = true;
//   notifyListeners();
//   var data = await apiService.registration(fullname, phone, password);
//   progress = false;
//   notifyListeners();
//   if (data != null) {
//     getIt.get<PrefUtils>().setToken(data.token);
//     Get.offAll(const MainScreen());
//   }
// }
}
