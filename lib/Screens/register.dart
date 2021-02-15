import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mersali_app/Constants/constants.dart';
import 'package:mersali_app/Screens/login.dart';
import 'package:mersali_app/localization/language_constants.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _userNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _emailController = TextEditingController();

  ///VARIABLES
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ///Text Fields
    final nameField = TextFormField(
      controller: _userNameController,
      validator: (value) {
        Pattern pattern = r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
        RegExp regex = RegExp(pattern);
        if (!regex.hasMatch(value))
          return getTranslated(context,'invalid_username');
        else
          return null;
      },
      decoration: InputDecoration(
          labelText: 'Name',
          border: InputBorder.none,
          fillColor: Colors.grey[100],
          filled: true,
          prefixIcon: Icon(
            FontAwesomeIcons.userAlt,
            color: Colors.orange,
            size: 15.0,
          )),
    );
    final passwordField = TextFormField(
      obscureText: true,
      style: loginTextFieldsStyles,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) =>
          EmailValidator.validate(value) ? null : getTranslated(context,"invalid_email"),
      controller: _passwordController,
      decoration: InputDecoration(
          fillColor: Colors.grey[100],
          filled: true,
          border: InputBorder.none,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: getTranslated(context,"password"),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: Colors.orange,
          ),
          suffixIcon: Icon(Icons.remove_red_eye)),
    );
    final emailField = TextFormField(
      obscureText: false,
      style: loginTextFieldsStyles,
      controller: _emailController,
      validator: (value) {
        if (value.isEmpty) {
          return getTranslated(context,"please_enter_text");
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.grey[100],
        filled: true,
        prefixIcon: Icon(
          Icons.email,
          color: Colors.orange[600],
        ),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: getTranslated(context,"email"),
        border: InputBorder.none,
      ),
    );
    final phoneNumberField = TextFormField(
      controller: _phoneNumberController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        fillColor: Colors.grey[100],
        filled: true,
        labelText: getTranslated(context,"phone"),
        border: InputBorder.none,
        prefixIcon: Icon(
          FontAwesomeIcons.phone,
          color: Colors.orange,
          size: 15.0,
        ),
      ),
    );

    ///BUTTONS
    final registerButton = Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Colors.orange,
        ),
        height: 40.0,
        child: FlatButton(
            onPressed: () {
              if (!_formKey.currentState.validate()) {
                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text('Field Remains empty')));
              }
            },
            child: Center(
              child: Text(
                getTranslated(context,"register"),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )));

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  height: (MediaQuery.of(context).size.height) / 2,
                  width: double.infinity,
                  color: Colors.orange,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image(
                      width: 200,
                      color: Colors.white,
                      image: AssetImage(
                        'images/mersali.png',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  top: 60.0,
                  right: 10.0,
                  child: Container(
                    height: 520.0,
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 50.0),
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          spreadRadius: 1.0,
                          blurRadius: 3.0,
                          // offset: offset,
                        )
                      ],
                    ),
                    child: Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 20.0),
                            headingRegister,
                            SizedBox(height: 10.0),
                            nameField,
                            SizedBox(
                              height: 8.0,
                            ),
                            emailField,
                            SizedBox(height: 8.0),
                            phoneNumberField,
                            SizedBox(height: 8.0),
                            passwordField,
                            SizedBox(height: 5.0),
                            ListTile(
                              leading: Container(
                                width: 250,
                                child: Text(
                                  getTranslated(context,"by_creating_account"),
                                  style: TextStyle(color: Colors.grey[400]),
                                ),
                              ),
                              trailing: Checkbox(
                                value: false,
                                onChanged: (bool value) {},
                              ),
                            ),
                            SizedBox(
                              height: 23.0,
                            ),
                            registerButton,
                            SizedBox(
                              height: 13.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  getTranslated(context,"already_have_account"),
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()),
                                    );
                                  },
                                  child: Text(
                                    getTranslated(context,"login"),
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
