import 'package:flutter/material.dart';
import 'package:mersali_app/localization/language_constants.dart';
class TrackOrderWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 160,
      child: Card(
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getTranslated(context,'track_order_now'),
              style: TextStyle(

              ),
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Positioned(
                  left: 4,
                  bottom: 0.5,
                  child: Card(
                    elevation: 3,
                    child: Container(
                      width: 280,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.only(left: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: getTranslated(context,'search'),
                          border: InputBorder.none,
                          prefixStyle: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment(0.85, 0.75),
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.orange,
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ), onPressed: () {  },
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),

      ),
    );
  }
}