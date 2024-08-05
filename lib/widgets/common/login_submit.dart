import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_clone/screens/pallette.dart';

class LoginSubmit extends StatelessWidget {
  const LoginSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 140,vertical: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
          Pallete.gradient1,
          Pallete.gradient2,
          Pallete.gradient3,

        ])
      ),
      child: Text('Sign In',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
    );
  }
}