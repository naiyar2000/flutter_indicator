import 'package:flutter/cupertino.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class TechnicalIndicator with ChangeNotifier {
  var _response = {};
  var _uiresponse = {};

  dynamic get response {
    return {...this._uiresponse};
  }

  void changeUi(var query) {
    this._uiresponse = this._response[query];
    notifyListeners();
  }

  Future<void> fetchData() async {
    var url = Uri.parse(
        'https://api.bottomstreet.com/api/data?page=forex_detail&filter_name=identifier&filter_value=USDINR');
    try {
      final response = await http.get(url);
      this._response = json.decode(response.body)["technical_indicator"];
      this._uiresponse = _response["1min"];
      print(
          _response["1min"]["moving_averages"]["table_data"]["exponential"][0]);
      // print(json.decode(response.body));
    } catch (error) {
      print(error);
    }
    notifyListeners();
  }
}
