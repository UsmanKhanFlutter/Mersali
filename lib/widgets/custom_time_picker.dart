import 'package:flutter/material.dart';

import 'package:date_time_picker/date_time_picker.dart';

class CustomTimePicker extends StatefulWidget {
  @override
  _CustomTimePickerState createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  Widget getTimePicker(BuildContext context) {
    return DateTimePicker(
      type: DateTimePickerType.time,
      initialValue: DateTime.now().toString(),
      icon: Icon(Icons.event),
      timeLabelText: "Hour",
      onChanged: (val) => print(val),
      validator: (val) {

        return null;
      },
      onSaved: (val) => print(val),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: getTimePicker(context),
        ),
      ),
    );
  }
}
