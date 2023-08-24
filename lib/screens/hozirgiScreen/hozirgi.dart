import 'package:delivery_food_app/widgets/custom_height_app_bar.dart';
import 'package:flutter/material.dart';

class HozirgiScreen extends StatelessWidget {
  const HozirgiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size.fromHeight(100.0),
        title: Text("Текущие"),
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
                    return Container(
                      margin: EdgeInsets.all(12),
                      padding: EdgeInsets.all(12),
                      width: 360,
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
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
                                  Text(
                                    'Улица Ислама Каримова, 38 кв. 12',
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
                          SizedBox(
                            height: 15,
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,

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
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
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
                                      ),
                                      Text(
                                        '1 пакет(-а): 2 000',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Martian Mono',
                                          fontWeight: FontWeight.w300,
                                          height: 1.67,
                                        ),
                                      ),
                                      Text(
                                        '1 контейнер(-а): 2 000',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Martian Mono',
                                          fontWeight: FontWeight.w300,
                                          height: 1.67,
                                        ),
                                      ),
                                      Text(
                                        '=34 000 сум',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Martian Mono',
                                          fontWeight: FontWeight.w300,
                                          height: 1.67,
                                        ),
                                      ),

                                    ],
                                  ),
                                  Container(
                                    height: 1,
                                  )
                                ],
                              );
                            },
                            itemCount: 3,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Пожелание клиента',
                            style: TextStyle(
                              color: Color(0xFF201A19),
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,

                            ),
                            maxLines: 1,
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
                          ),
                          SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Оплата: Карта"),
                              Text("Сумма заказа: 94 000 сум"),
                              Text("Сумма доставки: 20 000 сум"),
                              Text(
                                'Итог: 140 000 сум',
                                style: TextStyle(
                                  color: Color(0xFF534341),
                                  fontSize: 20,
                                  fontFamily: 'Martian Mono',
                                  fontWeight: FontWeight.w500,
                                  height: 1.43,
                                ),
                              ),
                              
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(width: 240,),
                              Icon(Icons.hourglass_bottom_outlined, color: Colors.grey,),
                              Text(
                                'В процессе...',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 1.43,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '23.01.2023\n15:11',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 1.45,
                                ),
                              ),

                             Row(
                               children: [ Container(
                                 width: 99,
                                 height: 40,
                                 clipBehavior: Clip.antiAlias,
                                 decoration: ShapeDecoration(
                                   color: Color(0xFFFFF8F6),
                                   shape: RoundedRectangleBorder(
                                     side: BorderSide(width: 0.50, color: Color(0xFF857370)),
                                     borderRadius: BorderRadius.circular(100),
                                   ),
                                 ),
                                 child: Center(
                                   child: Text(
                                     'Отмена',
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
                               ),SizedBox(width: 10,), Container(
                                 width: 99,
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
                                     'Готово',
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 14,
                                       fontFamily: 'Roboto',
                                       fontWeight: FontWeight.w500,
                                       height: 1.43,
                                     ),
                                   )
                                 ),
                               )],
                             )
                            ],
                          )
                        ],
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
