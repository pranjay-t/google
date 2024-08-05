import 'package:flutter/material.dart';

class Footerbutton extends StatelessWidget {
  final String title;
  const Footerbutton({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child:  Text(
        title,
        style:const TextStyle(color: Colors.grey),
      ),
    );
  }
}
