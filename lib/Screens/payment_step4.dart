import 'package:flutter/material.dart';
import 'package:mersali_app/widgets/custom_stepper.dart';
import 'package:mersali_app/widgets/custom_pay_button.dart';
import 'package:mersali_app/localization/language_constants.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10),
            CustomStepper(stepNo: 4),
            SizedBox(height: 10),
            Card(
              elevation: 5.0,
              child: Column(
                children: [
                  ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.orange,
                      ),
                    ),
                    title: Text(
                      getTranslated(context, "payment"),
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                  TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: getTranslated(context, "note"),
                        filled: true,
                        fillColor: Colors.grey[100],
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.text_fields,
                          color: Colors.orange,
                        )),
                  ),
                  ListTile(
                    title: Text(
                      getTranslated(context, "terms_conditions_agree"),
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Checkbox(
                      value: false,
                      activeColor: Colors.grey,
                      onChanged: (value) {},
                    ),
                  ),
                  CustomPayButton(),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
