import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarouselWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,

      child: Carousel(
        boxFit: BoxFit.cover,
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 5.0,
        dotColor: Colors.orange,
        dotIncreasedColor: Colors.orange,
        dotBgColor: Colors.transparent,
        dotPosition: DotPosition.bottomCenter,
        dotVerticalPadding: 10.0,
        showIndicator: true,
        indicatorBgPadding: 7.0,
        images: [
          Image(
            image: AssetImage('images/movimg1.jpg'),

          ),
          Image(
            image: AssetImage('images/movimg2.jpg'),

          ),
          Image(
            image: AssetImage('images/movimg3.jpg'),

          )
        ],
      ),
    );
  }
}