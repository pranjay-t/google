import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const LayoutScreen({super.key,required this.mobileScreenLayout,required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth > 650){
            return webScreenLayout;
          }
          else{
            return mobileScreenLayout;
          }
      },
      )
    );
  }
}