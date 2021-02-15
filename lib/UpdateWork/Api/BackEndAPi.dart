import 'package:http/http.dart' as http;
import 'dart:convert';
import 'apiString.dart';
import '../models/countriesModel.dart';

class BackEndApi {
  static getData(String url) async {
    var request = await http.get(url);
    return jsonDecode(request.body);
  }
}

Future newgetcountries() async {
  var request = await http.get(COUNTRIES);
  var resposne = jsonDecode(request.body);
  Countries countries = Countries.fromJson(resposne);
  return countries;
}
