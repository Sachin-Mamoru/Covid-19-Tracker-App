import 'package:covid_19_tracker/pages/symptoms_page/widget/symptom_cart.dart';
import 'package:flutter/material.dart';

class SymptomsPage extends StatefulWidget {
  @override
  _SymptomsPageState createState() => new _SymptomsPageState();
}

class _SymptomsPageState extends State<SymptomsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Symptoms'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SymptomCard.symptomCard(
            context,
            'assets/images/Symptoms_Page/1.jpg',
            'Fever',
          ),
          SymptomCard.symptomCard(
            context,
            'assets/images/Symptoms_Page/2.png',
            'Tiredness',
          ),
          SymptomCard.symptomCard(
            context,
            'assets/images/Symptoms_Page/3.png',
            'Dry cough',
          ),
          SymptomCard.symptomCard(
            context,
            'assets/images/Symptoms_Page/4.jpg',
            'Aches and pains',
          ),
          SymptomCard.symptomCard(
            context,
            'assets/images/Symptoms_Page/5.jpg',
            'Runny nose',
          ),
          SymptomCard.symptomCard(
            context,
            'assets/images/Symptoms_Page/6.jpg',
            'Diarrhoea',
          ),
        ],
      ),
    );
  }
}
