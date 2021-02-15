import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mersali_app/Constants/constants.dart';

import 'package:mersali_app/localization/language_constants.dart';
import 'mersali_main.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Widget resgisterButton() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Don\'t have an account?'),
          SizedBox(
            width: 10.0,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Register',
              style: TextStyle(color: Colors.orange),
            ),
          )
        ],
      );
    }

    final emailField = TextField(
      obscureText: false,
      style: loginTextFieldsStyles,
      decoration: InputDecoration(
        labelText: "Email",
        prefixIcon: Icon(
          Icons.email,
          color: Colors.orange[600],
        ),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: InputBorder.none,
      ),
    );
    final passwordField = TextField(
      obscureText: true,
      style: loginTextFieldsStyles,
      decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          prefixIcon: Icon(
            Icons.lock_outline,
            color: Colors.orange,
          ),
          suffixIcon: Icon(Icons.remove_red_eye)),
    );
    final loginButon = Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Colors.orange,
        ),
        height: 40.0,
        child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MersaliMain()),
              );
            },
            child: Center(
              child: Text(
                getTranslated(context, "login"),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )));

    return Scaffold(
      backgroundColor: Color(0XFFf99118),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 530.0,
            width: double.infinity,
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Card(color: Color(0XFFede8e8), child: emailField),
                SizedBox(height: 25.0),
                Card(color: Color(0XFFede8e8), child: passwordField),
                SizedBox(height: 5.0),
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 23.0,
                ),
                loginButon,
                SizedBox(
                  height: 13.0,
                ),
                resgisterButton(),
                SizedBox(
                  height: 50.0,
                ),
                GestureDetector(
                  onTap: () {
                    //TODO: onClick  Login as Visitor
                  },
                  child: Container(
                    color: Colors.white,
                    child: Text(
                      "Login as Visitor",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    //TODO: onClick  Login with GOOGLE
                  },
                  child: Container(
                    color: Colors.red,
                    width: 340.0,
                    height: 40.0,
                    child: Center(
                      child: Text(
                        'Login with GOOGLE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                GestureDetector(
                  onTap: () {
                    //TODO: onClick  Login on Facebook
                  },
                  child: Container(
                    color: Colors.blue,
                    width: 340.0,
                    height: 40.0,
                    child: Center(
                      child: Text(
                        'Login with FACEBOOK',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
