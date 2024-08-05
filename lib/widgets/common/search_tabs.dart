import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: 580,
      child:size.width<750 ? DefaultTabController(
              length: 6,
              child: TabBar(
                isScrollable:true,
                splashFactory:  NoSplash.splashFactory,
                indicatorColor: blueColor,
                labelColor: blueColor,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Colors.grey,
                tabAlignment:TabAlignment.start,
                tabs: [
                Tab(text: 'All'),
                Tab(text: 'Images'),
                Tab(text: 'Videos'),
                Tab(text: 'News'),
                Tab(text: 'Shopping'),
                Tab(
                  child: Row(
                  children: [
                    Icon(Icons.more_vert),
                    Text('More'),
                  ],
                ),),
      
                ]
              ),
            ) : DefaultTabController(
              length: 6,
              child: TabBar(
                isScrollable: false,
                splashFactory:  NoSplash.splashFactory,
                indicatorColor: blueColor,
                labelColor: blueColor,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Colors.grey,
                tabs: [
                Tab(text: 'All'),
                Tab(text: 'Images'),
                Tab(text: 'Videos'),
                Tab(text: 'News'),
                Tab(text: 'Shopping'),
                Tab(
                  child: Row(
                  children: [
                    Icon(Icons.more_vert),
                    Text('More'),
                  ],
                ),),
      
                ]
              ),
            ),
    );
  }
}