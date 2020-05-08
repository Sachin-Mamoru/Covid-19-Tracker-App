import 'dart:convert';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:covid_19_tracker/pages/worldWide_page/search_country.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WorldWidePage extends StatefulWidget {
  @override
  _WorldWidePageState createState() => new _WorldWidePageState();
}

class _WorldWidePageState extends State<WorldWidePage> {
  List countryData;

  fetchCountryData() async {
    http.Response response =
        await http.get('https://corona.lmao.ninja/v2/countries');
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchCountryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool useMobileLayout = shortestSide < 600.0;

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              if (countryData != null)
                showSearch(
                    context: context, delegate: SearchCountry(countryData));
            },
          )
        ],
        title: Text('Worldwide Data'),
      ),
      body: countryData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
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
                            useMobileLayout ? 120.0 : shortestSide / 2 + 170.0,
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
                              countryData[index]['country'],
                              maxFontSize: 30.0,
                              maxLines: 1,
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 26.0),
                            ),
                            AutoSizeText(
                              'Infected:' +
                                  countryData[index]['cases'].toString(),
                              style: TextStyle(
                                  color: Colors.brown, fontSize: 16.0),
                              maxLines: 1,
                            ),
                            AutoSizeText(
                              'Active : ' +
                                  countryData[index]['active'].toString(),
                              style: TextStyle(
                                  color: Colors.indigo, fontSize: 16.0),
                              maxLines: 1,
                            ),
                            AutoSizeText(
                              'Deaths : ' +
                                  countryData[index]['deaths'].toString(),
                              style: TextStyle(
                                  color: Colors.redAccent, fontSize: 16.0),
                              maxLines: 1,
                            ),
                            AutoSizeText(
                              'Recovered : ' +
                                  countryData[index]['recovered'].toString(),
                              style: TextStyle(
                                  color: Colors.green, fontSize: 16.0),
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: useMobileLayout ? 15.0 : shortestSide / 2,
                      top: 15.0,
                      bottom: 15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: FadeInImage.assetNetwork(
                          width: useMobileLayout ? 120.0 : 180.0,
                          placeholder:
                              'assets/images/WorldWide_Page/loader.gif',
                          image: countryData[index]['countryInfo']['flag'],
                          fadeInCurve: Curves.bounceIn,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                );
              },
              itemCount: countryData == null ? 0 : countryData.length,
            ),
    );
  }
}
