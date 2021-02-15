import 'package:flutter/material.dart';
import 'package:mersali_app/localization/language_constants.dart';
import 'package:mersali_app/models/receiver_info_model.dart';

import 'custom_tile.dart';

class CustomReceiverInformationCard extends StatelessWidget {
  ReceiverInfo receiverInfo;

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
                  getTranslated(context, "receiver_information"),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),),
                CustomTile(
                  leadingText: getTranslated(context, "name"),
                  trailingText: receiverInfo.name,
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: getTranslated(context, "email"),
                  trailingText: receiverInfo.email,
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: getTranslated(context, "phone"),
                  trailingText: receiverInfo.phone,
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: getTranslated(context, "country"),
                  trailingText:receiverInfo.countryName,
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: getTranslated(context, "city"),
                  trailingText: receiverInfo.cityName,
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: getTranslated(context, "postal_code"),
                  trailingText: receiverInfo.postalCode,
                ),
                SizedBox(height: 10),
                CustomTile(
                  leadingText: getTranslated(context,"address"),
                  trailingText: receiverInfo.address,
                ),
              ],
            )
        )
    );
  }
}
