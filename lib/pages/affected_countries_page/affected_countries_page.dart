import 'dart:convert';
import 'package:covid_19_tracker/pages/affected_countries_page/widget/country_widget.dart';
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
                      CountryWidget.countryWidget(countryData, 0),
                      CountryWidget.countryWidget(countryData, 1)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CountryWidget.countryWidget(countryData, 2),
                      CountryWidget.countryWidget(countryData, 3)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CountryWidget.countryWidget(countryData, 4),
                      CountryWidget.countryWidget(countryData, 5)
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
