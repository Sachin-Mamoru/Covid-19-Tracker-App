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
    final double shortestSideWidth = MediaQuery.of(context).size.width;
    final bool useMobileLayout = shortestSideWidth < 600.0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Mostly Affected Countries'),
      ),
      body: countryData == null
          ? Center(child: CircularProgressIndicator())
          : GridView.count(
              crossAxisCount: useMobileLayout ? 2 : 3,
              childAspectRatio: 0.8,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              shrinkWrap: true,
              children: List.generate(6, (index) {
                return CountryWidget.countryWidget(countryData, index);
              }),
            ),
    );
  }
}
