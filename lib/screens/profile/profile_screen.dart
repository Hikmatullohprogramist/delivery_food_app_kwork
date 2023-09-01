import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery_food_app/screens/profile/profile_view_model.dart';
import 'package:delivery_food_app/widgets/custom_height_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    Provider.of<UserInfoViewModel>(context, listen: false).getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size.fromHeight(100),
        title: Text("Аккаунт"),
        action: [],
      ),
      body: Consumer<UserInfoViewModel>(
        builder: (context, value, child) {
          if (value.progress) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Stack(
              children: [
                Image.asset("assets/background_all.png"),
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 100,
                        child: CachedNetworkImage(
                          imageUrl:
                              "${value.userModel!.user.profilePhotoUrl}&format=png",
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          fit: BoxFit.fill,
                          errorWidget: (context, url, error) =>
                              Icon(Icons.person),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        value.userModel!.user?.name.toUpperCase() ?? "NULL",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 360,
                        height: 60,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFF8F6),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.5, color: Color(0xFFD8C2BE)),
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
                                  Icons.access_time_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
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
                            side: BorderSide(
                                width: 1.5, color: Color(0xFFD8C2BE)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  Icons.store,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '“У Амира”\n',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        height: 1.43,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'ул. Хамзиева, 31\n+998 342 22 44 59\nВремя работы: 09:00 - 00:00',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Martian Mono',
                                        fontWeight: FontWeight.w400,
                                        height: 1.67,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 360,
                        height: 60,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFF8F6),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.5, color: Color(0xFFD8C2BE)),
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
                                  Icons.credit_card_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Карта для оплаты:\n',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        height: 1.43,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '4321 3122 3213 1333',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Martian Mono',
                                        fontWeight: FontWeight.w500,
                                        height: 1.67,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }
        },
      ),
    );
  }
}
