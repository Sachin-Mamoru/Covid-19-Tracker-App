import 'package:auto_size_text/auto_size_text.dart';
import 'package:covid_19_tracker/pages/prevention_page/prevention_page.dart';
import 'package:flutter/material.dart';

class ServiceWidget {
  static Widget serviceWidget(
      name, mxLines, textColor, backgroundColor, img, context) {
    return Container(
      margin: EdgeInsets.all(13.0),
      height: 170,
      width: 150,
      child: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.loose,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: new GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PreventionPage()));
              },
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                child: Container(
                  height: 156,
                  width: 134,
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 23),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: AutoSizeText(
                      name,
                      style: TextStyle(
                          color: textColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 24.0),
                      maxLines: mxLines,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(12),
              color: backgroundColor,
              child: Container(
                padding: EdgeInsets.all(5.0),
                height: 84,
                width: 84,
                child: Center(
                  child: Image(
                    image: new AssetImage(img),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
