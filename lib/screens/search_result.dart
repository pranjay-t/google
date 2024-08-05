import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/services/search_api.dart';
import 'package:google_clone/widgets/common/search_header.dart';
import 'package:google_clone/widgets/common/search_res_component_state.dart';
import 'package:google_clone/widgets/common/search_res_footer.dart';
import 'package:google_clone/widgets/common/search_tabs.dart';

class SearchResult extends StatelessWidget {
  final String searchedQuery;
  final String start;

  const SearchResult(
      {super.key, required this.searchedQuery, required this.start});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Title(
      color: blueColor,
      title: searchedQuery,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: const EdgeInsets.fromLTRB(33, 26, 5, 20),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  SearchHeader(),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: (size.width < 750) ? 0 : 150),
                    child: SearchTabs(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FutureBuilder(
                    future: SearchApi.fetchData(
                        query: searchedQuery, start: start),
                    builder:
                        (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        Map<String, dynamic> data = snapshot.data!;
                        return Column(
                          children: [
                            Padding(
                              padding:
                            EdgeInsets.only(left: (size.width < 750) ? 0 : 150),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'About ${data['searchInformation']['formattedTotalResults']} results in ${data['searchInformation']['formattedSearchTime']} seconds',
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 112, 111, 111)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    children: [
                                      ListView.builder(
                                        physics: const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: data['items'].length,
                                          itemBuilder: (context, index) {
                                            return SearchResComponentState(
                                              link: data['items'][index]
                                                  ['formattedUrl'],
                                              text: data['items'][index]
                                                  ['title'],
                                              desc: data['items'][index]
                                                  ['snippet'],
                                            );
                                          }),
                                      SizedBox(height: 30),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextButton(
                                              onPressed: () {
                                                if (start != '0') {
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: (context) {
                                                        return SearchResult(
                                                            searchedQuery:
                                                                searchedQuery,
                                                            start: (int.parse(
                                                                        start) -
                                                                    10)
                                                                .toString());
                                                      },
                                                    ),
                                                  );
                                                }
                                              },
                                              child: Text(
                                                '<Prev',
                                                style:
                                                    TextStyle(color: blueColor),
                                              )),
                                          SizedBox(width: 30),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) {
                                                      return SearchResult(
                                                          searchedQuery:
                                                              searchedQuery,
                                                          start: (int.parse(
                                                                      start) +
                                                                  10)
                                                              .toString());
                                                    },
                                                  ),
                                                );
                                              },
                                              child: Text(
                                                'Next>',
                                                style:
                                                    TextStyle(color: blueColor),
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SearchResFooter(),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        Center(child: Text('Unknown error occured'));
                      }
                      return Column(
                        children: [
                          SizedBox(height: size.height*0.35,),
                          Center(
                            child: CircularProgressIndicator(
                              color: blueColor,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
