import 'package:covid_19_tracker/pages/faqs_page/datasorce.dart';
import 'package:flutter/material.dart';

class FaqsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs'),
      ),
      body: ListView.builder(
          itemCount: DataSource.questionAnswers.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                DataSource.questionAnswers[index]['question'],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Colors.redAccent),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    DataSource.questionAnswers[index]['answer'],
                    style: TextStyle(color: Colors.indigoAccent),
                  ),
                )
              ],
            );
          }),
    );
  }
}
