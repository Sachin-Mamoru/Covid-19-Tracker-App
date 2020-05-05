import 'package:covid_19_tracker/pages/dashboard/cases_pie_chart.dart';
import 'package:covid_19_tracker/pages/dashboard/service_widget.dart';
import 'package:covid_19_tracker/pages/dashboard/world_cases_widget.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => new _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19 TRACKER'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              WorldCasesWidget.worldCasesWidget(),
              CasesPieChart.casesPieChart(),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ServiceWidget.serviceWidget(
                          'Symptoms',
                          1,
                          8.0,
                          Colors.blueAccent,
                          Colors.blueAccent,
                          'assets/images/Dashboard/symptoms-logo.png',
                          context),
                      ServiceWidget.serviceWidget(
                          'Prevention',
                          1,
                          8.0,
                          Colors.green,
                          Colors.green,
                          'assets/images/Dashboard/prevention-logo.png',
                          context)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ServiceWidget.serviceWidget(
                          'Affected Countries',
                          2,
                          3.0,
                          Colors.blueGrey,
                          Colors.blueGrey,
                          'assets/images/Dashboard/mostAffectCountry-logo.png',
                          context),
                      ServiceWidget.serviceWidget(
                          'Faqs',
                          1,
                          5.0,
                          Colors.black,
                          Colors.white30,
                          'assets/images/Dashboard/faqs-logo.jpg',
                          context)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ServiceWidget.serviceWidget(
                          'Worldwide',
                          1,
                          8.0,
                          Colors.teal,
                          Colors.white,
                          'assets/images/Dashboard/worldWide-logo.png',
                          context),
                      ServiceWidget.serviceWidget(
                          'Donation',
                          1,
                          8.0,
                          Colors.indigoAccent,
                          Colors.white60,
                          'assets/images/Dashboard/donation-logo.jpg',
                          context)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
