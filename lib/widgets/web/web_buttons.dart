import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class WebButtons extends StatelessWidget {
  const WebButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              padding:const EdgeInsets.symmetric(horizontal: 24,vertical: 15),
              onPressed: () {},
              color: searchColor,
              child: const Text('Google Search'),
              
            ),
            const SizedBox(width: 10,),
            MaterialButton(
              padding:const EdgeInsets.symmetric(horizontal: 24,vertical: 15),
              onPressed: () {},
              color: searchColor,
              child: const Text('I\'m Feeling Lucky'),
            )
          ],
        ),
      ],
    );
  }
}
