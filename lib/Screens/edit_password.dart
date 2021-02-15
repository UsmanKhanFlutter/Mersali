import 'package:flutter/material.dart';
import 'package:mersali_app/Constants/constants.dart';
import 'package:mersali_app/localization/language_constants.dart';
class EditPassword extends StatefulWidget {
  @override
  _EditPasswordState createState() => _EditPasswordState();
}

class _EditPasswordState extends State<EditPassword> {
  
  @override
  Widget build(BuildContext context) {
     final passwordField = TextField(
      obscureText: true,
      style: loginTextFieldsStyles,
      decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: getTranslated(context,'edit_password'),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: Colors.orange,
          ),
          suffixIcon: Icon(Icons.remove_red_eye)));
    
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          getTranslated(context,'edit_password'),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ), onPressed: () {  },
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 4,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(color: Colors.grey[100], child: passwordField),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 500.0,
              height: 35.0,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(7.0)),
              ),
              child: FlatButton(
                onPressed: () {
                  //TODO: OnPressing Edit Button
                },
                child: Text(
                  getTranslated(context, "edit"),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
