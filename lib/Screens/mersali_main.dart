import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mersali_app/widgets/side_menu_widget.dart';
import 'package:mersali_app/widgets/carousal_widget.dart';
import 'package:mersali_app/widgets/center_service_widget.dart';
import 'package:mersali_app/widgets/track_order_widget.dart';
import 'package:url_launcher/url_launcher.dart';

bool changedLanguage = true;

class MersaliMain extends StatefulWidget {
  @override
  _MersaliMainState createState() => _MersaliMainState();
}

class _MersaliMainState extends State<MersaliMain> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void sendWhatsAppMessage(String number, String message) async {
    String url = 'whatsapp://send?phone=$number&text=$message';
    await canLaunch(url) ? launch(url) : throw ("Can't open  whatsapp");
  }

  void openTwitterAccount(String twitterLink) async {
    await canLaunch(twitterLink)
        ? launch(twitterLink)
        : throw ("Can't open  Twitter");
  }

  void launchCall(String phoneNumber) async {
    String url = "tel:$phoneNumber";
    if (await canLaunch(url))
      launch(url);
    else
      throw "Could not place phone call";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenuBar(),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselWidget(),
            CenterServicesWidget(),
            SizedBox(
              height: 20,
            ),
            TrackOrderWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Image(
          image: AssetImage('images/mersali.png'),
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {},
                    child: Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      //ONCLICK: Whatsapp
                      sendWhatsAppMessage("+201098862536",
                          "About Mersali Express Mail Service");
                    },
                    child: Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                      size: 35,
                    ),
                  )
                ],
              ),
              // Right Tab bar icons
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      openTwitterAccount('https://twitter.com/mersaliesxpress');
                    },
                    child: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      launchCall('00201098862536');
                    },
                    child: Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 35,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
