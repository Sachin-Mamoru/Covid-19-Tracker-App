import 'package:auto_size_text/auto_size_text.dart';
import 'package:covid_19_tracker/pages/worldWide_page/search_country.dart';
import 'package:flutter/material.dart';

class WorldWidePage extends StatefulWidget {
  @override
  _WorldWidePageState createState() => new _WorldWidePageState();
}

class _WorldWidePageState extends State<WorldWidePage> {
  List countryData = [];

  // fetchCountryData() async {

  //   http.Response response =
  //       await http.get('https://corona.lmao.ninja/v2/countries');
  //   setState(() {
  //     countryData = json.decode(response.body);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                  context: context, delegate: SearchCountry(countryData));
            },
          )
        ],
        title: Text('Country Stats'),
      ),
      body: 1 == 0 //countryData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                // return Card(
                //   child: Container(
                //     height: 130,
                //     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                //     child: Row(
                //       children: <Widget>[
                //         Container(
                //           width: 200,
                //           margin: EdgeInsets.symmetric(horizontal: 10),
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: <Widget>[
                //               Text(
                //                 'country name', //countryData[index]['country'],
                //                 style: TextStyle(fontWeight: FontWeight.bold),
                //               ),
                //               Image.network(
                //                 //countryData[index]['countryInfo']['flag'],
                //                 'assets/images/Cover/background-start.jpg',
                //                 height: 50,
                //                 width: 60,
                //               ),
                //             ],
                //           ),
                //         ),
                //         Expanded(
                //             child: Container(
                //           child: Column(
                //             children: <Widget>[
                //               Text(
                //                 'CONFIRMED:' +
                //                     '32312', //countryData[index]['cases'].toString(),
                //                 style: TextStyle(
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.red),
                //               ),
                //               Text(
                //                 'ACTIVE:' +
                //                     '42344', //countryData[index]['active'].toString(),
                //                 style: TextStyle(
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.blue),
                //               ),
                //               Text(
                //                 'RECOVERED:' +
                //                     '234', //countryData[index]['recovered'].toString(),
                //                 style: TextStyle(
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.green),
                //               ),
                //               Text(
                //                 'DEATHS:' +
                //                     '2343', //countryData[index]['deaths'].toString(),
                //                 style: TextStyle(
                //                     fontWeight: FontWeight.bold,
                //                     color: Theme.of(context).brightness ==
                //                             Brightness.dark
                //                         ? Colors.grey[100]
                //                         : Colors.grey[900]),
                //               ),
                //             ],
                //           ),
                //         ))
                //       ],
                //     ),
                //   ),
                // );
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
                        padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            AutoSizeText(
                              'country name',
                              maxLines: 2,
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24.0),
                            ),
                            AutoSizeText(
                              'deaths - 3243',
                              style: TextStyle(color: Colors.grey),
                              maxLines: 1,
                            ),
                            // Divider(),
                            // Expanded(
                            //   flex: 1,
                            //   child: Row(
                            //     children: <Widget>[
                            //       Flexible(
                            //         flex: 1,
                            //         child: Container(
                            //           padding: EdgeInsets.all(5.0),
                            //           width: 70.0,
                            //           decoration: BoxDecoration(
                            //             color: Theme.of(context).accentColor,
                            //             borderRadius:
                            //                 BorderRadius.circular(10.0),
                            //           ),
                            //           alignment: Alignment.center,
                            //           child: AutoSizeText(
                            //             'infected - 9234',
                            //             maxLines: 1,
                            //           ),
                            //         ),
                            //       ),
                            //       SizedBox(width: 15.0),
                            //       Flexible(
                            //         flex: 1,
                            //         child: Container(
                            //           padding: EdgeInsets.all(4.0),
                            //           width: 70.0,
                            //           decoration: BoxDecoration(
                            //             color: Theme.of(context).accentColor,
                            //             borderRadius:
                            //                 BorderRadius.circular(10.0),
                            //           ),
                            //           alignment: Alignment.center,
                            //           child: Text('fsfsf-3345'),
                            //         ),
                            //       )
                            //     ],
                            //   ),
                            // ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 3.0, top: 1.0),
                                child: AutoSizeText(
                                  'active - 423432',
                                  style: TextStyle(color: Colors.orange[700]),
                                  maxLines: 1,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: AutoSizeText(
                                  'efef',
                                  style: TextStyle(color: Colors.orange[700]),
                                  maxLines: 1,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: AutoSizeText(
                                  'ewfwef',
                                  style: TextStyle(color: Colors.brown),
                                  maxLines: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15.0,
                      top: 15.0,
                      bottom: 15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: FadeInImage.assetNetwork(
                          width: 120.0,
                          placeholder:
                              'assets/images/Cover/background-start.jpg',
                          image: 'assets/images/Cover/background-start.jpg',
                          fadeInCurve: Curves.bounceIn,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                );
              },
              itemCount: 5 //countryData == null ? 0 : countryData.length,
              ),
    );
  }
}
