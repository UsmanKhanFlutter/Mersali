import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final String leadingText;
  final String trailingText;
  CustomTile({this.leadingText, this.trailingText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              leadingText
          ),
          Text(
              trailingText
          )
        ],
      ),
    );
  }


}