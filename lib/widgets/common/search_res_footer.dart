import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchResFooter extends StatelessWidget {
  const SearchResFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: footerColor,
          height: 50,
          padding: EdgeInsets.only(left: (size.width < 750) ? 10 : 150),
          child: Row(
            children: [
              Text(
                'India',
                style: TextStyle(color: Colors.grey[700]),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.grey[700],
                height: 20,
                width: 3,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '100016, Mumbai , Maharashtra',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(left: (size.width < 750) ? 10 : 150),
          color: footerColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                spacing: 10,
                alignment: WrapAlignment.center,
                children: [
                Text(
                  'Help',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                Text(
                  'Privacy',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                Text(
                  'Terms',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                Text(
                  'Send Feedback',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ])
            ],
          ),
        )
      ],
    );
  }
}
