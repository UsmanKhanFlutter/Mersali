import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mersali_app/Constants/constants.dart';
import 'package:mersali_app/localization/language_constants.dart';
import 'package:http/http.dart' as http;
import 'package:mersali_app/Constants/constants.dart' as constant;
import 'dart:convert';
import 'package:toast/toast.dart';
import 'package:mersali_app/CoustemColor/Color.dart' as coustem;

class HaveQuestion extends StatefulWidget {
  @override
  _HaveQuestionState createState() => _HaveQuestionState();
}

class _HaveQuestionState extends State<HaveQuestion> {
  String name;

  String email;

  String phone;

  String content;
  bool _autovalidate = false;

  bool isloading = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            getTranslated(context, 'have_a_question'),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Form(
              key: formKey,
              // autovalidate: _autovalidate,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  Card(
                    color: Colors.grey[100],
                    child: TextFormField(
                      // controller: _nameController,
                      keyboardType: TextInputType.name,

                      validator: (val) => val.length == 0
                          ? "Full name is required"
                          : val.length < 3
                              ? "Full name must be 3 character"
                              : null,

                      onChanged: (value) {
                        name = value;
                      },

                      decoration: InputDecoration(
                        labelText: 'Name',
                        hintText: "Name",
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
                    child: TextFormField(
                      // controller: null,
                      keyboardType: TextInputType.emailAddress,
                      validator: constant.validateEmail,
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: "mersali@gmail.com",
                        // alignLabelWithHint: false,
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.orange,
                          size: textFieldIconSize,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey[100],
                    child: TextFormField(
                      // controller: _phoneNoController,
                      validator: (val) => val.length == 0 || val.length < 6
                          ? "Contact no isRequired"
                          : null,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        phone = email;
                      },
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        hintText: "0326547825",
                        alignLabelWithHint: false,
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.phone_android,
                          color: Colors.orange,
                          size: textFieldIconSize,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey[100],
                    child: TextFormField(
                      maxLines: 5,
                      // controller: null,
                      keyboardType: TextInputType.text,
                      validator: (val) => val.length == 0
                          ? "Full name is required"
                          : val.length < 8
                              ? "Full name must be 8 character"
                              : null,
                      onChanged: (value) {
                        content = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Message',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        // alignLabelWithHint: false,
                        prefixIcon: Icon(
                          Icons.message,
                          color: Colors.orange,
                          size: textFieldIconSize,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    onTap: () async {
                      if (formKey.currentState.validate()) {
                        setState(() {
                          isloading = true;
                        });
                        String url =
                            "http://mersali.us/mersali-app/api/inquiry?username=$name&email=$email&phone=$phone&content=$content";
                        var res = await http.post(url);
                        var decode = jsonDecode(res.body);
                        if (decode['status'] == true) {
                          Toast.show(decode['message'], context,
                              backgroundColor: coustem.maincolor,
                              duration: Toast.LENGTH_SHORT,
                              gravity: Toast.BOTTOM);
                          setState(() {
                            formKey.currentState.reset();
                            isloading = false;
                          });
                        } else {}
                      }
                    },
                    child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.orange,
                        ),
                        child: Center(
                          child: isloading == true
                              ? CircularProgressIndicator(
                                  backgroundColor: Colors.white,
                                )
                              : Text(
                                  "Send",
                                ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
