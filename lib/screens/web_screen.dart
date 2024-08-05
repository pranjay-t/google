import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/login_screen.dart';
import 'package:google_clone/widgets/common/search.dart';
import 'package:google_clone/widgets/translation.dart';
import 'package:google_clone/widgets/web/web_buttons.dart';
import 'package:google_clone/widgets/web/web_footer.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(6),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: backgroundColor,
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Gmail',
                  style: TextStyle(color: primaryColor, fontSize: 13),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Image',
                  style: TextStyle(color: primaryColor, fontSize: 13),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/images/more-apps.svg',
                    colorFilter:const ColorFilter.mode(primaryColor, BlendMode.srcIn)),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  }));
                },
                color: const Color.fromARGB(255, 5, 133, 237),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: Text('Sign in'),
                ),
              )
            ],
          ),
          body: Column(
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                            child: Image(
                          image:
                              const AssetImage('assets/images/google-logo.png'),
                          height: size.height * 0.13,
                        )),
                        SizedBox(
                          height: size.height * 0.035,
                        ),
                        const Search(),
                        SizedBox(
                          height: size.height * 0.035,
                        ),
                        const WebButtons(),
                        SizedBox(
                          height: size.height * 0.035,
                        ),
                        const TranslationButton(),
                      ],
                    ),
                    const WebFooter(),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
