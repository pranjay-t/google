import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/screens/pallette.dart';

class LoginButton extends StatelessWidget {
  final String label;
  final String icon;
  final double horizonPad;
  const LoginButton({super.key,required this.label,required this.icon, this.horizonPad=55});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border:Border.all(color: Pallete.borderColor,width: 4)
      ),
      padding: EdgeInsets.symmetric(horizontal: horizonPad,vertical: 10),
      child: TextButton.icon(
        onPressed: (){
      
      },
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory
      ),
      icon: SvgPicture.asset(icon,height: 30,colorFilter: ColorFilter.mode(Pallete.whiteColor, BlendMode.srcIn),),
      label: Text(label,style: TextStyle(fontSize: 16,color: Pallete.whiteColor),),
      ),
    );
  }
}