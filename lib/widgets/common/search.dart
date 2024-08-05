import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_result.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(
        width: 0.7,
        color: searchBorder,
      ),
    );
    return SizedBox(
      width: 580,
      child: TextField(
        onSubmitted: (value) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return SearchResult(
                  searchedQuery: value,
                  start: '0',
                );
              },
            ),
          );
        },
        decoration: InputDecoration(
          border: border,
          focusedBorder: border,
          enabledBorder: border,
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(17, 10, 10, 10),
            child: SvgPicture.asset(
              'assets/images/search-icon.svg',
              colorFilter:
                  const ColorFilter.mode(primaryColor, BlendMode.srcIn),
              height: 20,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 17, 10),
            child: SvgPicture.asset(
              'assets/images/mic-icon.svg',
              height: 25,
            ),
          ),
        ),
      ),
    );
  }
}
