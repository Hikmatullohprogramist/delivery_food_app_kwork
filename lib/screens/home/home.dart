import 'package:delivery_food_app/screens/info_screen/info_screen.dart';
import 'package:delivery_food_app/widgets/custom_height_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size.fromHeight(100.0),
        title: Text('Новые'),
        action: [
          CircleAvatar(
            radius: 40,
            child: Image.asset(
              "assets/avatar.png",
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.asset("assets/background_all.png"),
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(InfoScreen(title: "Заказ №32",));
                      },
                      child: Container(
                        margin: EdgeInsets.all(12),
                        padding: EdgeInsets.all(12),
                        width: 360,
                        height: 276,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFF8F6),
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1.5, color: Color(0xFFD8C2BE)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFB4271B),
                                    shape: OvalBorder(),
                                  ),
                                  child: Image.asset("assets/food_bank.png"),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Заказ №23',
                                  style: TextStyle(
                                    color: Color(0xFF201A19),
                                    fontSize: 22,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 1.27,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '•  Плов Чайханский с бараниной',
                                      style: TextStyle(
                                        color: Color(0xFF201A19),
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        height: 1.43,
                                      ),
                                    ),
                                    Text(
                                      '1 шт.',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        height: 1.43,
                                      ),
                                    )
                                  ],
                                );
                              },
                              itemCount: 3,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 328,
                              child: Text(
                                'Сумма заказа: 140 000 сум',
                                style: TextStyle(
                                  color: Color(0xFF534341),
                                  fontSize: 20,
                                  fontFamily: 'Martian Mono',
                                  fontWeight: FontWeight.w500,
                                  height: 1.43,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              '23.01.2023\n15:11',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 1.45,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
