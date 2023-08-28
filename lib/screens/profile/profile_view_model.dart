import 'package:delivery_food_app/data/model/user_model.dart';
import 'package:delivery_food_app/data/service/service.dart';
import 'package:delivery_food_app/utils/locator.dart';
import 'package:flutter/cupertino.dart';

class UserInfoViewModel extends ChangeNotifier {
  var progress = false;
  UserModel? userModel;
  ApiService apiService = getIt.get<ApiService>();

  getUserInfo() async {
    changeProgressState();
    userModel = await apiService.getUserInfo();
    changeProgressState();
  }

  changeProgressState() {
    notifyListeners();
    progress = !progress;
    notifyListeners();
  }
}
