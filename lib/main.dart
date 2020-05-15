import 'package:auto_size_text/auto_size_text.dart';
import 'package:covid_19_tracker/pages/affected_countries_page/affected_countries_page.dart';
import 'package:covid_19_tracker/pages/dashboard/dashboard.dart';
import 'package:covid_19_tracker/pages/faqs_page/faqs_page.dart';
import 'package:covid_19_tracker/pages/prevention_page/prevention_page.dart';
import 'package:covid_19_tracker/pages/symptoms_page/symptoms_page.dart';
import 'package:covid_19_tracker/pages/worldWide_page/worldWide_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
    return new MaterialApp(
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
    final double shortestSideHeight = MediaQuery.of(context).size.height;

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
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 300.0,
                        maxWidth: 600.0,
                      ),
                      child: Image(
                        image: new AssetImage('assets/images/Cover/logo.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100.0,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 300.0,
                        maxWidth: 600.0,
                      ),
                      child: Image(
                        image:
                            new AssetImage('assets/images/Cover/get-start.png'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: shortestSideHeight / 8),
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        child: AutoSizeText(
                          'Get Started',
                          maxFontSize: 30,
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
