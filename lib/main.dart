import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/layout_screen.dart';
import 'package:google_clone/screens/mobile_screen.dart';
import 'package:google_clone/screens/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google_clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home:const LayoutScreen(
        mobileScreenLayout: MobileScreen(),
        webScreenLayout: WebScreen(),
      ),
      
    );
  }
}

