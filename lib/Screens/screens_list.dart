import 'package:flutter/material.dart';
import 'package:mersali_app/Screens/account.dart';
import 'package:mersali_app/Screens/contact_us.dart';
import 'package:mersali_app/Screens/display_information.dart';
import 'package:mersali_app/Screens/edit_password.dart';
import 'package:mersali_app/Screens/have_a_question.dart';
import 'package:mersali_app/Screens/login.dart';
import 'package:mersali_app/Screens/payment_step4.dart';
import 'package:mersali_app/Screens/policy.dart';
import 'package:mersali_app/Screens/register.dart';
import 'package:mersali_app/Screens/register_login_warning.dart';
import 'package:mersali_app/Screens/sender_information.dart';
import 'package:mersali_app/Screens/sent_question_successfully.dart';
import 'package:mersali_app/Screens/service_cost.dart';
import 'package:mersali_app/Screens/splash_screen.dart';
import 'package:mersali_app/Screens/terms_conditions.dart';
import 'about.dart';

class ScreensList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'Splash Screen',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'About',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'Account',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Account()),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'Login',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'Register',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'Resgister Login Warning',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginWarning()),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),

          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'Policy',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Policy()),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          // ListTile(
          //   tileColor: Colors.orange,
          //   title: Text('Service Cost',
          //     style: TextStyle(
          //         color: Colors.white
          //     ),
          //   ),
          //   onTap: (){
          //     Navigator.push(context,
          //       MaterialPageRoute(builder: (context) =>  ServiceCost()),
          //     );
          //   },
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'Sender Information step2',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SenderInformation()),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'Terms and Conditions',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TermsAndConditions()),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'Edit Password',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditPassword()),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'Have A Question',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HaveQuestion()),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'successfully Sent question',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SuccessfullySendQuestion()),
              );
            },
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'Contact Us',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUsDrawer()),
              );
            },
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'Display Information',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DisplayInformation()),
              );
            },
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Colors.orange,
            title: Text(
              'Contact Us',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Payment()),
              );
            },
          ),
        ],
      ),
    );
  }
}
