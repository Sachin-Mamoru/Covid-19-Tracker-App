import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Covid19Data extends ChangeNotifier {
  Map _worldData;
  List _countryData;

  getWorldData() => _worldData;
  getCountryData() => _countryData;

  fetchWorldWideData() async {
    http.Response response = await http.get('https://corona.lmao.ninja/v2/all');
    _worldData = json.decode(response.body);
    notifyListeners();
  }

  fetchCountryData() async {
    http.Response response =
        await http.get('https://corona.lmao.ninja/v2/countries?sort=cases');
    _countryData = json.decode(response.body);
    notifyListeners();
  }

  Future fetchAll() async {
    http.Response response1 =
        await http.get('https://corona.lmao.ninja/v2/all');
    _worldData = json.decode(response1.body);
    http.Response response2 =
        await http.get('https://corona.lmao.ninja/v2/countries?sort=cases');
    _countryData = json.decode(response2.body);
    notifyListeners();
    print('fetchData called');
  }
}
