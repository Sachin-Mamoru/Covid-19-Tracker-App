import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AffectedCountriesPage extends StatefulWidget {
  @override
  _AffectedCountriesPageState createState() =>
      new _AffectedCountriesPageState();
}

class _AffectedCountriesPageState extends State<AffectedCountriesPage> {
  List countryData;
  fetchCountryData() async {
    http.Response response =
        await http.get('https://corona.lmao.ninja/v2/countries?sort=cases');
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Mostly Affected Countries'),
      ),
      body: countryData == null
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                countryData[0]['countryInfo']['flag'],
                                height: 45,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                countryData[0]['country'],
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Infected : ' +
                                    countryData[0]['cases'].toString(),
                                style: TextStyle(color: Colors.brown),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Active : ' +
                                    countryData[0]['active'].toString(),
                                style: TextStyle(color: Colors.indigo),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Deaths : ' +
                                    countryData[0]['deaths'].toString(),
                                style: TextStyle(color: Colors.redAccent),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Recovered : ' +
                                    countryData[0]['recovered'].toString(),
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                countryData[1]['countryInfo']['flag'],
                                height: 45,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                countryData[1]['country'],
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Infected : ' +
                                    countryData[1]['cases'].toString(),
                                style: TextStyle(color: Colors.brown),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Active : ' +
                                    countryData[1]['active'].toString(),
                                style: TextStyle(color: Colors.indigo),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Deaths : ' +
                                    countryData[1]['deaths'].toString(),
                                style: TextStyle(color: Colors.redAccent),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Recovered : ' +
                                    countryData[1]['recovered'].toString(),
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                countryData[2]['countryInfo']['flag'],
                                height: 45,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                countryData[2]['country'],
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Infected : ' +
                                    countryData[2]['cases'].toString(),
                                style: TextStyle(color: Colors.brown),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Active : ' +
                                    countryData[2]['active'].toString(),
                                style: TextStyle(color: Colors.indigo),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Deaths : ' +
                                    countryData[2]['deaths'].toString(),
                                style: TextStyle(color: Colors.redAccent),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Recovered : ' +
                                    countryData[2]['recovered'].toString(),
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                countryData[3]['countryInfo']['flag'],
                                height: 45,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                countryData[3]['country'],
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Infected : ' +
                                    countryData[3]['cases'].toString(),
                                style: TextStyle(color: Colors.brown),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Active : ' +
                                    countryData[3]['active'].toString(),
                                style: TextStyle(color: Colors.indigo),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Deaths : ' +
                                    countryData[3]['deaths'].toString(),
                                style: TextStyle(color: Colors.redAccent),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Recovered : ' +
                                    countryData[3]['recovered'].toString(),
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                countryData[4]['countryInfo']['flag'],
                                height: 45,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                countryData[4]['country'],
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Infected : ' +
                                    countryData[4]['cases'].toString(),
                                style: TextStyle(color: Colors.brown),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Active : ' +
                                    countryData[4]['active'].toString(),
                                style: TextStyle(color: Colors.indigo),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Deaths : ' +
                                    countryData[4]['deaths'].toString(),
                                style: TextStyle(color: Colors.redAccent),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Recovered : ' +
                                    countryData[4]['recovered'].toString(),
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                countryData[5]['countryInfo']['flag'],
                                height: 45,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                countryData[5]['country'],
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Infected : ' +
                                    countryData[5]['cases'].toString(),
                                style: TextStyle(color: Colors.brown),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Active : ' +
                                    countryData[5]['active'].toString(),
                                style: TextStyle(color: Colors.indigo),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Deaths : ' +
                                    countryData[5]['deaths'].toString(),
                                style: TextStyle(color: Colors.redAccent),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Recovered : ' +
                                    countryData[5]['recovered'].toString(),
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
