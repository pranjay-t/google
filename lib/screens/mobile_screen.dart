import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/login_screen.dart';
import 'package:google_clone/widgets/mobile/mobile_footer.dart';
import 'package:google_clone/widgets/common/search.dart';
import 'package:google_clone/widgets/translation.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Scaffold(
          appBar: AppBar(
            leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: SizedBox(
          width: size.width*0.5,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              indicatorColor: blueColor,
              labelColor: blueColor,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.grey,
              tabs: [
              Tab(text: 'All'),
              Tab(text: 'Images'),
              ]
            ),
          ),
        ),
            backgroundColor: backgroundColor,
            actions: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/images/more-apps.svg',
                    colorFilter:const ColorFilter.mode(primaryColor, BlendMode.srcIn)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: MaterialButton(
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
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
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
                          const TranslationButton(),
                        ],
                      ),
                      const MobileFooter(),
                    ],
                  ),
                )
              ],
            ),
          ));
  }
}
