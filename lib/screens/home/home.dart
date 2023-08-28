import 'dart:convert';

import 'package:delivery_food_app/data/service/service.dart';
import 'package:delivery_food_app/screens/home/home_view_model.dart';
import 'package:delivery_food_app/screens/info_screen/info_screen.dart';
import 'package:delivery_food_app/widgets/avatar.dart';
import 'package:delivery_food_app/widgets/custom_height_app_bar.dart';
import 'package:delivery_food_app/widgets/home_widget_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
       ApiService().getOrders();
        },
      ),
      appBar: CustomAppBar(
        preferredSize: Size.fromHeight(100.0),
        title: Text('Новые'),
        action: [
          AvatarWidget(),
        ],
      ),
      body: Consumer<HomeViewModel>(builder: (context, value, child) => Stack(
        children: [
          Image.asset("assets/background_all.png"),
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: value.ordersList!.data.length,
                  itemBuilder: (context, index) {
                    return HomeWidgetItem(title: "TITLE", items: value.ordersList!.data, price: 123123, date: "2023020330");
                  },
                ),
              )
            ],
          )
        ],
      ),),
    );
  }
}
