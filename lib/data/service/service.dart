// ignore_for_file: deprecated_member_use, null_argument_to_non_null_type

import 'dart:convert';

import 'package:delivery_food_app/data/model/OrderModel.dart';
import 'package:delivery_food_app/data/model/error_model.dart';
import 'package:delivery_food_app/data/model/login_model.dart';
import 'package:delivery_food_app/data/model/user_model.dart';
import 'package:delivery_food_app/main.dart';
import 'package:delivery_food_app/utils/constantas.dart';
import 'package:delivery_food_app/utils/locator.dart';
import 'package:delivery_food_app/utils/prefs.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as getX;

class ApiService {
  late final Dio dio;

  ApiService() {
    dio = Dio();
    dio.options.baseUrl = "${BASE_URL}";
    dio.interceptors.add(dioRequestInspector.getDioRequestInterceptor());
  }

  Future<void> addHeadrs() async {
    print("HEADER WILL ADDED");
    dio.options.headers.addAll({
      'accept': 'application/json',
      'X-CSRF-TOKEN': '',
      'Authorization': 'Bearer ${getIt.get<PrefUtils>().getToken()}',
    });
    return;
  }

  var headers = {
    'accept': 'application/json',
    'X-CSRF-TOKEN': '',
    'Authorization': 'Bearer ${getIt.get<PrefUtils>().getToken()}',
  };

  Future<LoginResponse?> login(String email, String password) async {
    late final Response response;
    var data = json.encode({
      "email": email.trim(),
      "password": password.trim(),
    });

    try {
      response = await dio.post(
        "auth/login",
        data: data,
      );

      if (response.statusCode == 200) {
        return LoginResponse.fromJson(response.data);
      } else {
        getX.Get.showSnackbar(getX.GetSnackBar(
          messageText: Text(
            response.data["message"].toString(),
          ),
        ));
      }
    } catch (e) {
      getX.Get.showSnackbar(getX.GetSnackBar(
        messageText: Text(response.data["message"].toString()),
      ));
    }
    return null;
  }

  Future<UserModel> getUserInfo() async {
    try {
      var response = await dio.request(
        'auth/profile',
        // Replace with the actual user info API endpoint
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        final newData = ErrorModel.fromJson(response.data);
        getX.Get.snackbar("Error", newData.message);
        throw newData.message;
      }
    } catch (e) {
      throw e;
    }
  }

  Future<OrderModel> getOrders() async {
    try {
      var response = await dio.request(
        'orders',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
      );

      if (response.statusCode == 200) {
        print("===========================================${response.data}");
        return OrderModel.fromJson(response.data);
      } else {
        final newData = ErrorModel.fromJson(response.data);
        getX.Get.snackbar("Error", newData.message);
        return Future.value();
      }
    } catch (e) {
      throw e;
    }
  }
}
