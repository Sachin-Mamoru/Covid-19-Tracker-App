import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class CasesPieChart {
  static Widget casesPieChart() {
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
          'Infected': 13421,
          'Deaths': 3554,
          'Recovered': 3423,
          'Active': 2334
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
