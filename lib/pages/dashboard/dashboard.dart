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
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ServiceWidget.serviceWidget(
                          'name',
                          Colors.blueGrey,
                          Colors.purple,
                          'assets/images/background-start.jpg',
                          context),
                      ServiceWidget.serviceWidget(
                          'name',
                          Colors.blueGrey,
                          Colors.purple,
                          'assets/images/background-start.jpg',
                          context)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ServiceWidget.serviceWidget(
                          'name',
                          Colors.blueGrey,
                          Colors.purple,
                          'assets/images/background-start.jpg',
                          context),
                      ServiceWidget.serviceWidget(
                          'name',
                          Colors.blueGrey,
                          Colors.purple,
                          'assets/images/background-start.jpg',
                          context)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ServiceWidget.serviceWidget(
                          'name',
                          Colors.blueGrey,
                          Colors.purple,
                          'assets/images/background-start.jpg',
                          context),
                      ServiceWidget.serviceWidget(
                          'name',
                          Colors.blueGrey,
                          Colors.purple,
                          'assets/images/background-start.jpg',
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
