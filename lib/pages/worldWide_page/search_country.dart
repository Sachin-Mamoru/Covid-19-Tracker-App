import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SearchCountry extends SearchDelegate {
  final List countryList;

  SearchCountry(this.countryList);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final double shortestSideWidth = MediaQuery.of(context).size.width;
    final bool useMobileLayout = shortestSideWidth < 600.0;

    final suggestionList = query.isEmpty
        ? countryList
        : countryList
            .where((element) => element['country']
                .toString()
                .toLowerCase()
                .startsWith(query.toLowerCase()))
            .toList();

    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          return new Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(40.0, 2.0, 20.0, 2.0),
                height: 140.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      useMobileLayout ? 120.0 : shortestSideWidth / 2,
                      6.0,
                      20.0,
                      10.0),
                  child: Column(
                    mainAxisAlignment: useMobileLayout
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AutoSizeText(
                        suggestionList[index]['country'],
                        maxFontSize: 30.0,
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.teal,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 26.0),
                      ),
                      AutoSizeText(
                        'Infected:' + suggestionList[index]['cases'].toString(),
                        style: TextStyle(color: Colors.brown, fontSize: 16.0),
                        maxLines: 1,
                      ),
                      AutoSizeText(
                        'Active : ' +
                            suggestionList[index]['active'].toString(),
                        style: TextStyle(color: Colors.indigo, fontSize: 16.0),
                        maxLines: 1,
                      ),
                      AutoSizeText(
                        'Deaths : ' +
                            suggestionList[index]['deaths'].toString(),
                        style:
                            TextStyle(color: Colors.redAccent, fontSize: 16.0),
                        maxLines: 1,
                      ),
                      AutoSizeText(
                        'Recovered : ' +
                            suggestionList[index]['recovered'].toString(),
                        style: TextStyle(color: Colors.green, fontSize: 16.0),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: useMobileLayout ? 15.0 : shortestSideWidth / 2 - 180,
                top: 15.0,
                bottom: 15.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: FadeInImage.assetNetwork(
                    width: useMobileLayout ? 120.0 : 180.0,
                    placeholder: 'assets/images/WorldWide_Page/loader.gif',
                    image: suggestionList[index]['countryInfo']['flag'],
                    fadeInCurve: Curves.bounceIn,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          );
        });
  }
}
