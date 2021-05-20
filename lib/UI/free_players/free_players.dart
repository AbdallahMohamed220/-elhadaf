import 'package:elhadaf/UI/images/images.dart';
import 'package:elhadaf/UI/screens/login/login.dart';
import 'package:elhadaf/UI/style/colors.dart';
import 'package:flutter/material.dart';

class FreePlayerScreen extends StatefulWidget {
  @override
  _FreePlayerScreenState createState() => _FreePlayerScreenState();
}

class _FreePlayerScreenState extends State<FreePlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 15,
                ),
                child: Text(
                  "Players",
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColor.appAccentColor,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.only(
                  left: 8,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (_, i) => InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                          color: AppColor.appMainColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            'Free players',
                            style: TextStyle(
                              color: AppColor.appPrimaryColor,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: deviceHeight * 0.85,
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (_, i) => Row(
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Image.asset(AppImages.palyerImage)),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Messi",
                              style: TextStyle(
                                fontSize: 25,
                                color: AppColor.appAccentColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(
                                "some extera data",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.appAccentColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
