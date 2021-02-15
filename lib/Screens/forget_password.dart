import 'package:flutter/material.dart';
import 'package:mersali_app/localization/language_constants.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          getTranslated(context, "forget_password?"),
           style: TextStyle(
             color: Colors.white
           ),
        ),
        centerTitle: true,
        leading:IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,

        ), onPressed: () {  },
      ),
      ),
      body: Form(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Forget Password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,

                ),),
              ),
              Container(
                width: 300.0,
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: getTranslated(context, 'email'),
                    hintText: 'username@email.com',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.orange,
                child: FlatButton(
                  onPressed: () {  },
                  child: Text(
                    getTranslated(context, "next"),
                    style: TextStyle(
                      color: Colors.white,
                      
                    ),
                  ),
                ),
              ),

            ],
        ),
      ),
    );
  }
}
