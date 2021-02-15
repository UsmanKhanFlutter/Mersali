import 'package:flutter/material.dart';
import 'package:mersali_app/Constants/constants.dart' as costants;
import 'package:mersali_app/CoustemColor/Color.dart';
import 'Api/BackEndAPi.dart';
import 'models/countriesModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mersali_app/CoustemColor/Color.dart' as coustem;

class AllCountry extends StatefulWidget {
  @override
  _AllCountryState createState() => _AllCountryState();
}

class _AllCountryState extends State<AllCountry> {
  // List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  // List<Data> _countries;
  bool isloading = true;
  String _selectedLocation;
  String _selectedLocation2;
  int selectedid;
  int selectedid2;
  bool showweightfield = false;
  bool showdata = false;
  Countries countries;
  @override
  void initState() {
    super.initState();
    newgetcountries().then((value) => {
          print(value),
          setState(() {
            countries = value;
            isloading = false;
            // print(countries.data);
          })
        });
  }

  Future countriesIdSent(int fromId, int toId) async {
    var request = await http.post(
        "http://mersali.us/mersali-app/api/calc_price?from_id=$fromId&to_id=$toId");
    var response = jsonDecode(request.body);
    if (response['status'] == true) {
      setState(() {
        showdata = true;
      });
      print(response);
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: isloading == true
            ? Center(
                child: Container(
                  child: CircularProgressIndicator(),
                ),
              )
            : SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Service cost",
                        style: TextStyle(
                            color: Colors.orange[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'Raleway'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "From Country",
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 15.0),
                      elevation: 0.4,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.0),
                        height: costants.Size.convert(context, 51),
                        child: dropdownbutton(
                          hintname: "Country",
                          context: context,
                          selectedLocation: _selectedLocation,
                          countries: countries,
                          onChanged: (newValue) {
                            countries.data.forEach((element) async {
                              if (element.country == newValue) {
                                setState(() {
                                  _selectedLocation = newValue;
                                  selectedid = element.id;
                                  print(selectedid);
                                });
                              }
                            });
                            showdata == false
                                ? CircularProgressIndicator()
                                : showweightfield = true;
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "To Country",
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 15.0),
                      elevation: 0.4,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.0),
                        height: costants.Size.convert(context, 51),
                        child: dropdownbutton(
                          hintname: "Country",
                          context: context,
                          selectedLocation: _selectedLocation2,
                          countries: countries,
                          onChanged: (newValue) {
                            countries.data.forEach((element) async {
                              if (element.country == newValue) {
                                setState(() {
                                  _selectedLocation2 = newValue;
                                  selectedid2 = element.id;
                                  print(selectedid2);
                                });
                              }
                              // nextfunction(selectedid,element.id)
                            });
                            countriesIdSent(selectedid, selectedid2);
                            showweightfield = true;
                          },
                        ),
                      ),
                    ),
                    showweightfield == true
                        ? showdata == true
                            ? Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Shipment weight",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Card(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 15.0),
                                    elevation: 0.4,
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 30.0),
                                      height:
                                          costants.Size.convert(context, 51),
                                      child: dropdownbutton(
                                        hintname: "Shipment weight",
                                        context: context,
                                        selectedLocation: _selectedLocation2,
                                        countries: countries,
                                        onChanged: (newValue) {
                                          countries.data
                                              .forEach((element) async {
                                            if (element.country == newValue) {
                                              setState(() {
                                                _selectedLocation2 = newValue;
                                                selectedid2 = element.id;
                                                print(selectedid2);
                                              });
                                            }
                                            // nextfunction(selectedid,element.id)
                                          });
                                          countriesIdSent(
                                              selectedid, selectedid2);
                                          showweightfield = true;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : CircularProgressIndicator()
                        : Container(),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Card(
                        elevation: 1.4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)),
                        child: Container(
                          height: h / 18,
                          width: w / 1.6,
                          alignment: Alignment.center,
                          child: isloading == true
                              ? CircularProgressIndicator(
                                  backgroundColor: Colors.white,
                                )
                              : Text(
                                  "Request service",
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                          decoration: BoxDecoration(
                              color: coustem.maincolor,
                              borderRadius: new BorderRadius.circular(2)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  dropdownbutton(
      {context,
      String hintname,
      selectedLocation,
      Countries countries,
      Function onChanged}) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        icon: Icon(Icons.arrow_drop_down),
        isExpanded: true,
        hint: Text(
          hintname,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontFamily: 'RalewayMedium',
            color: AppColor.borderColor,
            fontSize: costants.Size.convert(context, 12),
          ),
        ),
        value: selectedLocation,
        items: countries.data.map((dropDownmodels) {
          return DropdownMenuItem(
            child: new Text(
              dropDownmodels.country,
              style: TextStyle(
                fontFamily: 'RalewayMedium',
                color: AppColor.shadowColor,
                fontSize: costants.Size.convert(context, 16),
              ),
            ),
            value: dropDownmodels.country,
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
