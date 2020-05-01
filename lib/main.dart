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
        ),
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
      image: AssetImage('assets/images/background-start.jpg'),
    );
  }

  DecorationImage _buildbackgroundButton() {
    return DecorationImage(
      fit: BoxFit.fill,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.dstATop),
      image: AssetImage('assets/images/get-start.png'),
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
                Container(
                  padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
                  height: 250.0,
                  width: 400.0,
                  child: new Image.asset('assets/images/logo.png'),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image(
                      image: new AssetImage('assets/images/get-start.png'),
                    ),
                    Positioned(
                      top: 115.0,
                      child: RaisedButton(
                        onPressed: () {},
                      ),
                    )
                  ],
                )
                // _langSelectEnglish(settings),
                // _langSelectSinhala(settings),
                // _langSelectTamil(settings),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
