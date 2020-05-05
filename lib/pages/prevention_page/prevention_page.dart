import 'package:covid_19_tracker/pages/prevention_page/prevent_card.dart';
import 'package:flutter/material.dart';

class PreventionPage extends StatefulWidget {
  @override
  _PreventionPageState createState() => new _PreventionPageState();
}

class _PreventionPageState extends State<PreventionPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Prevention'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          PreventCard.preventCard(
            context,
            'assets/images/Dashboard/prevention-logo.png',
            'Wash Hands Often',
          ),
          PreventCard.preventCard(
            context,
            'assets/images/Dashboard/prevention-logo.png',
            'Wash Hands Often',
          ),
          PreventCard.preventCard(
            context,
            'assets/images/Dashboard/prevention-logo.png',
            'Wash Hands Often',
          ),
          PreventCard.preventCard(
            context,
            'assets/images/Dashboard/prevention-logo.png',
            'Wash Hands Often',
          ),
        ],
      ),
    );
  }
}
