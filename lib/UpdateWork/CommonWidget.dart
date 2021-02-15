import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mersali_app/Constants/constants.dart';
import 'package:mersali_app/CoustemColor/Color.dart';

class CoustemTextField extends StatelessWidget {
  final Function onchange;
  final TextInputType keyboardType;
  final IconData icon;
  final String hintText;
  final Widget eyeIcon;
  final Function validator;
  final Function onTap;
  final bool obscureText;
  final bool readOnly;
  CoustemTextField(
      {this.onchange,
      this.keyboardType,
      this.icon,
      this.hintText,
      context,
      this.eyeIcon,
      this.validator,
      this.onTap,
      this.obscureText,
      this.readOnly});
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        height: h / 18,
        width: w / 1.3,
        child: TextFormField(
          onChanged: onchange,
          readOnly: readOnly ?? false,
          obscureText: obscureText ?? false,
          onTap: onTap,
          validator: validator,
          keyboardType: keyboardType,

          decoration: InputDecoration(
              suffixIcon: eyeIcon,
              border: InputBorder.none,
              labelStyle: TextStyle(
                color: AppColor.blueColor,
                fontSize: Size.convert(context, 18),
                fontFamily: 'RalewayMedium',
              ),
              errorStyle: TextStyle(
                  fontFamily: 'RalewayMedium',
                  color: Colors.redAccent,
                  fontSize: 10),
              prefixIcon: Icon(
                icon,
                color: Colors.orange,
              ),
              hintText: hintText),
          // textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
            color: Colors.white54, borderRadius: new BorderRadius.circular(5)),
      ),
    );
  }
}

// class  coustemTextField extends StatelessWidget(
//   BuildContext context, {
//   String hinTtext,
//   IconData icon,
//   Funcation onchange,
// }) {

// }
