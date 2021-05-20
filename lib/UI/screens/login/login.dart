import 'package:elhadaf/UI/images/images.dart';
import 'package:elhadaf/UI/notification/notification.dart';
import 'package:elhadaf/UI/screens/home/home.dart';
import 'package:elhadaf/UI/style/colors.dart';
import 'package:elhadaf/UI/widgets/action_button.dart';
import 'package:flutter/material.dart';

var deviceWidth;
var deviceHeight;

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: deviceWidth,
          height: deviceHeight,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: deviceHeight / 1.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    scale: 0.5,
                    image: AssetImage(
                      AppImages.introPalyer,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 180,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AppImages.appLogo,
                        width: 80,
                        height: 60,
                      ),
                      Text(
                        "Elhadaf",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "Players' agents",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: deviceWidth * 0.17,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.appMainColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: InputWrapper(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            top: 25,
            bottom: 20,
          ),
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Email",
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        ActionButton(
          label: 'login',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => NotificationScreen(),
              ),
            );
          },
        )
      ],
    );
  }
}
