import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class WorldCasesWidget {
  static Widget worldCasesWidget(worldData) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 30,
            color: Colors.deepPurple[50],
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          caseResults(
            Colors.brown,
            worldData['cases'].toString(),
            "Infected",
          ),
          caseResults(
            Colors.redAccent,
            worldData['deaths'].toString(),
            "Deaths",
          ),
          caseResults(
            Colors.green,
            worldData['recovered'].toString(),
            "Recovered",
          ),
        ],
      ),
    );
  }

  static Widget caseResults(color, number, title) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        AutoSizeText(
          "$number",
          minFontSize: 15,
          style: TextStyle(
            color: color,
          ),
          maxLines: 1,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          style: TextStyle(color: color, fontSize: 18),
        ),
      ],
    );
  }
}
