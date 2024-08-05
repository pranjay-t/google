import 'package:flutter/material.dart';
import 'package:google_clone/widgets/common/footer_button.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        Footerbutton(
          title: 'About',
        ),
        Footerbutton(
          title: 'Adveritsing',
        ),
        Footerbutton(
          title: 'Business',
        ),
        Footerbutton(
          title: 'How Search works',
        ),
        Footerbutton(
          title: 'Privacy',
        ),
        Footerbutton(
          title: 'Terms',
        ),
        Footerbutton(
          title: 'Settings',
        ),
      ],
    );
  }
}
