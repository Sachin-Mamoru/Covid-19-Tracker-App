import 'package:covid_19_tracker/pages/affected_countries_page/affected_countries_page.dart';
import 'package:covid_19_tracker/pages/dashboard/dashboard.dart';
import 'package:covid_19_tracker/pages/faqs_page/faqs_page.dart';
import 'package:covid_19_tracker/pages/prevention_page/prevention_page.dart';
import 'package:covid_19_tracker/pages/symptoms_page/symptoms_page.dart';
import 'package:covid_19_tracker/pages/worldWide_page/worldWide_page.dart';
import 'package:covid_19_tracker/services/covid19_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Covid19Data()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.deepPurple,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        routes: <String, WidgetBuilder>{
          '/dashboard': (BuildContext context) => new DashboardPage(),
          '/prevention': (BuildContext context) => new PreventionPage(),
          '/symptoms': (BuildContext context) => new SymptomsPage(),
          '/affectedCountries': (BuildContext context) =>
              new AffectedCountriesPage(),
          '/worldWide': (BuildContext context) => new WorldWidePage(),
          '/faqs': (BuildContext context) => new FaqsPage(),
        },
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DecorationImage _buildbackgroundImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
      image: AssetImage('assets/images/Cover/background-start.jpg'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: _buildbackgroundImage(),
        ),
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Image(
                      image: new AssetImage('assets/images/Cover/logo.png'),
                      width: 600.0,
                      height: 300.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 100.0,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image(
                      image:
                          new AssetImage('assets/images/Cover/get-start.png'),
                      width: 600.0,
                      height: 300.0,
                    ),
                    Positioned(
                      top: 120.0,
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashboardPage()));
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
