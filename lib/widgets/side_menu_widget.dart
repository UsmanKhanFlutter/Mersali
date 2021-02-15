import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mersali_app/Constants/constants.dart';
import 'package:mersali_app/Screens/terms_conditions.dart';
import 'package:mersali_app/localization/language_constants.dart';
import 'package:mersali_app/models/language.dart';
import '../UpdateWork/Api/Contact_Us.dart';

import '../main.dart';
import '../Screens/about.dart';
import '../Screens/account.dart';
import '../Screens/mersali_main.dart';
import '../Screens/policy.dart';

import '../Screens/contact_us.dart';

class SideMenuBar extends StatefulWidget {
  @override
  _SideMenuBarState createState() => _SideMenuBarState();
}

class _SideMenuBarState extends State<SideMenuBar> {
  //bool languageChanged ;
  @override
  void initState() {
    contactUs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void _changeLanguage(Language language) async {
      Locale _locale = await setLocale(language.languageCode);
      MyApp.setLocale(context, _locale);
    }

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image(
              image: AssetImage('images/mersali.png'),
            ),
          ),
          Divider(color: Colors.grey.shade400, height: 1.0),
          ListTile(
            tileColor: tileColor,
            leading: Icon(
              FontAwesomeIcons.userAlt,
              color: Colors.orange,
              size: textFieldIconSize,
            ),
            title: Text(getTranslated(context, "account")),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Account()),
              );
            },
          ),
          Divider(color: Colors.grey.shade400, height: 1.0),
          ListTile(
            tileColor: tileColor,
            leading: Icon(
              FontAwesomeIcons.bars,
              color: Colors.orange,
              size: textFieldIconSize,
            ),
            title: Text(getTranslated(context, "my_orders")),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(color: Colors.grey.shade400, height: 1.0),
          ListTile(
            tileColor: tileColor,
            leading: Icon(
              FontAwesomeIcons.infoCircle,
              color: Colors.orange,
              size: textFieldIconSize,
            ),
            title: Text(getTranslated(context, "about")),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),
          Divider(color: Colors.grey.shade400, height: 1.0),
          ListTile(
            tileColor: tileColor,
            leading: Icon(
              FontAwesomeIcons.idCard,
              color: Colors.orange,
              size: textFieldIconSize,
            ),
            title: Text(getTranslated(context, "contact_us")),
            onTap: () {
              print("vvvvvvvvvvvvvvvv");

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUsDrawer()),
              );
            },
          ),
          Divider(color: Colors.grey.shade400, height: 1.0),
          ListTile(
            tileColor: tileColor,
            leading: Icon(
              FontAwesomeIcons.globe,
              color: Colors.orange,
              size: textFieldIconSize,
            ),
            title: Text(getTranslated(context, 'change_language')),
            onTap: () {
              setState(() {
                Navigator.pop(context);

                changedLanguage = !changedLanguage;
                if (!changedLanguage) {
                  Language language =
                      Language(2, "🇸🇦", "اَلْعَرَبِيَّةُ‎", "ar");
                  _changeLanguage(language);
                } else {
                  Language language = Language(1, "🇺🇸", "English", "en");
                  _changeLanguage(language);
                }
              });
            },
          ),
          Divider(color: Colors.grey.shade400, height: 1.0),
          ListTile(
            tileColor: tileColor,
            leading: Icon(
              FontAwesomeIcons.gripLines,
              color: Colors.orange,
              size: textFieldIconSize,
            ),
            title: Text(getTranslated(context, "policy")),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Policy()),
              );
              Navigator.pop(context);
            },
          ),
          Divider(color: Colors.grey.shade400, height: 1.0),
          ListTile(
            tileColor: tileColor,
            leading: Icon(
              FontAwesomeIcons.tags,
              color: Colors.orange,
              size: textFieldIconSize,
            ),
            title: Text(getTranslated(context, "terms_and_conditions")),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TermsAndConditions()),
              );
              Navigator.pop(context);
            },
          ),
          Divider(color: Colors.grey.shade400, height: 1.0),
          ListTile(
            tileColor: tileColor,
            leading: Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.orange,
              size: textFieldIconSize,
            ),
            title: Text(getTranslated(context, "rate_app")),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(color: Colors.grey.shade400, height: 1.0),
          ListTile(
            tileColor: tileColor,
            leading: Icon(
              FontAwesomeIcons.shareAlt,
              color: Colors.orange,
              size: textFieldIconSize,
            ),
            title: Text(getTranslated(context, "share_app")),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
