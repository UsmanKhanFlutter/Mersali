import 'package:flutter/material.dart';
import 'package:mersali_app/localization/language_constants.dart';
import 'package:mersali_app/models/sender_info_model.dart';

import 'custom_tile.dart';

class CustomSenderInformationCard extends StatelessWidget {
  SenderInfo senderInfo;
  @override
  Widget build(BuildContext context) {
    return Container(

        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sender Information',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTile(
                  leadingText: getTranslated(context, "name"),
                  trailingText: senderInfo.name,
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: getTranslated(context, "email"),
                  trailingText:senderInfo.email,
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: getTranslated(context, "phone"),
                  trailingText: senderInfo.phone,
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText:  getTranslated(context, "country"),
                  trailingText: senderInfo.countryName,
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: getTranslated(context, "city"),
                  trailingText: senderInfo.cityName,
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: getTranslated(context, "postal_code"),
                  trailingText: senderInfo.postalCode,
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: getTranslated(context,"address"),
                  trailingText: senderInfo.address,
                ),
              ],
            )
        )
    );
  }
}