// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:delivery_food_app/data/model/login_model.dart';
import 'package:delivery_food_app/data/model/order_model.dart';
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
    dio.options.headers.addAll({
      'token': "${getIt.get<PrefUtils>().getToken()}",
      'accept': 'application/json',
      'Content-Type': 'application/json',
      'X-CSRF-TOKEN': ''
    });
    return;
  }

  Future<LoginResponse?> login(String email, String password) async {
    var data = json.encode({
      "email": email.trim(),
      "password": password.trim(),
    });

    try {
      final response = await dio.post(
        "auth/login",
        data: data,
      );

      if (response.statusCode == 200) {
        return LoginResponse.fromJson(response.data);
      } else {
        getX.Get.showSnackbar(getX.GetSnackBar(
          messageText: Text(
            response.statusMessage.toString(),
          ),
        ));
      }
    } catch (e) {
      getX.Get.showSnackbar(getX.GetSnackBar(
        messageText: Text(e.toString()),
      ));
    }
    return null;
  }

  Future<OrderModel> getOrders(int pageIndex) async {
    try {
      final response = await dio.get("orders");

      if (response.statusCode == 200) {
        return OrderModel.fromJson(response.data);
      } else {

        final errorMessage = response.statusMessage ?? 'Unknown error';
        throw DioError(
          response: response,
          error: 'Failed to fetch orders: $errorMessage',
          requestOptions: RequestOptions(),
        );
      }
    } catch (e) {
      throw DioError(
        error: 'Error during order retrieval: $e',
        requestOptions: RequestOptions(),
      );
    }
  }
}
