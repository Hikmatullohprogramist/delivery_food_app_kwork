import 'package:delivery_food_app/widgets/custom_height_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoScreen extends StatelessWidget {
  final String title;

  const InfoScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomAppBar(preferredSize: Size.fromHeight(100), title: Text(title)),
      body: Stack(
        children: [
          Image.asset("assets/background_all.png"),
          Center(
            child: Column(
              children: [
                Container(
                  width: 360,
                  height: 234,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF8F6),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.50, color: Color(0xFFD8C2BE)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 360,
                        height: 80,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.50, color: Color(0xFFD8C2BE)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Манты с говядиной',
                                    style: TextStyle(
                                      color: Color(0xFF201A19),
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      height: 1.43,
                                    ),
                                  ),
                                  Text(
                                    'Цена за 1 шт. = 7 000 сум',
                                    style: TextStyle(
                                      color: Color(0xFF201A19),
                                      fontSize: 12,
                                      fontFamily: 'Martian Mono',
                                      fontWeight: FontWeight.w400,
                                      height: 1.67,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                width: 80,
                                height: 80,
                                child: FlutterLogo(
                                  size: 35,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 328,
                        height: 79,
                        padding:
                            const EdgeInsets.only(top: 5, left: 144, bottom: 3),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        '8 шт.: 56 000\n1 пакет(-а): 2 000\n2 контейнер(-а): 4 000\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Martian Mono',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '=34 000 сум',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Martian Mono',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Пожелание клиента',
                              style: TextStyle(
                                color: Color(0xFF201A19),
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 1.43,
                              ),
                            ),
                            Text(
                              'Не добавляйте соусы. Спасибо.',
                              style: TextStyle(
                                color: Color(0xFF201A19),
                                fontSize: 12,
                                fontFamily: 'Martian Mono',
                                fontWeight: FontWeight.w400,
                                height: 1.67,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 360,
                  height: 60,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF8F6),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.5, color: Color(0xFFD8C2BE)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: Color(0xFFB4271B),
                            shape: OvalBorder(),
                          ),
                          child: Icon(
                            Icons.payments,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Статус: Открыто",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Martian Mono',
                                fontWeight: FontWeight.bold,
                                height: 1.67,
                              ),
                            ),
                            Text(
                              'Наличными',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF201A19),
                                fontSize: 12,
                                fontFamily: 'Martian Mono',
                                fontWeight: FontWeight.w400,
                                height: 1.67,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 360,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF8F6),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.5, color: Color(0xFFD8C2BE)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: Color(0xFFB4271B),
                            shape: OvalBorder(),
                          ),
                          child: Icon(
                            Icons.delivery_dining,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Доставка",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Martian Mono',
                                fontWeight: FontWeight.bold,
                                height: 1.67,
                              ),
                            ),
                            Text(
                              'Адрес: Ислама Каримова 8, кв. 37\nСумма доставки: 30 000 сум',
                              style: TextStyle(
                                color: Color(0xFF201A19),
                                fontSize: 12,
                                fontFamily: 'Martian Mono',
                                fontWeight: FontWeight.w400,
                                height: 1.67,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Stack(
        children: [
          Image.asset(
            "assets/layer.png",
            color: Color(0xffFCDFA6),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                'ИТОГ: 116 000 СУМ',
                style: TextStyle(
                  color: Color(0xFF251A00),
                  fontSize: 14,
                  fontFamily: 'Martian Mono',
                  fontWeight: FontWeight.w600,
                  height: 1.43,
                  letterSpacing: 0.14,
                ),
              ),
              SizedBox(
                width: 40,
              ),
              InkWell(
                onTap: () {
                  Get.defaultDialog(
                    title: "Вы уверены?",
                    middleText: "Действие будет необратимо.",
                    actions: [
                      Container(
                        width: 67,
                        height: 40,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFFB4271B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Да',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 1.43,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 73,
                        height: 40,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.50, color: Color(0xFF857370)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Нет',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFB4271B),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 1.43,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                child: Container(
                  width: 56,
                  height: 56,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFDAD5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x4C000000),
                        blurRadius: 3,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                        spreadRadius: 3,
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Get.defaultDialog(
                    title: "Вы уверены?",
                    middleText: "Действие будет необратимо.",
                    actions: [
                      Container(
                        width: 67,
                        height: 40,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFFB4271B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Да',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 1.43,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 73,
                        height: 40,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.50, color: Color(0xFF857370)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Нет',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFB4271B),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 1.43,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );

                },
                child: Container(
                  width: 56,
                  height: 56,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF3E5E3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x4C000000),
                        blurRadius: 3,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                        spreadRadius: 3,
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.done,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
