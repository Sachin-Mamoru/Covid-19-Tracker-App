import 'package:covid_19_tracker/pages/affected_countries_page/affected_countries_page.dart';
import 'package:covid_19_tracker/pages/dashboard/widget/cases_pie_chart.dart';
import 'package:covid_19_tracker/pages/dashboard/widget/service_widget.dart';
import 'package:covid_19_tracker/pages/dashboard/widget/world_cases_widget.dart';
import 'package:covid_19_tracker/pages/faqs_page/faqs_page.dart';
import 'package:covid_19_tracker/pages/prevention_page/prevention_page.dart';
import 'package:covid_19_tracker/pages/symptoms_page/symptoms_page.dart';
import 'package:covid_19_tracker/pages/worldWide_page/worldWide_page.dart';
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
                        context,
                        SymptomsPage(),
                      ),
                      ServiceWidget.serviceWidget(
                        'Prevention',
                        1,
                        8.0,
                        Colors.green,
                        Colors.green,
                        'assets/images/Dashboard/prevention-logo.png',
                        context,
                        PreventionPage(),
                      )
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
                        context,
                        AffectedCountriesPage(),
                      ),
                      ServiceWidget.serviceWidget(
                        'FAQs',
                        1,
                        5.0,
                        Colors.black,
                        Colors.white30,
                        'assets/images/Dashboard/faqs-logo.jpg',
                        context,
                        FaqsPage(),
                      )
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
                        context,
                        WorldWidePage(),
                      ),
                      ServiceWidget.serviceWidget(
                        'Donation',
                        1,
                        8.0,
                        Colors.indigoAccent,
                        Colors.white60,
                        'assets/images/Dashboard/donation-logo.jpg',
                        context,
                        PreventionPage(),
                      )
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
