import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:mersali_app/Constants/constants.dart';
import 'package:mersali_app/localization/language_constants.dart';

class NewPassword extends StatelessWidget {
  var _passwordController = TextEditingController();
  var _confrimPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _passwordField = TextFormField(
      obscureText: true,
      style: loginTextFieldsStyles,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) =>
      EmailValidator.validate(value) ? null:"Invalid email address",
      controller: _passwordController,
      decoration: InputDecoration(
          fillColor: Colors.grey[100],
          filled: true,
          border: InputBorder.none,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: getTranslated(context,'password'),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: Colors.orange,
          ),
          suffixIcon: Icon(Icons.remove_red_eye)
      ),
    );
    final _confirmPasswordField = TextFormField(
      obscureText: true,
      style: loginTextFieldsStyles,
      keyboardType: TextInputType.visiblePassword,
      controller: _confrimPasswordController,
      decoration: InputDecoration(
          fillColor: Colors.grey[100],
          filled: true,
          border: InputBorder.none,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: getTranslated(context,"confirm_password"),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: Colors.orange,
          ),
          suffixIcon: Icon(Icons.remove_red_eye)),
    );
    final _updateButton = Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Colors.orange,
        ),
        height: 40.0,
        child: FlatButton(
            onPressed: () {

            },
            child: Center(
              child: Text(
                'UPDATE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(getTranslated(context, "password_confirmation")),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){

          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(getTranslated(context, 'identity_verification_statement'),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(height: 10),
            _passwordField,
            SizedBox(height: 10),
            _confirmPasswordField,
            SizedBox(height: 10),
            _updateButton,
          ],
        ),
      ),
    );
  }
}
