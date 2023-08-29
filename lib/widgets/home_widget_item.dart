import 'package:delivery_food_app/screens/info_screen/info_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeWidgetItem extends StatelessWidget {
  final String title;
  // final List items;
  final int itemcount;
  final String itemName;
  final int itemAmount;
  final num price;
  final String date;

  const HomeWidgetItem({
    super.key,
    required this.title,
    // required this.items,
    required this.price,
    required this.date, required this.itemcount, required this.itemName, required this.itemAmount,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(InfoScreen(
          title: "Заказ №32",
        ));
      },
      child: Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.all(12),
        width: 360,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xFFFFF8F6),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.5, color: Color(0xFFD8C2BE)),
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
                  title,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '•  $itemName',
                      style: TextStyle(
                        color: Color(0xFF201A19),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 1.43,
                      ),
                    ),
                    Text(
                      '$itemAmount шт.',
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
              itemCount: itemcount,
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
  }
}
