import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mersali_app/widgets/custom_country_dropdown.dart';

class ServiceCost extends StatefulWidget {
  @override
  _ServiceCostState createState() => _ServiceCostState();
}

class _ServiceCostState extends State<ServiceCost> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Service Cost',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20.0,
                ),
              ),
              headings('From Country'),
              CustomCountryDropdown(),
              headings('To Country'),
              CustomCountryDropdown(),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 250.0,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.5),
                  color: Colors.orange,
                ),
                child: FlatButton(
                  onPressed: () {  },
                  child: Text(
                    'Request Service',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container headings(String countryName) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.symmetric(horizontal: 23.0),
      child: Text(
        countryName,
        style: TextStyle(
          fontSize: 15.0,
        ),
      ),
    );
  }
}
