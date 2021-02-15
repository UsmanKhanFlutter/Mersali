import 'package:flutter/material.dart';
import '../CoustemColor/Color.dart' as coustem;
import 'package:get/get.dart';
import 'SignUp.dart';
import 'CommonWidget.dart';
import 'package:mersali_app/Constants/constants.dart' as constant;
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:toast/toast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Screens/mersali_main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double h;
  String testStatus;
  double w;
  String email;
  String password;
  bool ispasswordshow = true;
  bool _autovalidate = false;
  bool isloading = false;
  var formKey = GlobalKey<FormState>();
  SharedPreferences sharedUserData;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return OrientationBuilder(builder: (context, orientation) {
      return Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    color: Colors.white,
                    height: h,
                    width: w,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.cener,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: h / 2,
                          width: w,
                          alignment: Alignment.topCenter,
                          color: coustem.maincolor,
                          child: Container(
                            height: h / 4,
                            width: w / 1.5,
                            child: Image.asset(
                              "images/mersali.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 180.0,
                    left: 20.0,
                    right: 20.0,
                    child: Card(
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: Colors.white,
                        child: Container(
                          width: w,
                          height: h / 1.5,
                          child: Form(
                            key: formKey,
                            autovalidate: _autovalidate,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CoustemTextField(
                                      context: context,
                                      onchange: (val) {
                                        email = val;
                                        print(email);
                                      },
                                      hintText: "Email",
                                      keyboardType: TextInputType.emailAddress,
                                      validator: constant.validateEmail,
                                      icon: Icons.email),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CoustemTextField(
                                      context: context,
                                      eyeIcon: CupertinoButton(
                                        padding: EdgeInsets.only(top: 5.0),
                                        child: ispasswordshow
                                            ? Icon(
                                                Icons.visibility,
                                                color: Colors.grey,
                                              )
                                            : Icon(
                                                Icons.visibility_off,
                                                color: Colors.blue,
                                              ),
                                        onPressed: () {
                                          setState(() {
                                            ispasswordshow = !ispasswordshow;
                                          });
                                        },
                                      ),
                                      hintText: "Password",
                                      onchange: (val) {
                                        password = val;
                                        print(password);
                                      },
                                      validator: (val) =>
                                          val.length == 0 || val.length < 6
                                              ? "Password Is To Short"
                                              : null,
                                      obscureText: ispasswordshow,
                                      icon: Icons.lock),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "Forget password?",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      if (formKey.currentState.validate()) {
                                        setState(() {
                                          isloading = true;
                                        });
                                        String url =
                                            "${constant.baseUrl}/login?email=$email&password=$password";
                                        var res = await http.post(url);
                                        var decoded = json.decode(res.body);
                                        print(decoded);
                                        bool status = decoded['status'];
                                        if (status == true) {
                                          sharedUserData =
                                              await SharedPreferences
                                                  .getInstance();
                                          setState(() {
                                            isloading = false;
                                          });
                                          constant.userToken =
                                              decoded['data']['token'];
                                          sharedUserData.setString(
                                              "token", constant.userToken);
                                          print(
                                              "+++++++++++++++++++++++++++++${constant.userToken}");
                                          Get.to(MersaliMain());
                                          // print(decoded['data']['token']);
                                        } else {
                                          return Toast.show(
                                              "Invalid Email In Used", context,
                                              backgroundColor:
                                                  coustem.maincolor,
                                              duration: Toast.LENGTH_SHORT,
                                              gravity: Toast.BOTTOM);
                                        }
                                      } else {
                                        _autovalidate = true;
                                      }
                                    },
                                    child: Card(
                                      elevation: 1.0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Container(
                                        height: h / 18,
                                        width: w / 1.3,
                                        alignment: Alignment.center,
                                        child: isloading == true
                                            ? CircularProgressIndicator(
                                                backgroundColor: Colors.white,
                                              )
                                            : Text(
                                                "Login",
                                                // textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                        decoration: BoxDecoration(
                                            color: coustem.maincolor,
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Don,t have an account?",
                                        style: TextStyle(),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.to(
                                            SignUpForm(),
                                          );
                                        },
                                        child: Text(
                                          "Register",
                                          style: TextStyle(
                                              color: coustem.maincolor),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  InkWell(
                                      child: Text(
                                    "Login as visitor",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 14),
                                  )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Card(
                                    color: Colors.red[900],
                                    elevation: 1.0,
                                    child: Container(
                                      height: h / 18,
                                      width: w / 1.3,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Login with GOOGLE",
                                        // textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Card(
                                    color: Colors.blueAccent,
                                    elevation: 1.0,
                                    child: Container(
                                      height: h / 18,
                                      width: w / 1.3,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Login with FACEBOOk",
                                        // textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      );
    });
  }
}
