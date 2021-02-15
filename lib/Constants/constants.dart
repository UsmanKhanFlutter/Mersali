import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

String userToken;

final String baseUrl = "http://mersali.us/mersali-app/api";
String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (value.isEmpty || !regex.hasMatch(value))
    return 'Please enter a valid email';
  else
    return null;
}

class Size {
  static convert(BuildContext context, double n) {
    double i = (n) / 683;
    return i * MediaQuery.of(context).size.longestSide;
  }

  static convertWidth(BuildContext context, double n) {
    double i = (n) / 411;
    return i * MediaQuery.of(context).size.width;
  }
}

///ABOUT SCREEN Contents

///PRIVACY SCREEN PARAGRAPH
const privacyPolicyParagraph = "jj";

const infoCollectionParagraph =
    'For a better experience, while using our Service, we may require you to '
    'provide us with certain personally identifiable information, including but not limited to Name. Phone, Address. '
    'The information that we request will be retained by us and used as described in this privacy policy.'
    '\nThe app does use third party services that may collect information used to identify you.';

const logDataParagraph =
    'We want to inform you that whenever you use our Service, in a case of an error '
    'in the app we collect data and information (through third party products) on your phone called Log '
    'Data. This Log Data may include information such as your device Internet Protocol ("IP") address, '
    'device name, operating system version, the configuration of the app when utilizing our Service, '
    'the time and date of your use of the Service, and other statistics.';

const cookiesParagraph =
    'Cookies are files with a small amount of data that are commonly '
    'used as anonymous unique identifiers. These are sent to your browser'
    ' from the websites that you visit and are stored on your device\’s internal memory.';

const securityParagraph =
    'We value your trust in providing us your Personal Information, thus we are striving to '
    'use commercially acceptable means of protecting it. But remember that no method of transmission over the internet,'
    ' or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.';

const childPrivacyParagraph = 'These Services do not address anyone under '
    'the age of 13. We do not knowingly collect personally identifiable information'
    ' from children under 13. In the case we discover that a child under 13 has provided us with'
    ' personal information, we immediately delete this from our servers. If you are a parent or'
    ' guardian and you are aware that your child has provided us '
    'with personal information, please contact us so that we will be able to do necessary actions.';

const changesToPrivacy =
    'We may update our Privacy Policy from time to time. Thus,'
    ' you are advised to review this page periodically for any changes. We will notify '
    'you of any changes by posting the new Privacy Policy on this page.';

///PRIVACY SCREEN STYLES
const TextStyle textStylePrivacyHeadings =
    TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400, color: Colors.black);
const TextStyle textStylePolicyParagraphs = TextStyle(
  color: Colors.black,
);

//MENU BAR Widget
Color tileColor = Colors.grey[100];

///LoginScreen Styles
const loginTextFieldsStyles =
    TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
const headingRegister = Text(
  'Register',
  style: TextStyle(
    color: Colors.orange,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  ),
);

/// Custom Stepper Class
const stepperTextStyle = TextStyle(
  color: Colors.white,
);

///RECEIVER and SENDER SCREENS
const double textFieldIconSize = 20.0;

///DISPLAY INFORMATION SCREEN Title
const confirmScreenTitle = Text(
  'Confirm',
  style: TextStyle(
    color: Colors.black,
    fontSize: 17,
  ),
);
