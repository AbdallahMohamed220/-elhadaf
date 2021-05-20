import 'package:elhadaf/UI/family_person_data/family_person_data.dart';
import 'package:elhadaf/UI/images/images.dart';
import 'package:elhadaf/UI/key_person_pofile/key_person_profile.dart';
import 'package:elhadaf/UI/screens/login/login.dart';
import 'package:elhadaf/UI/style/colors.dart';
import 'package:flutter/material.dart';

class PlayerData extends StatefulWidget {
  @override
  _PlayerDataState createState() => _PlayerDataState();
}

class _PlayerDataState extends State<PlayerData> {
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
                height: deviceHeight * 0.75,
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
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        PlayerInformations(
                          label: 'Weight',
                          labelData: '75KG',
                          imagePath: AppImages.palyerWeight,
                        ),
                        PlayerInformations(
                          label: 'Length',
                          labelData: '169 M',
                          imagePath: AppImages.palyerLength,
                        ),
                        PlayerInformations(
                          label: 'strength',
                          labelData: '169 S',
                          imagePath: AppImages.palyerStrength,
                        ),
                        PlayerInformations(
                          label: 'location',
                          labelData: 'spain',
                          imagePath: AppImages.palyerLocation,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Divider(
                        color: AppColor.appPrimaryColor,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PlayerInformations(
                            label: 'MBTI',
                            labelData: 'View',
                            imagePath: AppImages.personIcon,
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(
                                deviceWidth * 0.7,
                                55,
                              ),
                              primary: AppColor.appPrimaryColor,
                            ),
                            child: Text(
                              'Prf',
                              style: TextStyle(
                                color: AppColor.appMainColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PlayerInformations(
                            label: 'DNA',
                            labelData: 'View',
                            imagePath: AppImages.playerDna,
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(
                                deviceWidth * 0.7,
                                55,
                              ),
                              primary: AppColor.appPrimaryColor,
                            ),
                            child: Text(
                              'Prf',
                              style: TextStyle(
                                color: AppColor.appMainColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
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
                  'Agents',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  'Person Name',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  'Key Person',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  'Person Name',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  'Player Career',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      '1   FC Barcelona ',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: deviceWidth * 0.1,
                    ),
                    Text(
                      '2/1/2002',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Family',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                children: [
                  PlayerFamilyInformations(
                    imagePath: AppImages.playerWife,
                    label: 'Antonela Roccuzzo',
                    labelData: 'wife',
                  ),
                  PlayerFamilyInformations(
                    imagePath: AppImages.playerSonOne,
                    label: 'Mateo Messi Roccuzzo',
                    labelData: 'son',
                  ),
                  PlayerFamilyInformations(
                    imagePath: AppImages.playerSonTwo,
                    label: 'Ciro Messi Roccuzzo',
                    labelData: 'son',
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => KeyPersonProfile(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      deviceWidth * 0.9,
                      60,
                    ),
                    primary: AppColor.appMainColor,
                  ),
                  child: Text(
                    'Send all',
                    style: TextStyle(
                      color: AppColor.appPrimaryColor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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

// ignore: must_be_immutable
class PlayerFamilyInformations extends StatelessWidget {
  String label;
  String labelData;
  String imagePath;
  PlayerFamilyInformations({
    this.label,
    this.labelData,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => FamilyPersonDataScreen(),
                ),
              );
            },
            child: Image.asset(imagePath)),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: SizedBox(
            width: 110,
            child: Text(
              label,
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
            labelData,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xffAE9B9B),
            ),
          ),
        ),
      ],
    );
  }
}
