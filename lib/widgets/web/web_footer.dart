import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/common/footer_button.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child:const Padding(
        padding: EdgeInsets.all(10),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Footerbutton(title: 'About',),
                Footerbutton(title: 'Adveritsing',),
                Footerbutton(title: 'Business',),
                Footerbutton(title: 'How Search works',),
              ],
            ),
            Row(
              children: [
                Footerbutton(title: 'Privacy',),
                Footerbutton(title: 'Terms',),
                Footerbutton(title: 'Settings',),
              ],
            ),
          ],
        ),
        ),
      );
  }
}
