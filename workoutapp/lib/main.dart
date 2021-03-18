import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:workoutapp/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Places',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0XFF7049EA),
        accentColor: Color(0XFF8d6dee),
        scaffoldBackgroundColor: Color(0xFFf1edfd),
      ),
      home: HomePage(),
    );
  }
}
