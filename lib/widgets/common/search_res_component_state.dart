import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResComponentState extends StatefulWidget {
  final String link;
  final String text;
  final String desc;
  const SearchResComponentState(
      {super.key,
      required this.link,
      required this.text,
      required this.desc});

  @override
  State<SearchResComponentState> createState() =>
      _SearchResComponentStateState();
}

class _SearchResComponentStateState extends State<SearchResComponentState> {
  bool _showUnderline = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () async {
            if (await canLaunchUrl(Uri.parse(widget.link))) {
              await launchUrl(Uri.parse(widget.link));
            } else {
              SnackBar(content: Text('Could not launch ${Uri.parse(widget.link)}'));
            }
          },
          onHover: (hovering) {
            setState(() {
              _showUnderline = hovering;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.link,style: TextStyle(fontSize: 12)),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 20,
                  color: blueColor,
                  decoration: _showUnderline
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  decorationColor: blueColor,
                ),
              ),
            ],
          ),
        ),
        Text(widget.desc,style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 195, 191, 191)),),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
