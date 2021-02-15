import 'package:flutter/material.dart';
import 'package:mersali_app/localization/language_constants.dart';
class LoginWarning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTranslated(context,"account")),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.warning,
              size: 130.0,
              color: Colors.orange,
            ),
            Text(getTranslated(context,"register_or_login")),
            Container(
              color: Colors.orange,
              margin: EdgeInsets.only(top: 20.0),
              height: 40,
              child: FlatButton(
                onPressed: () {
                  //TODO: to perform action on Login Button
                },
                child: Text(
                  getTranslated(context,"login"),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
