import 'package:elhadaf/UI/images/images.dart';
import 'package:elhadaf/UI/screens/login/login.dart';
import 'package:elhadaf/UI/screens/video_player.dart';
import 'package:elhadaf/UI/style/colors.dart';
import 'package:flutter/material.dart';

class KeyPersonProfile extends StatefulWidget {
  @override
  _KeyPersonProfileState createState() => _KeyPersonProfileState();
}

class _KeyPersonProfileState extends State<KeyPersonProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10.0),
                width: deviceWidth,
                height: deviceHeight * 0.4,
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
                      height: 15,
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
                                "Abdullah elismaili",
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
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        PlayerInformations(
                          label: 'Rate',
                          labelData: '8/10',
                          imagePath: AppImages.keyPersonRate,
                        ),
                        PlayerInformations(
                          label: 'Negotiations',
                          labelData: '6/10',
                          imagePath: AppImages.keyPersonNegotiations,
                        ),
                        PlayerInformations(
                          label: 'connections',
                          labelData: '9/10',
                          imagePath: AppImages.keyPersonConnections,
                        ),
                        PlayerInformations(
                          label: 'players',
                          labelData: '2/20',
                          imagePath: AppImages.keyPersonPlayers,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  'Address',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  'Data',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: deviceWidth,
                height: deviceHeight * 0.25,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (_, i) => Row(
                    children: [
                      Image.asset(
                        AppImages.palyerImage,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Abdullah elismaili",
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
                                  fontSize: 10,
                                  color: AppColor.appAccentColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 5.0),
                child: Text(
                  'problem for Abdullah ',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SamplePlayer(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: deviceWidth,
                  height: 210,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[200],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InteractiveViewer(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        AppImages.palyerStatistics,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: deviceWidth,
                  height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[200],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Title'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                            'content content content content content content content content content content content content content content content content content content content content content content content content'),
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

// ignore: must_be_immutable
class PlayerInformations extends StatelessWidget {
  String label;
  String labelData;
  String imagePath;
  PlayerInformations({
    this.label,
    this.labelData,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: AppColor.appPrimaryColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            labelData,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColor.appPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
