import 'package:flutter/material.dart';
import 'package:mersali_app/localization/language_constants.dart';

class CustomPayButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){


      },
      child: Container(
        width: 340.0,
        height: 45.0,
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Row(

          children: [
            SizedBox(width: 10,),
            Icon(
              Icons.circle,
              color: Colors.white,
            ),
            SizedBox(width: 110),
            Text(
              getTranslated(context,"pay"),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
                width: 120.0),
            Icon(
              Icons.lock_outline,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}