import 'package:flutter/material.dart';

class AffectedCountriesPage extends StatefulWidget {
  @override
  _AffectedCountriesPageState createState() =>
      new _AffectedCountriesPageState();
}

class _AffectedCountriesPageState extends State<AffectedCountriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mostly Affected Countries'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: 150,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 20,
                    offset: Offset(0, 10))
              ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.alternate_email,
                    color: Colors.orange,
                    size: 50,
                  ),
                  Text(
                    'Write to us :',
                    style: TextStyle(color: Colors.orange),
                  ),
                  Text('help@gmail.com'),
                  Text('help@gmail.com'),
                  Text('help@gmail.com')
                ],
              ),
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
