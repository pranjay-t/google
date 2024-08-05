import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/screens/search_result.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const border = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(
          width: 0,
          color: backgroundColor,
        ));
    return Row(
      children: [
        Image(
          image: const AssetImage('assets/images/google-logo.png'),
          height: size.height * 0.045,
        ),
        const SizedBox(
          width: 29,
        ),
        SizedBox(
          width: size.width * 0.47,
          // width: 750,
          child: TextFormField(
            onFieldSubmitted: (value) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SearchResult(searchedQuery: value, start: '0');
                  },
                ),
              );
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: searchColor,
              border: border,
              focusedBorder: border,
              enabledBorder: border,
              // enabled: true,
              suffixIcon: Container(
                constraints: const BoxConstraints(maxWidth: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/images/mic-icon.svg',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SvgPicture.asset(
                      'assets/images/search-icon.svg',
                      colorFilter:
                          const ColorFilter.mode(blueColor, BlendMode.srcIn),
                    ),
                    SizedBox(
                      width: 15,
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
