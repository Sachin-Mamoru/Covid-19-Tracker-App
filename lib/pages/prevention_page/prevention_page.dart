import 'package:covid_19_tracker/pages/prevention_page/widget/prevent_card.dart';
import 'package:flutter/material.dart';

class PreventionPage extends StatefulWidget {
  @override
  _PreventionPageState createState() => new _PreventionPageState();
}

class _PreventionPageState extends State<PreventionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prevention'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          PreventCard.preventCard(
            context,
            'assets/images/Prevention_Page/1.png',
            'Clean your hands often. Use soap and water, or an alcohol-based hand rub',
          ),
          PreventCard.preventCard(
            context,
            'assets/images/Prevention_Page/2.jpg',
            'Maintain a safe distance from anyone who is coughing or sneezing',
          ),
          PreventCard.preventCard(
            context,
            'assets/images/Prevention_Page/3.jpg',
            'Don’t touch your eyes, nose or mouth',
          ),
          PreventCard.preventCard(
            context,
            'assets/images/Prevention_Page/4.jpg',
            'Cover your nose and mouth with your bent elbow or a tissue when you cough or sneeze',
          ),
          PreventCard.preventCard(
            context,
            'assets/images/Prevention_Page/5.jpg',
            'Stay home if you feel unwell',
          ),
          PreventCard.preventCard(
            context,
            'assets/images/Prevention_Page/6.jpg',
            'If you have a fever, a cough, and difficulty breathing, seek medical attention. Call in advance',
          ),
        ],
      ),
    );
  }
}
