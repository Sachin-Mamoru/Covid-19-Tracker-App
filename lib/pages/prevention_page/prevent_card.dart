import 'package:flutter/material.dart';

class PreventCard {
  static Widget preventCard(context, imageUrl, title) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imageUrl,
                  height: 90,
                  width: MediaQuery.of(context).size.width * 0.3,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(width: 18),
              Flexible(
                child: Text(title,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
