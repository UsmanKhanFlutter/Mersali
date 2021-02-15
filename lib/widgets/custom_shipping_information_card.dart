import 'package:flutter/material.dart';
import 'custom_tile.dart';

class CustomShippingInformationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Shipping Information',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),),
                CustomTile(
                  leadingText: 'From Country',
                  trailingText: 'countryName',
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: 'To Country',
                  trailingText: 'countryName',
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: 'Shipping Weight',
                  trailingText: '3.2',
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: 'Date',
                  trailingText: '21-2-2020',
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: 'Time',
                  trailingText: '02:02:00',
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: 'Price',
                  trailingText: '202.23\$',
                ),
              ],
            )
        )
    );
  }
}