import 'package:flutter/material.dart';
import 'package:mersali_app/widgets/custom_bottom_buttons.dart';
import 'package:mersali_app/Constants/constants.dart';
import 'package:mersali_app/widgets/custom_receiver_information_card.dart';
import 'package:mersali_app/widgets/custom_sender_information_card.dart';
import 'package:mersali_app/widgets/custom_shipping_information_card.dart';


class DisplayInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: confirmScreenTitle,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CustomSenderInformationCard(),
            SizedBox(height: 15),
            CustomReceiverInformationCard(),
            SizedBox(height: 15),
            CustomShippingInformationCard(),
            SizedBox(height: 15),
            CustomBottomButtonsWidget()
          ],
        ),
      ),
    );
  }
}





