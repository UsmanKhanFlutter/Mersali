import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: true ? 1.0 : 0.0,
              duration: Duration(seconds: 3),
              child: Column(
                children: [
                  Image(
                    color: Colors.white,
                    width: 250,
                    image: AssetImage(
                      'images/mersali.png',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50.0),
                    child: Text(
                      'Air Freight Leader in Egypt',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
