import 'package:flutter/material.dart';
import '../CoustemColor/Color.dart' as coustem;
import 'CommonWidget.dart';
import 'package:get/get.dart';
import 'LoginPage.dart';
import 'package:mersali_app/Constants/constants.dart' as constant;
import 'package:flutter/cupertino.dart';
import 'Api/RegesterMethod.dart';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool check = false;
  bool ispasswordshow = true;
  var formKey = GlobalKey<FormState>();
  bool _autovalidate = false;
  bool isloading = false;
  String name;
  String email;
  String phone;
  String password;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return OrientationBuilder(
      builder: (context, orientation) {
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
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 180.0,
                      left: 20.0,
                      right: 20,
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
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Text(
                                    "Register",
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
                                      name = val;
                                      print(name);
                                    },
                                    keyboardType: TextInputType.name,
                                    validator: (val) => val.length == 0
                                        ? "Full name is required"
                                        : val.length < 3
                                            ? "Full name must be 3 character"
                                            : null,
                                    hintText: "Name",
                                    icon: Icons.person),
                                SizedBox(
                                  height: 10,
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
                                  height: 10,
                                ),
                                CoustemTextField(
                                    context: context,
                                    hintText: "Phone",
                                    keyboardType: TextInputType.number,
                                    onchange: (val) {
                                      phone = val;
                                      print(phone);
                                    },
                                    validator: (val) =>
                                        val.length == 0 || val.length < 6
                                            ? "Contact no isRequired"
                                            : null,
                                    icon: Icons.phone),
                                SizedBox(
                                  height: 10,
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                        // margin: EdgeInsets.only(left: 15),
                                        // height: h / 2,
                                        child: Text(
                                      "By Creating An Account You Agree To Out Policy \n And Term Of Use",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    Checkbox(
                                      value: check,
                                      onChanged: (value) {
                                        setState(() {
                                          check = value;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () async {
                                    if (formKey.currentState.validate()) {
                                      if (check == false) {
                                        return Toast.show(
                                            "Please Accept Term & Condition",
                                            context,
                                            backgroundColor: coustem.maincolor,
                                            duration: Toast.LENGTH_SHORT,
                                            gravity: Toast.BOTTOM);
                                      }
                                      setState(() {
                                        isloading = true;
                                      });
                                      String url =
                                          "${constant.baseUrl}/register?username=$name&email=$email&phone=$phone&password=$password";
                                      var res = await http.post(url);
                                      var decoded = json.decode(res.body);
                                      print(decoded);
                                      bool status = decoded['status'];
                                      if (status == true) {
                                        setState(() {
                                          isloading = false;
                                          constant.userToken =
                                              decoded['data']['token'];
                                          Get.to(
                                            LoginPage(),
                                          );
                                          print(
                                              "+++++++++++++++++${constant.userToken}");
                                        });
                                      } else {
                                        setState(() {
                                          isloading = false;
                                        });
                                        if (decoded['data']['username'] !=
                                            null) {
                                          return Toast.show(
                                              "User Name Already In Used",
                                              context,
                                              backgroundColor:
                                                  coustem.maincolor,
                                              duration: Toast.LENGTH_SHORT,
                                              gravity: Toast.BOTTOM);
                                        } else if (decoded['data']['email'] !=
                                            null) {
                                          return Toast.show(
                                              "Email Already In Used", context,
                                              backgroundColor:
                                                  coustem.maincolor,
                                              duration: Toast.LENGTH_SHORT,
                                              gravity: Toast.BOTTOM);
                                        } else if (decoded['data']['phone'] !=
                                            null) {
                                          return Toast.show(
                                              "Phone Already In Used", context,
                                              backgroundColor:
                                                  coustem.maincolor,
                                              duration: Toast.LENGTH_SHORT,
                                              gravity: Toast.BOTTOM);
                                        }
                                      }
                                      // print(status);
                                      // print(decoded['data']);
                                    } else {
                                      _autovalidate = true;
                                    }

                                    ////////////////methode call
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
                                              "Register",
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
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
                                      "Already have an account?",
                                      style: TextStyle(),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.to(
                                          LoginPage(),
                                        );
                                      },
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            color: coustem.maincolor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
