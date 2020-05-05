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
            'assets/images/Dashboard/prevention-logo.png',
            'Clean your hands often. Use soap and water, or an alcohol-based hand rub',
          ),
          SymptomCard.symptomCard(
            context,
            'assets/images/Dashboard/prevention-logo.png',
            'Maintain a safe distance from anyone who is coughing or sneezing',
          ),
          SymptomCard.symptomCard(
            context,
            'assets/images/Dashboard/prevention-logo.png',
            'Don’t touch your eyes, nose or mouth',
          ),
          SymptomCard.symptomCard(
            context,
            'assets/images/Dashboard/prevention-logo.png',
            'Cover your nose and mouth with your bent elbow or a tissue when you cough or sneeze',
          ),
          SymptomCard.symptomCard(
            context,
            'assets/images/Dashboard/prevention-logo.png',
            'Stay home if you feel unwell',
          ),
          SymptomCard.symptomCard(
            context,
            'assets/images/Dashboard/prevention-logo.png',
            'If you have a fever, a cough, and difficulty breathing, seek medical attention. Call in advance',
          ),
          SymptomCard.symptomCard(
            context,
            'assets/images/Dashboard/prevention-logo.png',
            'Follow the directions of your local health authority',
          ),
        ],
      ),
    );
  }
}
