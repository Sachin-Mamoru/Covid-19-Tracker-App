import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class CasesPieChart {
  static Widget casesPieChart(worldData) {
    return Container(
      margin: EdgeInsets.only(top: .0, left: 10.0, right: 10.0, bottom: 10.0),
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
      child: PieChart(
        dataMap: {
          'Infected': worldData['cases'].toDouble(),
          'Deaths': worldData['deaths'].toDouble(),
          'Recovered': worldData['recovered'].toDouble(),
          'Active': worldData['active'].toDouble()
        },
        colorList: [
          Colors.brown,
          Colors.redAccent,
          Colors.green,
          Colors.indigo
        ],
        chartType: ChartType.ring,
      ),
    );
  }
}
