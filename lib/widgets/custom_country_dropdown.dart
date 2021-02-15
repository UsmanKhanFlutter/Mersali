import 'package:flutter/material.dart';
// import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_code_picker/country_code_picker.dart';

class CustomCountryDropdown extends StatefulWidget {
  @override
  _CustomCountryDropdownState createState() => _CustomCountryDropdownState();
}

class _CustomCountryDropdownState extends State<CustomCountryDropdown> {
  String _selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 20.0),
       width: 400,

      child: Card(
        elevation: 3,
        color: Colors.white,
        child: CountryCodePicker(
          onChanged: (country) {
            //use country.name to get country name

            _selectedCountry = country.name;
          },
          //initialSelection: 'Select Country',
          showCountryOnly: false,
          showOnlyCountryWhenClosed: true,
          alignLeft: true,
          hideSearch: true,
        ),
      ),
    );
  }
}

// DropdownButtonHideUnderline(
// child: ButtonTheme(
// alignedDropdown: true,
// child: DropdownButton<String>(
// isDense: true,
// hint: Text("Select Country"),
// value: _selectedCountry,
// onChanged: (String newValue) {
// setState(() {
// _selectedCountry = newValue;
// });
//
//
// },
// items: _myCountries.map((Map map) {
// return  DropdownMenuItem<String>(
// value: map["id"].toString(),
// // value: _mySelection,
// child: Row(
// children: <Widget>[
// Icon(
// Icons.flag,
// color: Colors.orange,
// ),
// Container(
// margin: EdgeInsets.only(left: 10),
// child: Text(map["name"])
// ),
// ],
// ),
// );
// }).toList(),
// ),
// ),
// ),
