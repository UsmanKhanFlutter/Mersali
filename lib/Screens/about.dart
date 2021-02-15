import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'About',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image(
              width: 250,
              image: AssetImage('images/mersali.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            child: RichText(
              text: TextSpan(
                text: ("aboutParagraph"),
                style: TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.normal,
                    color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
