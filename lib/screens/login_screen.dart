import 'package:flutter/material.dart';
import 'package:google_clone/screens/pallette.dart';
import 'package:google_clone/widgets/common/login_button.dart';
import 'package:google_clone/widgets/common/login_submit.dart';
import 'package:google_clone/widgets/common/login_textfield_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/signin_balls.png'),
            Center(
              child: Column(
                children: [
                  Text('Sign In',style: TextStyle(
                    fontSize: 45,
                    color: Pallete.whiteColor,
                  )),
                  SizedBox(height: 30,),
                  LoginButton(label: "Continue with Google",icon: 'assets/images/g_logo.svg',),
                  SizedBox(height: 10,),
                  LoginButton(label: "Continue with Facebook",icon: 'assets/images/f_logo.svg',horizonPad: 45,),
                  SizedBox(height: 15,),
                  Text('or',style: TextStyle(fontSize: 20),),
                  SizedBox(height: 15,),
                  LoginTextfieldButton(text: 'Email',),
                  SizedBox(height: 10,),
                  LoginTextfieldButton(text: 'Password',),
                  SizedBox(height: 20,),
                  LoginSubmit(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}