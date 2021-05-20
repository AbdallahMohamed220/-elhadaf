import 'package:elhadaf/UI/images/images.dart';
import 'package:elhadaf/UI/photo_viewer/photo_viewer.dart';
import 'package:elhadaf/UI/screens/login/login.dart';
import 'package:elhadaf/UI/screens/player_data/player_data.dart';
import 'package:elhadaf/UI/screens/video_player.dart';
import 'package:elhadaf/UI/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _locations = [
    'Location A',
    'Location B',
    'Location C',
    'Location D'
  ]; // Option 2
  String _selectedLocation = 'location';

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
                height: deviceHeight * 0.5,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "search",
                                hintStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: AppColor.appPrimaryColor,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: AppColor.appPrimaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 20.0,
                              top: 30,
                            ),
                            child: DropdownButton(
                              underline: Divider(
                                thickness: 0.9,
                                color: AppColor.appPrimaryColor,
                              ),
                              iconEnabledColor: AppColor.appMainColor,
                              isExpanded: true,
                              iconSize: 30,
                              hint: Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Text(
                                  _selectedLocation,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColor.appPrimaryColor,
                                  ),
                                ),
                              ),
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedLocation = newValue;
                                });
                              },
                              style: TextStyle(
                                color: AppColor.appPrimaryColor,
                              ),
                              items: _locations.map((location) {
                                return DropdownMenuItem(
                                  child: new Text(
                                    location,
                                    style: TextStyle(
                                      color: AppColor.appMainColor,
                                    ),
                                  ),
                                  value: location,
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (_, i) => Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => PlayerData(),
                                    ),
                                  );
                                },
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
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 40,
                padding: EdgeInsets.only(
                  left: 8,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (_, i) => InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text('Content (section a)'),
                    ),
                  ),
                ),
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => PhotoViewer(
                              imagePath: AppImages.palyerStatistics,
                            ),
                          ),
                        );
                      },
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
