import 'package:flutter/material.dart';
import 'package:mersali_app/localization/language_constants.dart';
class CustomBottomButtonsWidget extends StatelessWidget {
  const CustomBottomButtonsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 180,
          height: 55,
          child: Card(
            color: Colors.orange,
            elevation: 5.0,
            child: FlatButton(
              onPressed: (){
                //TODO: ACTION ON Confirm Button
              },
              child: Text(
                getTranslated(context,"confirm"),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 180,
          height: 55,
          child: Card(
            color: Colors.grey,
            elevation: 5.0,
            child: FlatButton(
              onPressed: (){
                //TODO: ACTION ON Back Button
              },
              child: Text(
                getTranslated(context,"back"),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}