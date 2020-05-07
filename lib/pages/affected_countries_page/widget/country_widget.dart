import 'package:flutter/material.dart';

class CountryWidget {
  static Widget countryWidget(countryData, index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
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
            FadeInImage.assetNetwork(
              height: 45.0,
              placeholder: 'assets/images/WorldWide_Page/loader.gif',
              image: countryData[index]['countryInfo']['flag'],
              fadeInCurve: Curves.bounceIn,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              countryData[index]['country'],
              style: TextStyle(color: Colors.orange, fontSize: 20),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Infected : ' + countryData[index]['cases'].toString(),
              style: TextStyle(color: Colors.brown),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Active : ' + countryData[index]['active'].toString(),
              style: TextStyle(color: Colors.indigo),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Deaths : ' + countryData[index]['deaths'].toString(),
              style: TextStyle(color: Colors.redAccent),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Recovered : ' + countryData[index]['recovered'].toString(),
              style: TextStyle(color: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
