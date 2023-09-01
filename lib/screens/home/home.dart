import 'package:delivery_food_app/data/service/service.dart';
import 'package:delivery_food_app/screens/home/home_view_model.dart';
import 'package:delivery_food_app/widgets/avatar.dart';
import 'package:delivery_food_app/widgets/custom_height_app_bar.dart';
import 'package:delivery_food_app/widgets/home_widget_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:provider/provider.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

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

        },
      ),
      appBar: CustomAppBar(
        preferredSize: Size.fromHeight(100.0),
        title: Text('Новые'),
        action: [
          AvatarWidget(),
        ],
      ),
      body: Consumer<HomeViewModel>(
        builder: (context, value, child) {
          if (value.progress) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Stack(
              children: [
                Image.asset("assets/background_all.png"),
                Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: value.ordersList!.data!.length,
                        itemBuilder: (context, index) {
                          return HomeWidgetItem(
                            title:
                                "Заказ № ${value.ordersList!.data![index].id}",
                            price: 123123,
                            date: value.ordersList!.data![index].createdAt
                                .toString(),
                            itemcount:
                                value.ordersList!.data![index].items!.length,
                            itemName: value
                                .ordersList!.data![index].items![index].id
                                .toString(),
                            itemAmount: int.parse(value
                                .ordersList!.data![index].items![index].quantity
                                .toString()),
                          );
                        },
                      ),
                    )
                  ],
                )
              ],
            );
          }
        },
      ),
    );
  }
}
