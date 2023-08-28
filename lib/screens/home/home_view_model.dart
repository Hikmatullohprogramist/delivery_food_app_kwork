import 'package:delivery_food_app/data/model/order_model.dart';
import 'package:delivery_food_app/data/service/service.dart';
import 'package:delivery_food_app/utils/locator.dart';
import 'package:flutter/cupertino.dart';

class HomeViewModel extends ChangeNotifier {
  ApiService apiService = getIt.get<ApiService>();
  var progress = false;

  OrderModel? ordersList;

  getOrders() async {
    changeProgressState();
    ordersList = await apiService.getOrders();
    changeProgressState();
  }

  changeProgressState() {
    notifyListeners();
    progress = !progress;
    notifyListeners();
  }
}
