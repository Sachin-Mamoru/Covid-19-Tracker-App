import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class ServiceWidget {
  static Widget serviceWidget(
      name, mxLines, bM, textColor, backgroundColor, img, context, page) {
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
                if (name == 'Donation') {
                  launch('https://covid19responsefund.org/');
                } else {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => page));
                }
              },
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.only(bottom: bM),
                  height: 156,
                  width: 138,
                  padding: EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: AutoSizeText(
                      name,
                      maxFontSize: 19.0,
                      textAlign: TextAlign.center,
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
