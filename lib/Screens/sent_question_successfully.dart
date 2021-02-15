import 'package:flutter/material.dart';

class SuccessfullySendQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Have a question',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: (){
              //TODO: OnPressing BackButton from Sent Question Successfully

            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 100.0,
                ),
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 200,
                ),
                Text(
                  'Successfully Sent',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  color: Colors.green,
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {  },
                    child: Text(
                      'Back to home',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
