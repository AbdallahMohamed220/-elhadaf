import 'package:elhadaf/UI/images/images.dart';
import 'package:elhadaf/UI/screens/login/login.dart';
import 'package:elhadaf/UI/style/colors.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 15.0),
                width: deviceWidth,
                height: deviceHeight * 0.15,
                decoration: BoxDecoration(
                  color: AppColor.appMainColor,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(AppImages.appLogo),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Elhadaf",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: AppColor.appPrimaryColor),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Text(
                                  "Players' agents",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColor.appPrimaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Spacer(),
                        Spacer(),
                        Expanded(
                          child: IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: AppColor.appPrimaryColor,
                              size: 28,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
              Container(
                height: deviceHeight * 0.8,
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (_, i) => ListTile(
                    leading: Image.asset(
                      AppImages.appnotification,
                    ),
                    title: Text(
                      'The birthday of the player Messi',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      'Do not forget to congratulate',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffC2C2C2),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
