import 'package:flutter/material.dart';
import 'package:mersali_app/widgets/custom_stepper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:mersali_app/Constants/constants.dart';
import 'package:mersali_app/localization/language_constants.dart';

class SenderInformation extends StatelessWidget {
  var _firstNameController = TextEditingController();
  var _lastNameController = TextEditingController();
  var _phoneNoController = TextEditingController();
  var _postalCodeController = TextEditingController();
  var _cityNameController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SizedBox(
              height: 20.0,
            ),
            CustomStepper(stepNo: 2),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 8.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Column(
                    children: [
                      heading(context),
                      Card(
                        color: Colors.grey[100],
                        child: TextField(
                          controller: _firstNameController,
                          decoration: InputDecoration(
                             labelText: getTranslated(context,"first_name"),
                           // labelText: "First Name",
                            alignLabelWithHint: false,
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              FontAwesomeIcons.userAlt,
                              color: Colors.orange,
                              size: textFieldIconSize,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.grey[100],
                        child: TextField(
                          controller: _lastNameController,
                          decoration: InputDecoration(
                             labelText: getTranslated(context,"last_name"),
                            //labelText: "Firsts Name",
                            border: InputBorder.none,
                            alignLabelWithHint: false,
                            prefixIcon: Icon(
                              FontAwesomeIcons.userAlt,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.grey[100],
                        child: TextField(
                          controller: _firstNameController,
                          decoration: InputDecoration(
                             labelText: getTranslated(context,"email"),
                           // labelText: "First Name",
                            border: InputBorder.none,
                            alignLabelWithHint: false,
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.grey[100],
                        child: TextField(
                          controller: _phoneNoController,
                          decoration: InputDecoration(
                            labelText: getTranslated(context,"phone"),
                            border: InputBorder.none,
                            alignLabelWithHint: false,
                            prefixIcon: Icon(
                              Icons.phone_android,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.grey[100],
                        child: TextField(
                          controller: _postalCodeController,
                          decoration: InputDecoration(
                             labelText: getTranslated(context,"postal_code"),
                            //labelText: "First Name",
                            border: InputBorder.none,
                            alignLabelWithHint: false,
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.grey[100],
                        child: CountryCodePicker(
                          onChanged: (country) {
                            //use country.name to get country name
                           // _selectedCountry = country.name;
                          },
                          showCountryOnly: false,
                          showOnlyCountryWhenClosed: true,
                          alignLeft: true,
                          hideSearch: true,
                        ),
                      ),
                      Card(
                        color: Colors.grey[100],
                        child: TextField(
                          controller: _cityNameController,
                          decoration: InputDecoration(
                             labelText: getTranslated(context,"governate_city"),
                            //labelText: "First Name",
                            border: InputBorder.none,
                            alignLabelWithHint: false,
                            prefixIcon: Icon(
                              Icons.location_city,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.grey[100],
                        child: TextFormField(
                          maxLines: 5,
                          controller: _firstNameController,
                          decoration: InputDecoration(
                            hintText: getTranslated(context,"governate_city"),
                            //labelText: "First Name",
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            alignLabelWithHint: false,
                            prefixIcon: Icon(
                              Icons.my_location,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        color: Colors.orange,
                        width: 330,
                        height: 40.0,
                        child: FlatButton(
                          onPressed: () {  },
                          child: Text(
                            getTranslated(context,"location_on_map"),
                            //'First Name',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                         getTranslated(context,"identification_image"),
                        //'First Name'
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.grey,
                          width: 1.5,
                        )),
                        child: IconButton(
                          iconSize: 110.0,
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.orange,
                          ), onPressed: () {  },
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 200.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(7.5),
                        ),
                        child: FlatButton(
                          onPressed: () {  },
                          child: Text(
                            getTranslated(context,"continue"),
                            //'ffff',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget heading(BuildContext context) {
    return ListTile(
        onTap: () {
          //TODO: ONPRESSING back button
        },
        leading: Icon(
          Icons.arrow_back_outlined,
          color: Colors.orange,
        ),
        title: Text(
          getTranslated(context,"sender_information"),
          style: TextStyle(color: Colors.orange),
        ));
  }
}
