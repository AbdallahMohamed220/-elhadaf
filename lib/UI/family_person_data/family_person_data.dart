import 'package:elhadaf/UI/images/images.dart';
import 'package:elhadaf/UI/screens/login/login.dart';
import 'package:elhadaf/UI/screens/player_data/player_data.dart';
import 'package:elhadaf/UI/screens/video_player.dart';
import 'package:elhadaf/UI/style/colors.dart';
import 'package:flutter/material.dart';

class FamilyPersonDataScreen extends StatefulWidget {
  @override
  _FamilyPersonDataScreenState createState() => _FamilyPersonDataScreenState();
}

class _FamilyPersonDataScreenState extends State<FamilyPersonDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10.0),
                width: deviceWidth,
                height: deviceHeight * 0.25,
                decoration: BoxDecoration(
                  color: AppColor.appMainColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
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
                    Row(
                      children: [
                        Image.asset(AppImages.palyerImage),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Messi",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: AppColor.appPrimaryColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Text(
                                  "some extera data",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColor.appPrimaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(AppImages.playerWife),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: SizedBox(
                              width: 110,
                              child: Text(
                                'Antonela Roccuzzo',
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.appAccentColor,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              'wife',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffAE9B9B),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  top: 15,
                ),
                child: Text(
                    'content content content content content content content content content content content content content content content content content content content content content content content content content content content content content content content content'),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
