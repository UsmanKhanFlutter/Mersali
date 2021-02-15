import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mersali_app/localization/language_constants.dart';
import 'package:mersali_app/Screens/edit_password.dart';

class Account extends StatelessWidget {
  final _userNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          centerTitle: true,
          title: Text(
            getTranslated(context, "account"),
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          width: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                color: Colors.grey[100],
                child: TextField(
                  controller: _userNameController,
                  decoration: InputDecoration(
                      labelText: getTranslated(context, "name"),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        FontAwesomeIcons.userAlt,
                        color: Colors.orange,
                        size: 15.0,
                      )),
                ),
              ),
              Card(
                color: Colors.grey[100],
                child: TextField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                      labelText: getTranslated(context, "phone"),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        FontAwesomeIcons.phone,
                        color: Colors.orange,
                        size: 15.0,
                      )),
                ),
              ),
              Card(
                color: Colors.grey[100],
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      labelText: getTranslated(context, "email"),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        FontAwesomeIcons.user,
                        color: Colors.orange,
                        size: 15.0,
                      )),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  FontAwesomeIcons.signOutAlt,
                  color: Colors.red,
                ),
                title: Text(
                  getTranslated(context, "logout"),
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Container(
                width: 500.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Edit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditPassword()),
                  );
                },
                child: Text(
                  getTranslated(context, "edit_password"),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
