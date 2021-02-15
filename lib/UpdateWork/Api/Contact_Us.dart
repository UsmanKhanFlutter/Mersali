import 'Contact_Us_Model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<ContactUs> contactUs() async {
  final String targeturl = "http://mersali.us/mersali-app/api/about";
  var res = await http.get(targeturl);

  // var decoded = json.decode(res.body);
  // print(decoded);
  // var res = http.get(targeturl);
  // String decode = res.toString();

  // var data = jsonDecode(res.toString());
  // print(data['status']);
  ContactUs data = contactUsFromJson(res.body);

  print(data.data.content.toString());
  return data;
}
