import 'package:flutter/material.dart';

import 'UI/screens/login/login.dart';
import 'UI/screens/video_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ElHADAF',
      home: LoginScreen(),
    );
  }
}
