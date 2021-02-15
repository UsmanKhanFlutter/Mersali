import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mersali_app/Screens/have_a_question.dart';
import 'package:mersali_app/UpdateWork/AllCountryGet.dart';
import 'package:mersali_app/localization/language_constants.dart';
import 'package:get/get.dart';

class CenterServicesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 113,
            height: 140,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HaveQuestion()),
                );
              },
              child: Card(
                elevation: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.questionCircle,
                      color: Colors.orange,
                      size: 50,
                    ),
                    SizedBox(height: 5),
                    Text(
                      getTranslated(context, "have_a_question"),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 113,
            height: 140,
            child: InkWell(
              onTap: () {
                Get.to(AllCountry());
              },
              child: Card(
                elevation: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image(
                        image: AssetImage('images/dollar_circular.png'),
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      getTranslated(context, 'service_cost'),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 113,
            height: 140,
            child: Card(
              elevation: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.history,
                    color: Colors.orange,
                    size: 50,
                  ),
                  SizedBox(height: 5),
                  Text(
                    getTranslated(context, "request_service"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
