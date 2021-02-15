import 'package:flutter/material.dart';
import 'package:mersali_app/widgets/custom_stepper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:mersali_app/Constants/constants.dart';
import 'package:mersali_app/widgets/custom_date_picker.dart';
import 'package:mersali_app/localization/language_constants.dart';

class ReceiverInformation extends StatelessWidget {
  final _nameController = TextEditingController();

  final _phoneNoController = TextEditingController();
  final _postalCodeController = TextEditingController();
  final _cityNameController = TextEditingController();
  String _selectedCountry;

  @override
  Widget build(BuildContext context) {
    final nameField = Card(
      color: Colors.grey[100],
      child: TextField(
        controller: _nameController,
        decoration: InputDecoration(
          labelText: getTranslated(context, "name"),
          alignLabelWithHint: false,
          border: InputBorder.none,
          prefixIcon: Icon(
            FontAwesomeIcons.userAlt,
            color: Colors.orange,
            size: textFieldIconSize,
          ),
        ),
      ),
    );
    final emailField = Card(
      color: Colors.grey[100],
      child: TextField(
        controller: _nameController,
        decoration: InputDecoration(
          labelText: getTranslated(context, "email"),
          alignLabelWithHint: false,
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.email,
            color: Colors.orange,
            size: textFieldIconSize,
          ),
        ),
      ),
    );
    final phoneField = Card(
      color: Colors.grey[100],
      child: TextField(
        controller: _phoneNoController,
        decoration: InputDecoration(
          labelText: getTranslated(context, "phone"),
          alignLabelWithHint: false,
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.phone_android,
            color: Colors.orange,
            size: textFieldIconSize,
          ),
        ),
      ),
    );
    final countryNameField = Card(
      color: Colors.grey[100],
      child: CountryCodePicker(
        onChanged: (country) {
          //use country.name to get country name
          _selectedCountry = country.name;
        },
        showCountryOnly: false,
        showOnlyCountryWhenClosed: true,
        alignLeft: true,
        hideSearch: true,
      ),
    );
    final cityNameField = Card(
      color: Colors.grey[100],
      child: TextField(
        controller: _postalCodeController,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: getTranslated(context, "governate_city"),
          alignLabelWithHint: false,
          prefixIcon: Icon(
            Icons.location_on_rounded,
            color: Colors.orange,
            size: textFieldIconSize,
          ),
        ),
      ),
    );
    final postalCodeField = Card(
      color: Colors.grey[100],
      child: TextField(
        controller: _postalCodeController,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: getTranslated(context, "postal_code"),
          alignLabelWithHint: false,
          prefixIcon: Icon(
            Icons.email,
            color: Colors.orange,
            size: textFieldIconSize,
          ),
        ),
      ),
    );
    final addressField = Card(
      color: Colors.grey[100],
      child: TextFormField(
        maxLines: 5,
        controller: _nameController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: getTranslated(context, 'address'),
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          alignLabelWithHint: false,
          prefixIcon: Icon(
            Icons.my_location,
            color: Colors.orange,
            size: textFieldIconSize,
          ),
        ),
      ),
    );
    final locationOnMapButton = Container(
      color: Colors.orange,
      width: 330,
      height: 40.0,
      child: FlatButton(
        onPressed: () {},
        child: Text(
          getTranslated(context, "location_map"),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20.0,
          ),
          CustomStepper(stepNo: 3),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7.0),
            width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 8.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    heading(context),
                    nameField,
                    emailField,
                    phoneField,
                    countryNameField,
                    cityNameField,
                    postalCodeField,
                    addressField,
                    SizedBox(
                      height: 15.0,
                    ),
                    locationOnMapButton,
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      getTranslated(context, "identification_image"),
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
                        ),
                        onPressed: () {},
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
                        onPressed: () {},
                        child: Text(
                          getTranslated(context, "continue"),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    DatePickerWidget(),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget heading(BuildContext context) {
    return ListTile(
        onTap: () {},
        leading: Icon(
          Icons.arrow_back_outlined,
          color: Colors.orange,
        ),
        title: Text(
          getTranslated(context, 'receiver_information'),
          style: TextStyle(color: Colors.orange),
        ));
  }
}
