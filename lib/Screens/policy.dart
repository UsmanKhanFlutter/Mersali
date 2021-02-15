import 'package:flutter/material.dart';
import 'package:mersali_app/Constants/constants.dart';

class Policy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          'Policy',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Column(
                children: [
                  Text(
                    'Privacy Policy',
                    textAlign: TextAlign.center,
                    style: textStylePrivacyHeadings,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: privacyPolicyParagraph,
                          style: textStylePolicyParagraphs,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Information Collection and Use ',
                    textAlign: TextAlign.center,
                    style: textStylePrivacyHeadings,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: infoCollectionParagraph,
                          style: textStylePolicyParagraphs,
                        ),
                      ],
                    ),
                  ),
                  Text('Log Data',
                      textAlign: TextAlign.center,
                      style: textStylePrivacyHeadings),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: logDataParagraph,
                          style: textStylePolicyParagraphs,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Cookies',
                    textAlign: TextAlign.center,
                    style: textStylePrivacyHeadings,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: cookiesParagraph,
                          style: textStylePolicyParagraphs,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Security',
                    textAlign: TextAlign.center,
                    style: textStylePrivacyHeadings,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: securityParagraph,
                          style: textStylePolicyParagraphs,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Children\’s Privacy',
                    textAlign: TextAlign.center,
                    style: textStylePrivacyHeadings,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: childPrivacyParagraph,
                          style: textStylePolicyParagraphs,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Changes to This Privacy Policy',
                    textAlign: TextAlign.center,
                    style: textStylePrivacyHeadings,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: changesToPrivacy,
                          style: textStylePolicyParagraphs,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
