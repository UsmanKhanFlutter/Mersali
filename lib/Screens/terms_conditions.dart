import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Terms and conditions',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            gapBetween(),
            Text(
                '*  A contact will be made to coordinate the receipt of the \nshipment within two working days from the date of the service request.'),
            gapBetween(),
            Text('* The service is for documents only.'),
            gapBetween(),
            Text(
                '* The data recorded in the service request must be accurate and clear.'),
            gapBetween(),
            Text(
                '* The final weight billed is the weight specified by our agent upon receipt of the shipment.'),
            gapBetween(),
            Text(
                '* In the event that the received weight exceeds the weight specified in the service request, a payment link will be sent for the remaining amount according to '
                'the specified weight category and price, payment due within 2U hours of sending the payment link.'),
            gapBetween(),
            Text(
                '* In the event that payment is late for a period of 2U hours, the shipment will stop moving, '
                'and a fee of \$15 USD will be charged for each day of delay in payment.'),
            gapBetween(),
            Text(
                '* In the event that the shipment is lost for any compelling reason, compensation is paid in the amount of \$ 100 USD.'),
            gapBetween(),
            Text(
                '* The average delivery time for the shipment is 6- 8 working days, unless an emergency reason causes delay in delivery.'),
            gapBetween(),
            Text('* All prices are in USD'),
            gapBetween(),
            Text(
                '* Your service request from mersali international express mail through this application "Mersali" '
                'means your explicit acceptance of the previous terms and conditions.'),
            gapBetween(),
          ],
        ),
      ),
    );
  }

  SizedBox gapBetween() {
    return SizedBox(
      height: 35.0,
    );
  }
}
